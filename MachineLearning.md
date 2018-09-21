```
<?xml version="1.0" encoding="utf-8"?>
<ScrollView xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="@color/colorBlackMore"
    android:clipChildren="false"
    android:orientation="vertical">

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:background="@color/colorBlackMore"
        android:clipChildren="false"
        android:orientation="vertical"
        android:paddingTop="@dimen/dp17">

        <ImageView
            android:id="@+id/icon_user_logo"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_gravity="center"
            android:src="@drawable/icon_index_drop_down_logo" />

        <LinearLayout
            android:id="@+id/ll_feed_layout"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            android:layout_marginTop="25dp"
            android:layout_marginStart="@dimen/dp14"
            android:layout_marginEnd="@dimen/dp14"
            android:background="@drawable/bg_headline_layout"
            android:clipChildren="false"
            android:orientation="vertical">

            <com.gcssloop.widget.RCImageView
                android:id="@+id/iv_headline_img"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:adjustViewBounds="true"
                android:scaleType="centerCrop"
                app:round_corner="@dimen/dp5"
                tools:src="@drawable/test"
                tools:visibility="visible" />

            <RelativeLayout
                android:id="@+id/layout_avatar_content"
                android:layout_width="wrap_content"
                android:layout_gravity="center_horizontal"
                android:layout_height="match_parent"
                android:clipChildren="false"
                tools:visibility="visible">

                <com.digizen.base.view.AvatarLayout
                    android:id="@+id/avatar_me"
                    android:layout_width="48dp"
                    android:layout_height="48dp"
                    android:layout_centerHorizontal="true"
                    android:layout_gravity="center_horizontal"
                    android:layout_marginTop="-29dp" />

                <TextView
                    android:id="@+id/avatar_nickname"
                    android:layout_width="wrap_content"
                    android:layout_height="wrap_content"
                    android:layout_below="@+id/avatar_me"
                    android:layout_centerHorizontal="true"
                    android:layout_gravity="center_horizontal"
                    android:layout_marginTop="@dimen/dp7"
                    android:lineSpacingExtra="-2sp"
                    android:textColor="@color/colorInfoText"
                    android:textSize="@dimen/dp14"
                    tools:text="吴亦凡" />
            </RelativeLayout>

            <LinearLayout
                android:id="@+id/layout_feed_info"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:layout_margin="@dimen/dp5"
                android:orientation="vertical"
                android:paddingStart="@dimen/dp16"
                android:paddingEnd="@dimen/dp28"
                android:paddingBottom="@dimen/dp20"
                tools:visibility="gone">

                <RelativeLayout
                    android:id="@+id/layout_item_info"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:paddingTop="@dimen/dp17"
                    android:paddingBottom="@dimen/padding_bottom_feed_media">

                    <com.digizen.module.editing.widget.TwitterTextView
                        android:id="@+id/tv_item_content"
                        android:layout_width="match_parent"
                        android:layout_height="wrap_content"
                        android:maxLines="7"
                        android:textColor="@color/colorInfoText"
                        app:tt_max_lines="7"
                        tools:text="懵逼" />

                    <RelativeLayout
                        android:id="@+id/layout_media_content"
                        android:layout_width="match_parent"
                        android:layout_height="wrap_content"
                        android:layout_below="@id/tv_item_content"
                        android:layout_marginTop="8dp"
                        android:paddingBottom="@dimen/padding_bottom_feed_media"
                        android:visibility="gone">

                        <com.dyhdyh.view.squaregrid.SquareGridLayout
                            android:id="@+id/grid_item_image"
                            android:layout_width="match_parent"
                            android:layout_height="wrap_content"
                            android:visibility="gone"
                            app:imgGap="8dp"
                            app:showStyle="grid" />

                        <com.digizen.base.view.StarItemVideoView
                            android:id="@+id/video_item"
                            android:layout_width="match_parent"
                            android:layout_height="wrap_content"
                            android:visibility="gone" />

                        <RelativeLayout
                            android:id="@+id/layout_item_audio"
                            android:layout_width="wrap_content"
                            android:layout_height="wrap_content"
                            android:background="@drawable/icon_square_audio"
                            android:visibility="invisible"
                            tools:visibility="visible">

                            <ImageView
                                android:id="@+id/iv_audio_play"
                                android:layout_width="wrap_content"
                                android:layout_height="wrap_content"
                                android:layout_centerVertical="true"
                                android:layout_marginLeft="20dp"
                                android:src="@drawable/ic_audio_play_static" />

                            <ProgressBar
                                android:id="@+id/pb_audio_loading"
                                style="@style/Widget.AppCompat.ProgressBar"
                                android:layout_width="25dp"
                                android:layout_height="25dp"
                                android:layout_centerVertical="true"
                                android:layout_marginLeft="15dp"
                                android:visibility="invisible" />

                            <TextView
                                android:id="@+id/tv_audio_duration"
                                android:layout_width="wrap_content"
                                android:layout_height="wrap_content"
                                android:layout_centerVertical="true"
                                android:layout_marginLeft="8dp"
                                android:layout_toRightOf="@id/iv_audio_play"
                                android:singleLine="true"
                                android:textColor="@android:color/white"
                                tools:text="11:11" />
                        </RelativeLayout>
                    </RelativeLayout>
                </RelativeLayout>

                <RelativeLayout
                    android:id="@+id/layout_item_extra_info"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:layout_below="@id/layout_item_info"
                    android:layout_marginTop="1dp">

                    <TextView
                        android:id="@+id/tv_item_super_tag"
                        android:layout_width="wrap_content"
                        android:layout_height="24dp"
                        android:layout_marginTop="@dimen/padding_top_extra_info"
                        android:layout_marginBottom="@dimen/padding_top_extra_info"
                        android:background="@drawable/bg_infoflow_light"
                        android:gravity="center"
                        android:paddingLeft="10dp"
                        android:paddingRight="10dp"
                        android:textColor="@color/color59"
                        android:textSize="12dp"
                        tools:text="asdasdasdasd" />

                    <TextView
                        android:id="@+id/tv_item_address"
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content"
                        android:layout_below="@id/tv_item_super_tag"
                        android:layout_marginLeft="-3dp"
                        android:layout_marginTop="@dimen/padding_top_extra_info"
                        android:layout_marginBottom="@dimen/padding_top_extra_info"
                        android:drawableLeft="@drawable/icon_square_add"
                        android:gravity="center_vertical"
                        android:textColor="@color/colorTextGray"
                        android:textSize="12sp"
                        tools:text="上海" />
                </RelativeLayout>

                <LinearLayout
                    android:id="@+id/layout_item_action"
                    android:layout_width="match_parent"
                    android:layout_height="wrap_content"
                    android:layout_centerVertical="true">

                    <TextView
                        android:id="@+id/tv_num_comment"
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content"
                        android:drawableLeft="@drawable/icon_square_comment"
                        android:drawablePadding="3dp"
                        android:gravity="center_vertical"
                        android:paddingTop="1dp"
                        android:textColor="@color/colorTextGray"
                        tools:text="4332" />

                    <CheckedTextView
                        android:id="@+id/tv_num_like"
                        android:layout_width="wrap_content"
                        android:layout_height="wrap_content"
                        android:layout_marginLeft="16dp"
                        android:drawableLeft="@drawable/selector_item_action_support"
                        android:drawablePadding="3dp"
                        android:gravity="center_vertical"
                        android:paddingTop="1dp"
                        android:textColor="@drawable/selector_item_text_support"
                        tools:text="4332" />

                </LinearLayout>
            </LinearLayout>
        </LinearLayout>

        <com.gcssloop.widget.RCImageView
            android:id="@+id/iv_qr_img"
            android:layout_width="68dp"
            android:layout_height="68dp"
            android:layout_gravity="center_horizontal"
            android:layout_marginTop="@dimen/dp21"
            app:clip_background="true"
            app:round_corner="@dimen/dp5"
            tools:background="@android:color/white" />

        <TextView
            android:id="@+id/tv_qr_msg"
            android:layout_width="360dp"
            android:layout_height="wrap_content"
            android:layout_gravity="center_horizontal"
            android:layout_marginTop="@dimen/dp9"
            android:layout_marginBottom="46dp"
            android:gravity="center"
            android:text="@string/label_qr_msg_headline"
            android:textColor="#80ffffff"
            android:textSize="@dimen/dp11" />

    </LinearLayout>
</ScrollView>
```