.class public final Lcom/samsung/android/framework/res/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/framework/res/R$anim;,
        Lcom/samsung/android/framework/res/R$array;,
        Lcom/samsung/android/framework/res/R$attr;,
        Lcom/samsung/android/framework/res/R$color;,
        Lcom/samsung/android/framework/res/R$dimen;,
        Lcom/samsung/android/framework/res/R$drawable;,
        Lcom/samsung/android/framework/res/R$id;,
        Lcom/samsung/android/framework/res/R$integer;,
        Lcom/samsung/android/framework/res/R$interpolator;,
        Lcom/samsung/android/framework/res/R$layout;,
        Lcom/samsung/android/framework/res/R$string;,
        Lcom/samsung/android/framework/res/R$style;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onResourcesLoaded(I)V
    .locals 3
    .param p0, "packageId"    # I

    .prologue
    const v2, 0xffffff

    .line 538
    sget v0, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    .line 539
    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_bottom:I

    .line 540
    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_left:I

    .line 541
    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_right:I

    .line 542
    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_top:I

    .line 543
    sget v0, Lcom/samsung/android/framework/res/R$anim;->example_anim:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->example_anim:I

    .line 544
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    .line 545
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    .line 546
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_minimize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_minimize:I

    .line 547
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    .line 548
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_unminimize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_unminimize:I

    .line 549
    sget v0, Lcom/samsung/android/framework/res/R$array;->components_desktop_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->components_desktop_mode:I

    .line 550
    sget v0, Lcom/samsung/android/framework/res/R$array;->components_normal_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->components_normal_mode:I

    .line 551
    sget v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_opposite_launch_app_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_opposite_launch_app_list:I

    .line 552
    sget v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_samsung_home_app_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_samsung_home_app_list:I

    .line 553
    sget v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    .line 554
    sget v0, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    .line 555
    sget v0, Lcom/samsung/android/framework/res/R$color;->decor_button_dark_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_dark_color:I

    .line 556
    sget v0, Lcom/samsung/android/framework/res/R$color;->decor_button_light_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_light_color:I

    .line 557
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->cocktail_bar_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->cocktail_bar_size:I

    .line 558
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_height:I

    .line 559
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_landscape_task_size_width:I

    .line 560
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_height:I

    .line 561
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->dex_compat_portrait_task_size_width:I

    .line 562
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    .line 563
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    .line 564
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_window_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_desktop_freeform_decor_caption_window_height:I

    .line 565
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    .line 566
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    .line 567
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_height:I

    .line 568
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width:I

    .line 569
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width_corner_r:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width_corner_r:I

    .line 570
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_height:I

    .line 571
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_width:I

    .line 572
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_samsung_freeform_decor_caption_window_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_samsung_freeform_decor_caption_window_height:I

    .line 573
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_snapview_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_snapview_divider_panel_long:I

    .line 574
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_long:I

    .line 575
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_short:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_short:I

    .line 576
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_long:I

    .line 577
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_short:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_short:I

    .line 578
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_radius:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_radius:I

    .line 579
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_size:I

    .line 580
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_height:I

    .line 581
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_task_offset_width:I

    .line 582
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    .line 583
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title:I

    .line 584
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_focused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_focused:I

    .line 585
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_unfocused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_unfocused:I

    .line 586
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_dark:I

    .line 587
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_light:I

    .line 588
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_dark:I

    .line 589
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_light:I

    .line 590
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_dark:I

    .line 591
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_light:I

    .line 592
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_dark:I

    .line 593
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_light:I

    .line 594
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title:I

    .line 595
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_focused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_focused:I

    .line 596
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_unfocused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_unfocused:I

    .line 597
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_splash_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_splash_image:I

    .line 598
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_touch_pad_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_touch_pad_image:I

    .line 599
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dualscreen_backwindow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dualscreen_backwindow:I

    .line 600
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_caption_ripple_selector:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_caption_ripple_selector:I

    .line 601
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_button:I

    .line 602
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_with_padding_button:I

    .line 603
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_button:I

    .line 604
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_with_padding_button:I

    .line 605
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_button:I

    .line 606
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_with_padding_button:I

    .line 607
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_back_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_back_button:I

    .line 608
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_close_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_close_button:I

    .line 609
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_maximize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_maximize_button:I

    .line 610
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_minimize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_minimize_button:I

    .line 611
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_reduce_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_reduce_button:I

    .line 612
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_rotate_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_rotate_button:I

    .line 613
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview:I

    .line 614
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support:I

    .line 615
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream:I

    .line 616
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    .line 617
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->touchpad_pointer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->touchpad_pointer:I

    .line 618
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->touchpad_pointer_vertical:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->touchpad_pointer_vertical:I

    .line 619
    sget v0, Lcom/samsung/android/framework/res/R$id;->back_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->back_window:I

    .line 620
    sget v0, Lcom/samsung/android/framework/res/R$id;->caption:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->caption:I

    .line 621
    sget v0, Lcom/samsung/android/framework/res/R$id;->caption_end_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->caption_end_container:I

    .line 622
    sget v0, Lcom/samsung/android/framework/res/R$id;->close_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->close_window:I

    .line 623
    sget v0, Lcom/samsung/android/framework/res/R$id;->container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->container:I

    .line 624
    sget v0, Lcom/samsung/android/framework/res/R$id;->display_chooser_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->display_chooser_grid:I

    .line 625
    sget v0, Lcom/samsung/android/framework/res/R$id;->ghost_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->ghost_window:I

    .line 626
    sget v0, Lcom/samsung/android/framework/res/R$id;->icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->icon:I

    .line 627
    sget v0, Lcom/samsung/android/framework/res/R$id;->maximize_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->maximize_window:I

    .line 628
    sget v0, Lcom/samsung/android/framework/res/R$id;->minimize_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->minimize_window:I

    .line 629
    sget v0, Lcom/samsung/android/framework/res/R$id;->reduce_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->reduce_window:I

    .line 630
    sget v0, Lcom/samsung/android/framework/res/R$id;->rotate_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->rotate_window:I

    .line 631
    sget v0, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    .line 632
    sget v0, Lcom/samsung/android/framework/res/R$id;->text_activity_name:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text_activity_name:I

    .line 633
    sget v0, Lcom/samsung/android/framework/res/R$id;->text_display_label:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text_display_label:I

    .line 634
    sget v0, Lcom/samsung/android/framework/res/R$id;->touchpad_landscape:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->touchpad_landscape:I

    .line 635
    sget v0, Lcom/samsung/android/framework/res/R$id;->touchpad_portrait:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->touchpad_portrait:I

    .line 636
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    .line 637
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    .line 638
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    .line 639
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    .line 640
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_longDeviceSnapMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_longDeviceSnapMode:I

    .line 641
    sget v0, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    .line 642
    sget v0, Lcom/samsung/android/framework/res/R$integer;->mw_example_integer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->mw_example_integer:I

    .line 643
    sget v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    .line 644
    sget v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption:I

    .line 645
    sget v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption_desktop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption_desktop:I

    .line 646
    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    .line 647
    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_touch_pad:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_touch_pad:I

    .line 648
    sget v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_grid:I

    .line 649
    sget v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_list_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_list_item:I

    .line 650
    sget v0, Lcom/samsung/android/framework/res/R$string;->back_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->back_button_text:I

    .line 651
    sget v0, Lcom/samsung/android/framework/res/R$string;->close_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->close_button_text:I

    .line 652
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_desktop_mode_description:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_desktop_mode_description:I

    .line 653
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install:I

    .line 654
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install_positive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_install_positive:I

    .line 655
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_msg:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_msg:I

    .line 656
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_negative:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_negative:I

    .line 657
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_positive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_positive:I

    .line 658
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_dialog_promotion:I

    .line 659
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_hun_action:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_hun_action:I

    .line 660
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    .line 661
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_mirroring_mode_description:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_mirroring_mode_description:I

    .line 662
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_low_memory_warning:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_low_memory_warning:I

    .line 663
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_power_saving:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_power_saving:I

    .line 664
    sget v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_unable_launch:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dex_toast_unable_launch:I

    .line 665
    sget v0, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    .line 666
    sget v0, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text:I

    .line 667
    sget v0, Lcom/samsung/android/framework/res/R$string;->ghost_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->ghost_button_text:I

    .line 668
    sget v0, Lcom/samsung/android/framework/res/R$string;->maximize_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->maximize_button_text:I

    .line 669
    sget v0, Lcom/samsung/android/framework/res/R$string;->minimize_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->minimize_button_text:I

    .line 670
    sget v0, Lcom/samsung/android/framework/res/R$string;->mw_example_string:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->mw_example_string:I

    .line 671
    sget v0, Lcom/samsung/android/framework/res/R$string;->reduce_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->reduce_button_text:I

    .line 672
    sget v0, Lcom/samsung/android/framework/res/R$string;->rotate_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->rotate_button_text:I

    .line 673
    sget v0, Lcom/samsung/android/framework/res/R$string;->samsung_dex:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->samsung_dex:I

    .line 674
    sget v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    .line 537
    return-void
.end method
