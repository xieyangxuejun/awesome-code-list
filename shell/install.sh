#!/bin/bash

set -e

nvm_has() {
  type "$1" > /dev/null 2>&1
  return $?
}

if [ -z "$NVM_DIR" ]; then
  NVM_DIR="$HOME/.nvm"
fi

nvm_download() {
  if nvm_has "curl"; then
    curl $*
  elif nvm_has "wget"; then
    # Emulate curl with wget
    ARGS=$(echo "$*" | sed -e 's/--progress-bar /--progress=bar /' \
                           -e 's/-L //' \
                           -e 's/-I /--server-response /' \
                           -e 's/-s /-q /' \
                           -e 's/-o /-O /' \
                           -e 's/-C - /-c /')
    wget $ARGS
  fi
}

install_nvm_from_git() {
  if [ -z "$NVM_SOURCE" ]; then
    NVM_SOURCE="https://github.com/creationix/nvm.git"
  fi

  if [ -d "$NVM_DIR/.git" ]; then
    echo "=> nvm is already installed in $NVM_DIR, trying to update"
    printf "\r=> "
    cd "$NVM_DIR" && (git fetch 2> /dev/null || {
      echo >&2 "Failed to update nvm, run 'git fetch' in $NVM_DIR yourself." && exit 1
    })
  else
    # Cloning to $NVM_DIR
    echo "=> Downloading nvm from git to '$NVM_DIR'"
    printf "\r=> "
    mkdir -p "$NVM_DIR"
    git clone "$NVM_SOURCE" "$NVM_DIR"
  fi
  cd "$NVM_DIR" && git checkout v0.18.0 && git branch -D master >/dev/null 2>&1
  return
}

install_nvm_as_script() {
  if [ -z "$NVM_SOURCE" ]; then
    NVM_SOURCE="https://raw.githubusercontent.com/creationix/nvm/v0.18.0/nvm.sh"
  fi

  # Downloading to $NVM_DIR
  mkdir -p "$NVM_DIR"
  if [ -d "$NVM_DIR/nvm.sh" ]; then
    echo "=> nvm is already installed in $NVM_DIR, trying to update"
  else
    echo "=> Downloading nvm as script to '$NVM_DIR'"
  fi
  nvm_download -s "$NVM_SOURCE" -o "$NVM_DIR/nvm.sh" || {
    echo >&2 "Failed to download '$NVM_SOURCE'.."
    return 1
  }
}

#
# Detect profile file if not specified as environment variable
# (eg: PROFILE=~/.myprofile)
# The echo'ed path is guaranteed to be an existing file
# Otherwise, an empty string is returned
#
nvm_detect_profile() {
  if [ -f "$PROFILE" ]; then
    echo "$PROFILE"
  elif [ -f "$HOME/.bashrc" ]; then
    echo "$HOME/.bashrc"
  elif [ -f "$HOME/.bash_profile" ]; then
    echo "$HOME/.bash_profile"
  elif [ -f "$HOME/.zshrc" ]; then
    echo "$HOME/.zshrc"
  elif [ -f "$HOME/.profile" ]; then
    echo "$HOME/.profile"
  fi
}

nvm_do_install() {
  if [ -z "$METHOD" ]; then
    # Autodetect install method
    if nvm_has "git"; then
      install_nvm_from_git
    elif nvm_has "nvm_download"; then
      install_nvm_as_script
    else
      echo >&2 "You need git, curl, or wget to install nvm"
      exit 1
    fi
  elif [ "~$METHOD" = "~git" ]; then
    if ! nvm_has "git"; then
      echo >&2 "You need git to install nvm"
      exit 1
    fi
    install_nvm_from_git
  elif [ "~$METHOD" = "~script" ]; then
    if ! nvm_has "nvm_download"; then
      echo >&2 "You need curl or wget to install nvm"
      exit 1
    fi
    install_nvm_as_script
  fi

  echo

  local NVM_PROFILE
  NVM_PROFILE=$(nvm_detect_profile)

  SOURCE_STR="\nexport NVM_DIR=\"$NVM_DIR\"\n[ -s \"\$NVM_DIR/nvm.sh\" ] && . \"\$NVM_DIR/nvm.sh\"  # This loads nvm"

  if [ -z "$NVM_PROFILE" ] ; then
    echo "=> Profile not found. Tried $NVM_PROFILE (as defined in \$PROFILE), ~/.bashrc, ~/.bash_profile, ~/.zshrc, and ~/.profile."
    echo "=> Create one of them and run this script again"
    echo "=> Create it (touch $NVM_PROFILE) and run this script again"
    echo "   OR"
    echo "=> Append the following lines to the correct file yourself:"
    printf "$SOURCE_STR"
    echo
  else
    if ! grep -qc 'nvm.sh' "$NVM_PROFILE"; then
      echo "=> Appending source string to $NVM_PROFILE"
      printf "$SOURCE_STR\n" >> "$NVM_PROFILE"
    else
      echo "=> Source string already in $NVM_PROFILE"
    fi
  fi

  echo "=> Close and reopen your terminal to start using nvm"
  nvm_reset
}

#
# Unsets the various functions defined
# during the execution of the install script
#
nvm_reset() {
  unset -f nvm_do_install nvm_has nvm_download install_nvm_as_script install_nvm_from_git nvm_reset nvm_detect_profile
}

[ "_$NVM_ENV" = "_testing" ] || nvm_do_install
