.class public Lcom/sec/android/app/camera/shootingmode/VideoCollage;
.super Lcom/sec/android/app/camera/shootingmode/RecordingController;
.source "VideoCollage.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$AnimationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;,
        Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_570:I = 0x23a

.field private static final CAMERA_ID_NONE:I = -0x1

.field private static final COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_01_ICON_ARRAY:[[I

.field private static final COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_02_ICON_ARRAY:[[I

.field private static final COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_03_ICON_ARRAY:[[I

.field private static final COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

.field private static final COLLAGE1BY1_04_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_01_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_02_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_03_ICON_ARRAY:[[I

.field private static final COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

.field private static final COLLAGE4BY3_04_ICON_ARRAY:[[I

.field private static final COLLAGE_ICON_ORDER_DEFAULT:I = 0x0

.field private static final COLLAGE_ICON_ORDER_HORIZONTAL:I = 0x1

.field private static final COLLAGE_ICON_ORDER_VERTICAL:I = 0x0

.field private static final DIM_CROP_ALPHA_VALUE:F = 0.45f

.field private static final EDITOR_COLLAGE_1_BY_1_1x2:I = 0x1

.field private static final EDITOR_COLLAGE_1_BY_1_1x22:I = 0x7

.field private static final EDITOR_COLLAGE_1_BY_1_1x3:I = 0x2

.field private static final EDITOR_COLLAGE_1_BY_1_2x2:I = 0x3

.field private static final EDITOR_COLLAGE_4_BY_3_1x2:I = 0x4

.field private static final EDITOR_COLLAGE_4_BY_3_1x22:I = 0x8

.field private static final EDITOR_COLLAGE_4_BY_3_1x3:I = 0x5

.field private static final EDITOR_COLLAGE_4_BY_3_2x2:I = 0x6

.field private static final EDITOR_COLLAGE_NONE:I = 0x0

.field private static final FOCUS_PAUSE_BUTTON:I = 0x1

.field private static final FOCUS_RECORDING_BUTTON:I = 0x0

.field private static final FOCUS_RESUME_BUTTON:I = 0x2

.field private static final INTERVAL_UPDATE_PROGRESS:I = 0x1f4

.field private static final KEY_VIDEO_COLLAGE_IS_PROJECT_SAVED:Ljava/lang/String; = "pref_video_collage_is_project_saved_key"

.field private static final KEY_VIDEO_COLLAGE_IS_PROJECT_SECURE_SAVED:Ljava/lang/String; = "pref_video_collage_is_project_secure_saved_key"

.field private static final LAUNCH_EDITOR_MSG:I = 0x1

.field private static final MAX_COLLAGE_COUNT:I = 0x5

.field private static final MAX_PROGRESS:I = 0x3e8

.field private static final NO_VALUE:I = -0x1

.field private static final RECORDING_DURATION_GUARANTEE_TIME:I = 0x46

.field private static final SHOW_UI_DELAY_TIME:I = 0x32

.field private static final SHOW_UI_MSG:I = 0x3

.field private static final SLOW_MOTION_ENCODING_BITRATE:I = 0x2dc6c0

.field private static final SWITCH_CAMERA:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VideoCollage"

.field private static final UPDATE_REC_INDICATOR_MSG:I = 0x2

.field private static final VIDEO_COLLAGE_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.clipvideo.activity.ClipVideoEditorActivity"

.field private static final VIDEO_COLLAGE_EDITOR_PACKAGE:Ljava/lang/String; = "com.sec.android.app.clipvideo"

.field private static final VIDEO_COLLAGE_PROJECT_SAVE_FILE:Ljava/lang/String; = "VideoCollageProjectSave"

.field private static final VIDEO_COLLAGE_PROJECT_SECURE_SAVE_FILE:Ljava/lang/String; = "VideoCollageProjectSecureSave"

.field private static final VIDEO_COLLAGE_SAVE_DIRECTORY:Ljava/lang/String; = "/.VideoCollage"


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final CAF_BUTTON_DIAMETER:I

.field private final CAF_BUTTON_POS_X:I

.field private final CAF_BUTTON_POS_Y:I

.field private final CAF_BUTTON_POS_Y_BOTTOM:I

.field private final COLLAGE_TYPE_HEIGHT:I

.field private final COLLAGE_TYPE_MARGIN_Y:I

.field private final COLLAGE_TYPE_MARGIN_Y_270:I

.field private final COLLAGE_TYPE_WIDTH:I

.field private final FLASH_BUTTON_HEIGHT:I

.field private final FLASH_BUTTON_POS_X:I

.field private final FLASH_BUTTON_POS_Y:I

.field private final FLASH_BUTTON_WIDTH:I

.field private final NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

.field private final NORMAL_RATIO_PREVIEW_LEFT:I

.field private final PROGRESSBAR_DIVIDER_WIDTH:I

.field private final PROGRESSBAR_HEIGHT:I

.field private final PROGRESSBAR_WIDTH:I

.field private final PROGRESS_GROUP_HEIGHT:I

.field private final PROGRESS_GROUP_MARGIN_Y:I

.field private final PROGRESS_GROUP_MARGIN_Y_270:I

.field private final PROGRESS_GROUP_WIDTH:I

.field private final RECORDING_ICON_WIDTH:I

.field private final RECORDING_TIME_GROUP_HEIGHT:I

.field private final RECORDING_TIME_GROUP_MARGIN_Y:I

.field private final RECORDING_TIME_GROUP_MARGIN_Y_270:I

.field private final RECORDING_TIME_GROUP_WIDTH:I

.field private final RECORDING_TIME_TEXT_LEFT_PADDING:I

.field private final RECORDING_TIME_TEXT_POS_X:I

.field private final RECORDING_TIME_TEXT_SIZE:F

.field private final RECORDING_TIME_TEXT_STROKE_COLOR:I

.field private final RECORDING_TIME_TEXT_STROKE_WIDTH:I

.field private final RECORDING_TIME_TEXT_WIDTH:I

.field private final RIGHT_SIDE_MENU_POS_X:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_NORMAL_WIDTH:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

.field private final SHUTTER_BUTTON_POS_Y:I

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SIDE_MENU_HEIGHT:I

.field private final SIDE_MENU_WIDTH:I

.field private final SWITCH_BUTTON_HEIGHT:I

.field private final SWITCH_BUTTON_POS_X:I

.field private final SWITCH_BUTTON_POS_Y:I

.field private final SWITCH_BUTTON_POS_Y_FRONT:I

.field private final SWITCH_BUTTON_POS_Y_REAR:I

.field private final SWITCH_BUTTON_WIDTH:I

.field private final UNDO_BUTTON_DIAMETER:I

.field private final UNDO_BUTTON_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

.field private mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

.field private mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCurrentOrientation:I

.field private mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

.field private mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

.field private mFirstCameraId:I

.field private mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

.field private mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

.field private mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

.field private mIsCameraSwitching:Z

.field private mIsLayoutUpdateNeeded:Z

.field private mIsNeedBackupRecordingTime:Z

.field private mIsNeedDrawingProgressDivider:Z

.field private mIsTimerCounting:Z

.field private mLastDivider:Lcom/samsung/android/glview/GLImage;

.field private mLowDeviceStorageToast:Landroid/widget/Toast;

.field private mMaxRecordingTimeBackup:I

.field private mMaxRecordingTimeChangeCnt:I

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

.field private mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

.field private mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

.field private mProgressBarDividerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

.field private mRecordingButton:Lcom/samsung/android/glview/GLButton;

.field private mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingTimeInMs:I

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mSavedCamcorderResolution:I

.field private mSavedCameraResolution:I

.field private mSavedFlipValue:I

.field private mSavedTimerValue:I

.field private mSavedVideoCollageType:I

.field private mSavedVoiceCommandValue:I

.field private mSavedZoomValue:I

.field private mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mUndoButton:Lcom/samsung/android/glview/GLButton;

.field private mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICON_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICON_ARRAY:[[I

    new-array v0, v2, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICON_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICON_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICON_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICON_ARRAY:[[I

    new-array v0, v2, [[I

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICON_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICON_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1a

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

    return-void

    :array_0
    .array-data 4
        0x7f020038
        0x7f020039
        0x7f02003a
    .end array-data

    :array_1
    .array-data 4
        0x7f020038
        0x7f02003b
        0x7f02003a
    .end array-data

    :array_2
    .array-data 4
        0x7f020045
        0x7f020046
        0x7f020047
        0x7f020048
    .end array-data

    :array_3
    .array-data 4
        0x7f020045
        0x7f020049
        0x7f02004a
        0x7f020048
    .end array-data

    :array_4
    .array-data 4
        0x7f02004f
        0x7f020050
        0x7f020051
        0x7f020052
        0x7f020053
    .end array-data

    :array_5
    .array-data 4
        0x7f02004f
        0x7f020054
        0x7f020055
        0x7f020056
        0x7f020053
    .end array-data

    :array_6
    .array-data 4
        0x7f02003c
        0x7f02003d
        0x7f02003f
        0x7f020041
    .end array-data

    :array_7
    .array-data 4
        0x7f02003c
        0x7f02003e
        0x7f020040
        0x7f020041
    .end array-data

    :array_8
    .array-data 4
        0x7f02005a
        0x7f02005b
        0x7f02005c
    .end array-data

    :array_9
    .array-data 4
        0x7f02005a
        0x7f020057
        0x7f02005c
    .end array-data

    :array_a
    .array-data 4
        0x7f020068
        0x7f020069
        0x7f02006a
        0x7f02006b
    .end array-data

    :array_b
    .array-data 4
        0x7f020068
        0x7f020063
        0x7f020064
        0x7f02006b
    .end array-data

    :array_c
    .array-data 4
        0x7f020070
        0x7f020071
        0x7f020072
        0x7f020073
        0x7f020074
    .end array-data

    :array_d
    .array-data 4
        0x7f020070
        0x7f020075
        0x7f020076
        0x7f020077
        0x7f020074
    .end array-data

    :array_e
    .array-data 4
        0x7f02005d
        0x7f02005e
        0x7f020060
        0x7f020062
    .end array-data

    :array_f
    .array-data 4
        0x7f02005d
        0x7f02005f
        0x7f020061
        0x7f020062
    .end array-data

    :array_10
    .array-data 4
        0x7f020036
        0x7f020037
    .end array-data

    :array_11
    .array-data 4
        0x7f020037
        0x7f020036
    .end array-data

    :array_12
    .array-data 4
        0x7f020042
        0x7f020043
        0x7f020044
    .end array-data

    :array_13
    .array-data 4
        0x7f020044
        0x7f020043
        0x7f020042
    .end array-data

    :array_14
    .array-data 4
        0x7f02004b
        0x7f02004c
        0x7f02004d
        0x7f02004e
    .end array-data

    :array_15
    .array-data 4
        0x7f02004c
        0x7f02004e
        0x7f02004b
        0x7f02004d
    .end array-data

    :array_16
    .array-data 4
        0x7f020036
        0x7f02004c
        0x7f02004e
    .end array-data

    :array_17
    .array-data 4
        0x7f02004c
        0x7f02004e
        0x7f020036
    .end array-data

    :array_18
    .array-data 4
        0x7f020058
        0x7f020059
    .end array-data

    :array_19
    .array-data 4
        0x7f020059
        0x7f020058
    .end array-data

    :array_1a
    .array-data 4
        0x7f020065
        0x7f020066
        0x7f020067
    .end array-data

    :array_1b
    .array-data 4
        0x7f020067
        0x7f020066
        0x7f020065
    .end array-data

    :array_1c
    .array-data 4
        0x7f02006c
        0x7f02006d
        0x7f02006e
        0x7f02006f
    .end array-data

    :array_1d
    .array-data 4
        0x7f02006d
        0x7f02006f
        0x7f02006c
        0x7f02006e
    .end array-data

    :array_1e
    .array-data 4
        0x7f020058
        0x7f02006d
        0x7f02006f
    .end array-data

    :array_1f
    .array-data 4
        0x7f02006d
        0x7f02006f
        0x7f020058
    .end array-data
.end method

.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7

    const v6, 0x7f0b01c7

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    const v0, 0x7f0b017d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    const v0, 0x7f0b017c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_HEIGHT:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    const v0, 0x7f0b01d3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_POS_Y:I

    const v0, 0x7f0b0050

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->BASEMENU_GROUP_ICON_GAP:F

    const v0, 0x7f0b02d4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    const v0, 0x7f0b02ef

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    const v0, 0x7f0b035e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_DIAMETER:I

    const v0, 0x7f0b02cf

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_X:I

    const v0, 0x7f0b02d0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y_BOTTOM:I

    const v0, 0x7f0b02ce

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y_BOTTOM:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y:I

    const v0, 0x7f0b01c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_WIDTH:I

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_HEIGHT:I

    const v0, 0x7f0b01c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_FRONT:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_REAR:I

    const v0, 0x7f0b01c8

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_WIDTH:I

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    const v0, 0x7f0b01c9

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_Y:I

    const v0, 0x7f0b0072

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    const v0, 0x7f0b0070

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    const v0, 0x7f0b0071

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    const v0, 0x7f0b007a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    const v0, 0x7f0b007b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    const v0, 0x7f0b0079

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    const v0, 0x7f0b0078

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    const v0, 0x7f0b007d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    const v0, 0x7f0b007c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_ICON_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_LEFT_PADDING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    const v0, 0x7f0c0045

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0e0039

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    const v0, 0x7f0b02ee

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    const v0, 0x7f0b0077

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    const v0, 0x7f0b0076

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    const v0, 0x7f0b0074

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    const v0, 0x7f0b0075

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_HEIGHT:I

    const v0, 0x7f0b0073

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_DIVIDER_WIDTH:I

    const v0, 0x7f0b0038

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    const v0, 0x7f0b013c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    div-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;)Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->launchEditor()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->sendShowUIMessageDelayed()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showView()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->prepareSwitchCamera()V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCamera()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V

    return-void
.end method

.method private addClip()V
    .locals 8

    const/4 v0, 0x0

    const-string v3, ""

    const-string v2, ""

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v4, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v5, "VideoCollage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addClip() - duration by metadataRetriver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedRotate()Z

    move-result v6

    invoke-static {v5, v2, v0, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;Ljava/lang/String;IZ)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    :goto_2
    const-string v5, "VideoCollage"

    const-string v6, "setDataSource failed"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v0

    const-string v5, "VideoCollage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addClip() - duration by getRecordedTimeInMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private addProgressDivider(I)V
    .locals 8

    int-to-float v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    int-to-float v1, v1

    mul-float v2, v0, v1

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_DIVIDER_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f020035

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private clear()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->access$400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    return-void
.end method

.method private clearProgressDivider()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private createVideoCollageFilePath()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoCollageFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VideoCollage"

    const-string v3, "directory is not made"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method private discardRecording()V
    .locals 4

    const-string v2, "VideoCollage"

    const-string v3, "discardRecording()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleCancelVideoRecording()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->doUndo()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    return-void
.end method

.method private discardSaved()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoCollageFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->deleteDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete directory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoCollageFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to delete file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private doUndo()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "doUndo()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->removeLastProgressDivider()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraAsync()V

    :cond_1
    return-void
.end method

.method private getCollageTypeForEditor(II)I
    .locals 4

    const/4 v2, 0x6

    const/4 v1, 0x5

    const/4 v0, 0x4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v3

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    packed-switch p2, :pswitch_data_1

    move v0, v3

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v2

    goto :goto_0

    :pswitch_5
    packed-switch p2, :pswitch_data_2

    move v0, v3

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_a
    move v0, v1

    goto :goto_0

    :pswitch_b
    move v0, v2

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private getCollageTypeSettingFromProject(III)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    const/4 v0, 0x3

    packed-switch p1, :pswitch_data_0

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    if-ne p2, v3, :cond_0

    goto :goto_0

    :pswitch_1
    if-nez p3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_2
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    if-ne p2, v5, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    if-ne p2, v0, :cond_6

    const/16 v0, 0x8

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    if-ne p2, v0, :cond_7

    const/16 v0, 0x9

    goto :goto_0

    :cond_7
    if-ne p2, v1, :cond_8

    const/16 v0, 0xa

    goto :goto_0

    :cond_8
    if-ne p2, v2, :cond_9

    const/16 v0, 0xb

    goto :goto_0

    :cond_9
    if-ne p2, v3, :cond_a

    const/16 v0, 0xc

    goto :goto_0

    :cond_a
    const/16 v0, 0x8

    if-ne p2, v0, :cond_b

    const/16 v0, 0xd

    goto :goto_0

    :cond_b
    move v0, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentProgress()I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    add-int v1, v2, v3

    :goto_0
    int-to-float v2, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordedTimeInMs()I

    move-result v1

    goto :goto_0
.end method

.method private getCurrentRecordingTime()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    add-int v0, v1, v2

    :cond_0
    :goto_0
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentRecordingTime() - currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    goto :goto_0
.end method

.method private getEffectProcessorParameter()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clipmovie,clipping="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMaxRecordingTimeInMs()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxRecordingTimeInMS - duration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentRecording - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private getProgress()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method private getProjectSaveFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoCollageProjectSave"

    return-object v0
.end method

.method private getProjectSecureSaveFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "VideoCollageProjectSecureSave"

    return-object v0
.end method

.method private getRecordedTimeInMs()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getTotalRecordingTime()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getRecordingTimeSettingFromProject(I)I
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xbb8 -> :sswitch_1
        0x1770 -> :sswitch_0
        0x2328 -> :sswitch_2
        0x3a98 -> :sswitch_3
    .end sparse-switch
.end method

.method private getRecordingTimeText()Ljava/lang/String;
    .locals 8

    const v7, 0x7f0a022b

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, ""

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRemainedRecordingTime()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    :cond_0
    :goto_0
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemainedRecordingTime() - currentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method private getResourceIconLineOrder(II)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICONLINE_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private getResourceIconOrder(II)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_01_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_02_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_03_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE1BY1_04_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_01_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_02_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_03_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE4BY3_04_ICON_ARRAY:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method private getVideoCollageFilePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.VideoCollage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVideoSizeDivider()[I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x1

    new-array v1, v4, [I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    aput v0, v1, v3

    aput v2, v1, v5

    return-object v1

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    const/4 v2, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    packed-switch v3, :pswitch_data_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x1

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x1

    const/4 v2, 0x3

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x2

    const/4 v2, 0x2

    goto :goto_0

    :pswitch_9
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_4

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v5, :cond_3

    :cond_2
    const/4 v0, 0x2

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-nez v3, :cond_5

    const/4 v0, 0x1

    const/4 v2, 0x2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v4, :cond_0

    :cond_6
    const/4 v0, 0x2

    const/4 v2, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private handleRecordingCancelled()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "VideoCollage"

    const-string v1, "handleRecordingCancelled()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFilePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording_over_60fps"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopTimer()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Camera_recording"

    invoke-static {v0, v1, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private handleRecordingStopped()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v1, "VideoCollage"

    const-string v2, "handleRecordingStopped()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isPlayRecordingStopSound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x9

    invoke-interface {v1, v2, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording_over_60fps"

    invoke-static {v1, v2, v6}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFilePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addClip()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "VideoCollage"

    const-string v2, "Finishing.."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.clipvideo"

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/PermissionUtils;->hasPermissions(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1e3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a020d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording"

    invoke-static {v1, v2, v6}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_7
    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto :goto_1
.end method

.method private handleSwitchCameraCompleted()V
    .locals 4

    const/4 v3, 0x1

    move-object v0, p0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$2;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_0
.end method

.method private hideCAFButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private hideCollageTypeIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideCollageTypeIconLine()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private hideCropArea()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideFlashButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    return-void
.end method

.method private hideIndicatorLayout()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "hideIndicatorLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecTimeGroup()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    return-void
.end method

.method private hidePauseButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private hidePauseIndicatorIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private hideProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideRecIndicatorIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private hideRecTimeGroup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideRecordedLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideUndoButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideSwitchCameraButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideProgress()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clearProgressDivider()V

    return-void
.end method

.method private hideRecordingButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private hideRecordingLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCAFButton()V

    return-void
.end method

.method private hideResumeButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private hideSwitchCameraButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private hideUndoButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private hideView()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "hideView()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    return-void
.end method

.method private initializeProject(I)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeProject() - type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProjectType(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTimeByType()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageType(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRatio(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setMaxRecordingCount(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    return-void
.end method

.method private initializeView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 27

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_PORTRAIT_BOTTOM_PADDING:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SHUTTER_BUTTON_WIDTH:F

    float-to-int v0, v1

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->BASEMENU_GROUP_ICON_GAP:F

    float-to-int v0, v1

    move/from16 v21, v0

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_WIDTH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SIDE_MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    sub-int v22, v19, v1

    move/from16 v23, v20

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v23

    int-to-float v4, v0

    const v5, 0x7f0200e9

    const v6, 0x7f0200ea

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setDraggable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01f6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v23

    int-to-float v4, v0

    const v5, 0x7f020105

    const v6, 0x7f020106

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v22

    int-to-float v3, v0

    move/from16 v0, v23

    int-to-float v4, v0

    const v5, 0x7f0200e9

    const v6, 0x7f0200ea

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0206

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RIGHT_SIDE_MENU_POS_X:I

    sub-int v1, v19, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    sub-int v2, v18, v2

    div-int/lit8 v2, v2, 0x2

    add-int v25, v1, v2

    sub-int v1, v20, v21

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_WIDTH:I

    sub-int v26, v1, v2

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v25

    int-to-float v3, v0

    move/from16 v0, v26

    int-to-float v4, v0

    const v5, 0x7f0200fc

    const v6, 0x7f0200fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->UNDO_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0159

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_X:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_POS_Y:I

    int-to-float v4, v2

    const v5, 0x7f020023

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->CAF_BUTTON_DIAMETER:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a003f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v24

    new-instance v7, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    move-object/from16 v0, v24

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v3, v1, v2

    const/4 v2, 0x1

    move-object/from16 v0, v24

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v3, v1, v2

    const/4 v2, 0x2

    move-object/from16 v0, v24

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x4

    move-object/from16 v0, v24

    iget v3, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-direct {v7, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_X:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_POS_Y:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_WIDTH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->FLASH_BUTTON_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/widget/gl/SideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7f0201bb

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0233

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v6

    mul-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201c7

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201c6

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    new-instance v9, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    int-to-float v11, v1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v14, v1, v2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v16, v1, v2

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setShadowVisibility(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESS_GROUP_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    new-instance v9, Lcom/samsung/android/glview/GLProgressBar;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->PROGRESSBAR_HEIGHT:I

    int-to-float v14, v1

    const v15, 0x7f02018b

    const v16, 0x7f02018c

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_MARGIN_Y_270:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->COLLAGE_TYPE_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020070

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a014e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f02006c

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a014e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    int-to-float v6, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    new-instance v9, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v11, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    sub-float v12, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    const v1, 0x7f0e000c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    new-instance v9, Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v11, v1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_NORMAL_WIDTH:I

    int-to-float v13, v1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->NORMAL_RATIO_LANDSCAPE_CROP_WIDTH_DIVIDE_2:F

    const v1, 0x7f0e000c

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setBypassTouch(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingSideMenu:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method private isCameraSwitched()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCameraSwitchingAnimationRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->isCameraSwitchingAnimationRunning()Z

    move-result v0

    return v0
.end method

.method private isClipsAdded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCropAreaEnabled()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v0

    aget v1, v0, v5

    aget v3, v0, v4

    div-int v2, v3, v1

    if-eq v2, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private isFinish()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-ne v2, v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isNeedReset()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedRotate()Z
    .locals 6

    const/16 v5, 0x10e

    const/16 v4, 0x5a

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getOrientationOnTake()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->calculateOrientationForPicture(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v3

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eq v2, v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-ne v2, v5, :cond_4

    :cond_0
    if-eq v1, v4, :cond_1

    if-ne v1, v5, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v3

    if-ne v2, v3, :cond_4

    if-nez v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedSaveProjcet()Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSavedProjectExist()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "pref_video_collage_is_project_saved_key"

    invoke-static {v4, v5, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private isSecureSavedProjectExist()Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v4, v5, v3}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private launchEditor()V
    .locals 12

    const-string v9, "VideoCollage"

    const-string v10, "launchEditor()"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.sec.android.app.clipvideo"

    invoke-static {v9, v10}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v7

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    div-int/lit16 v0, v9, 0x3e8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/Engine;->createVideoDirectory()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v9}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v9

    mul-int/2addr v0, v9

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.sec.android.app.clipvideo"

    const-string v10, "com.sec.android.app.clipvideo.activity.ClipVideoEditorActivity"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.intent.action.EDIT"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "orientation"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "type"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "collageType"

    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v10}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v11}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeForEditor(II)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "duration"

    invoke-virtual {v2, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "aspectRatio"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "fileList"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v9, "rotationList"

    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v9, "resultPath"

    invoke-virtual {v2, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :cond_1
    const-string v9, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x7e9

    invoke-virtual {v9, v2, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f050002

    const v11, 0x7f050003

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method private loadProjectFile(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    const/4 v10, 0x0

    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, 0x0

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    if-eqz v6, :cond_1

    if-eqz v9, :cond_7

    :try_start_3
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    if-eqz v5, :cond_2

    if-eqz v9, :cond_a

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "VideoCollage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fail to delete file : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v7, :cond_5

    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v10, "VideoCollage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "check validity of file path : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    move-object v7, v9

    :cond_5
    return-object v7

    :catch_0
    move-exception v8

    :try_start_5
    invoke-virtual {v11, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v8

    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v10

    move-object v13, v10

    move-object v10, v8

    move-object v8, v13

    :goto_2
    if-eqz v5, :cond_6

    if-eqz v10, :cond_b

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_6
    :goto_3
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v1

    const-string v8, "VideoCollage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadProjectFile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    :try_start_9
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v8

    move-object v10, v9

    goto :goto_2

    :catch_3
    move-exception v8

    :try_start_a
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v10

    move-object v13, v10

    move-object v10, v8

    move-object v8, v13

    :goto_4
    if-eqz v6, :cond_8

    if-eqz v10, :cond_9

    :try_start_b
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_8
    :goto_5
    :try_start_c
    throw v8

    :catch_4
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v8

    :try_start_d
    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_1

    :catch_6
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_3

    :catchall_3
    move-exception v8

    move-object v10, v9

    goto :goto_4
.end method

.method private loadSavedProject(Ljava/lang/String;)V
    .locals 5

    const-string v1, "VideoCollage"

    const-string v2, "setStateToSavedProject()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadProjectFile(Ljava/lang/String;)Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeSettingFromProject(III)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeSettingFromProject(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeMultiTrackRecording : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private onBackKeyPressed()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "VideoCollage"

    const-string v2, "onBackKeyPressed()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "VideoCollage"

    const-string v2, "onBackKeyPressed - cannot cacncel recording or back(out camera)"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1dd

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1df

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCAFButtonPressed()Z
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "onCAFButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetTouchFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCAFButton()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPauseButtonPressed()Z
    .locals 4

    const/16 v3, 0x3e8

    const/4 v2, 0x0

    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed - not recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    if-lt v0, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-gt v0, v3, :cond_2

    :cond_1
    const-string v0, "VideoCollage"

    const-string v1, "onPauseButtonPressed - cannot pause recording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->pauseRecording()V

    goto :goto_0
.end method

.method private onResumeButtonPressed()Z
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "onResumeButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->resumeRecording()V

    const/4 v0, 0x0

    return v0
.end method

.method private onSwitchCameraButtonPressed()Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return not Engine previewing state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v0, :cond_1

    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return because of switching"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEmptyRequestQueue()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VideoCollage"

    const-string v1, "onSwitchCameraButtonPressed() return because RequestQueue is not empty"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraAsync()V

    goto :goto_0
.end method

.method private onUndoButtonPressed()Z
    .locals 3

    const/4 v2, 0x1

    const-string v0, "VideoCollage"

    const-string v1, "onUndoButtonPressed()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v0, :cond_0

    const-string v0, "VideoCollage"

    const-string v1, "return mIsCameraSwitching"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->doUndo()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_0
.end method

.method private pauseRecording()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "pauseRecording()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    return-void
.end method

.method private prepareSwitchCamera()V
    .locals 4

    const/16 v3, 0x7f

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->updateSelectedEffect()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->instance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->clear()V

    return-void
.end method

.method private removeLastProgressDivider()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarDividerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->clear()V

    :cond_0
    return-void
.end method

.method private requestFocus(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private reset()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    :cond_0
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const-string v0, "VideoCollage"

    const-string v1, "Return resumeRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    goto :goto_0
.end method

.method private rotateCollageTypeIcon()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private saveProject()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const-string v4, "VideoCollage"

    const-string v5, "saveProject()"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    const/4 v4, 0x0

    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-virtual {v3, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "pref_video_collage_is_project_secure_saved_key"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v3, :cond_0

    if-eqz v6, :cond_6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    if-eqz v6, :cond_8

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    :try_start_5
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "pref_video_collage_is_project_saved_key"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    :goto_4
    if-eqz v3, :cond_4

    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    :goto_5
    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_1
    move-exception v4

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    :goto_6
    if-eqz v2, :cond_5

    if-eqz v6, :cond_9

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    :cond_5
    :goto_7
    :try_start_b
    throw v4
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    :catch_2
    move-exception v0

    const-string v4, "VideoCollage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveProject : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v7

    :try_start_c
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_2
    move-exception v4

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_2

    :catch_4
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    :catch_5
    move-exception v5

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    :catch_6
    move-exception v5

    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_7

    :catchall_3
    move-exception v4

    move-object v5, v6

    goto :goto_4
.end method

.method private sendShowUIMessageDelayed()V
    .locals 4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private setCollageType(I)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2500(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private setCollageTypeIconResources()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ne v3, v5, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-gt v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getResourceIconOrder(II)I

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$1800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getResourceIconLineOrder(II)I

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v5}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->rotateCollageTypeIcon()V

    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v3, v6}, Lcom/samsung/android/glview/GLImage;->setDefaultOrientation(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCollageTypeIconTitle(I)V
    .locals 3

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0147

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0149

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0148

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a014c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private setCropArea()V
    .locals 14

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    const-string v9, "VideoCollage"

    const-string v10, "setCropArea()"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v1

    const/4 v9, 0x0

    aget v3, v1, v9

    aget v7, v1, v11

    div-int v6, v7, v3

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-eqz v5, :cond_1

    iget v9, v5, Landroid/graphics/Rect;->left:I

    int-to-float v4, v9

    cmpg-float v9, v4, v13

    if-gez v9, :cond_0

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v8, v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v9

    int-to-float v2, v9

    :cond_1
    int-to-float v9, v6

    div-float v9, v2, v9

    sub-float v0, v2, v9

    if-eq v6, v11, :cond_2

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaLeft:Lcom/samsung/android/glview/GLRectangle;

    div-float v10, v0, v12

    sub-float v10, v2, v10

    div-float v11, v0, v12

    invoke-virtual {v9, v4, v10, v8, v11}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPortraitCropAreaRight:Lcom/samsung/android/glview/GLRectangle;

    div-float v10, v0, v12

    invoke-virtual {v9, v4, v13, v8, v10}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    :cond_2
    return-void
.end method

.method private setMaxRecordingCount(I)V
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    return-void
.end method

.method private setProjectType(I)V
    .locals 2

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2900(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setRatio(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private setRecIndicatorIcon(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0201c7

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setRecordingTime(I)V
    .locals 2

    const/16 v1, 0x1770

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x2328

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    const/16 v1, 0x3a98

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setRecordingTimeByType()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageRecordingTime()I

    move-result v0

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeBackup:I

    :goto_0
    if-eq v0, v2, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageRecordingTime(I)V

    :goto_1
    return-void

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    if-le v3, v5, :cond_2

    move v2, v0

    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    :goto_3
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeBackup:I

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_3

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTime(I)V

    goto :goto_1
.end method

.method private showCAFButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private showCollageTypeIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showCollageTypeIconLine()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private showCropArea()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCropAreaGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showFlashButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(I)V

    return-void
.end method

.method private showIndicatorLayout()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "showIndicatorLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecIndicatorIcon(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecTimeGroup()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showProgress()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIcon()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    goto :goto_0
.end method

.method private showLastProgressDivider()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLastDivider:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private showLowDeviceStorageToast()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01d5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mLowDeviceStorageToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method

.method private showPauseButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private showPauseIndicatorIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorPauseIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    return-void
.end method

.method private showPauseLayout()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "showPauseLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showResumeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseIndicatorIcon()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    return-void
.end method

.method private showPreviewLayout()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VideoCollage"

    const-string v1, "showPreviewLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->resetPageNavigatorItem()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x1d4e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePage(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x27c

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconTitle(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIconLine()V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingButton()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIcon()V

    goto :goto_2
.end method

.method private showProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showRecTimeGroup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showRecordedLayout()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VideoCollage"

    const-string v1, "showRecordedLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x1d4c

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hidePage(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x3c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showUndoButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showSwitchCameraButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingButton()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateDivider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showFlashButton()V

    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseIndicatorIcon()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    goto :goto_3

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showFlashButton()V

    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCollageTypeIconLine()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showRecordingButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private showRecordingLayout()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "VideoCollage"

    const-string v1, "showRecordingLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, -0x181

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideUndoButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideFlashButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideSwitchCameraButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCollageTypeIconLine()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-ge v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startHideAnimation(Lcom/samsung/android/glview/GLButton;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startShowAnimation(Lcom/samsung/android/glview/GLButton;)V

    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-ne v0, v2, :cond_3

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addProgressDivider(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordingButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseButton()V

    goto :goto_1
.end method

.method private showResumeButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private showResumeLayout()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "showResumeLayout()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideResumeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hidePauseIndicatorIcon()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->requestFocus(I)V

    return-void
.end method

.method private showSwitchCameraButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_X:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_FRONT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_X:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SWITCH_BUTTON_POS_Y_REAR:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method private showUndoButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private showView()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "showView()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_1
.end method

.method private startHideAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v8, 0x23a

    const/4 v9, 0x0

    const/4 v0, 0x0

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v1}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v3, v0

    move v4, v11

    move v5, v0

    move-object v6, p1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v10, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;Z)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method private startShowAnimation(Lcom/samsung/android/glview/GLButton;)V
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    const v11, 0x3f35c28f    # 0.71f

    const/16 v8, 0x23a

    const/4 v9, 0x0

    const/4 v0, 0x0

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v1, v0

    move v2, v0

    move v3, v0

    move-object v4, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v0}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    invoke-static {v8, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;

    invoke-direct {v7}, Lcom/sec/android/app/camera/util/interpolator/SineEaseOut;-><init>()V

    move v2, v11

    move v3, v12

    move v4, v11

    move v5, v12

    move-object v6, p1

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p1, v10}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v9}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    return-void
.end method

.method private startTimer()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "startTimer()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    return-void
.end method

.method private stopTimer()V
    .locals 3

    const/16 v2, 0x3e8

    const-string v0, "VideoCollage"

    const-string v1, "stopTimer()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-gt v0, v2, :cond_2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecIndicatorIcon()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v5, "VideoCollage"

    const-string v6, "switchCamera()"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iput-boolean v10, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideRecordedLayout()V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v5}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    :goto_0
    const-string v0, "960x960"

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->toggleSwitchCameraIdSetting()V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v7}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$800(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v8}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$2200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v8

    invoke-direct {p0, v6, v7, v8}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCollageTypeSettingFromProject(III)I

    move-result v6

    invoke-interface {v5, v6, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v10}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->toggleSwitchCameraIdSetting()V

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->switchVideoCollageCamera()V

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraVoiceCommand()I

    move-result v5

    if-ne v5, v10, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->startVoiceRecognizer()V

    :goto_3
    iput-boolean v9, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordedLayout()V

    :goto_4
    return-void

    :cond_3
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_1BY1_LARGE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    if-ne v2, v10, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    :goto_5
    const-string v0, "960x720"

    goto/16 :goto_1

    :cond_5
    sget-object v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_RESOLUTION_4BY3_LARGE:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    if-ltz v5, :cond_7

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    if-ltz v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCameraResolution:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraResolution(I)Z

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedCamcorderResolution:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderResolution(I)Z

    :cond_7
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    if-ltz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedTimerValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setTimer(I)V

    :cond_8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    if-ltz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedZoomValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setZoomValue(I)V

    :cond_9
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    if-ltz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVoiceCommandValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraVoiceCommand(I)V

    :cond_a
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    if-ltz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedVideoCollageType:I

    invoke-interface {v5, v6, v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageType(IZ)V

    :cond_b
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSavedFlipValue:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_2

    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopVoiceRecognizer()V

    goto :goto_3

    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPreviewLayout()V

    goto :goto_4
.end method

.method private switchCameraAsync()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private switchCameraSync()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->prepareSwitchCamera()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCamera()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleSwitchCameraCompleted()V

    return-void
.end method

.method private toggleSwitchCameraIdSetting()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "toggleSwitchCameraIdSetting()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getBackCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    goto :goto_0
.end method

.method private updateCollageTypeIcon(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIcon:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeIconLine:Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3300(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setImageResources(I)V

    return-void
.end method

.method private updateCropArea()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCropArea()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCropArea()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    goto :goto_0
.end method

.method private updateDivider()V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$3400(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clearProgressDivider()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v3, v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v4}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$700(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->addProgressDivider(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLastProgressDivider()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateIndicatorLayout()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorRecTimePosition()V

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    neg-int v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->translateAbsolute(FF)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateLayout(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCollageTypeGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->resetTranslate()V

    goto :goto_0
.end method

.method private updateIndicatorRecTimePosition()V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_SIZE:F

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v3

    div-float v2, v3, v8

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_TEXT_POS_X:I

    int-to-float v3, v3

    add-float v1, v3, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v8

    sub-float v0, v1, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v8

    sub-float/2addr v5, v0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v5, v0

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-float/2addr v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x3

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_WIDTH:I

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_MARGIN_Y_270:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->SCREEN_HEIGHT:I

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->RECORDING_TIME_GROUP_WIDTH:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    add-float/2addr v6, v0

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    return-void
.end method

.method private updateProgress()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentProgress()I

    move-result v0

    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgress() - progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProgress()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLastProgressDivider()V

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    :cond_1
    return-void
.end method

.method private updateRecIndicatorIcon()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLImage;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecIcon:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRecordingTime(J)V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$600(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    long-to-int v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingTimeInMs:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecIndicatorIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingTime() - getCurrentRecordingTime():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getCurrentRecordingTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRecordingTimeText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIndicatorRecTimeText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelRecording()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "cancelRecording()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    const-string v0, "VideoCollage"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayRecordingStartSound()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClipStartSoundEnable getCurrentRecordingCount - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isPlayRecordingStopSound()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRemainedRecordingTime()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isRecordingTimeRestricted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSnapShotAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6

    const/16 v5, 0x83

    const/16 v4, 0x12

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "VideoCollage"

    const-string v1, "onActivate()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSecureSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSecureSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_secure_saved_key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x7f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v5, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x84

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x232f

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isClipsAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    :cond_1
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTickInterval:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v0

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    :goto_2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mFirstCameraId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getFrontCameraId()I

    move-result v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v1

    invoke-interface {v0, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getStorageStatus(I)I

    move-result v0

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLowDeviceStorageToast()V

    :goto_4
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showView()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeProject(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isSavedProjectExist()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1de

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isRecordingRestricted()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto/16 :goto_4

    :array_0
    .array-data 4
        0x84
        0x83
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x84
        0x83
        0x3
        0xc
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VideoCollage"

    const-string v1, "Wrong state for touchAF"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VideoCollage"

    const-string v1, "Preview is not started"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchAutoFocusArea(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCAFButton()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationEnd(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/samsung/android/glview/GLView;Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onCameraSettingChanged(II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraSettingsChanged: menuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modeid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProjectType(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTimeByType()V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageType(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRatio(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setMaxRecordingCount(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x83

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setVideoCollageResolution()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolutionChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCameraPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;-><init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopPreview()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartPreview()V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedBackupRecordingTime:Z

    if-eqz v1, :cond_7

    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraSettingsChanged: mMaxRecordingTimeChangeCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMaxRecordingTimeChangeCnt:I

    :cond_7
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingTime(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCancelDialog(I)V
    .locals 3

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelDialog keyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "VideoCollage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeShootingModeParameters : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v3, :cond_3

    const-string v0, "RECORDING"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", VideoCollageType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-ne v0, v8, :cond_4

    :cond_0
    const v0, 0x1d4c0

    const v1, 0x1d4c0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const/16 v0, 0x170e

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x78

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    const-string v0, "effectrecording-hint"

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const-string v0, "phase-af"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "PREVIEW"

    goto :goto_0

    :cond_4
    sget v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_EFFECT_PREVIEW_FPS_MAX:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_EFFECT_PREVIEW_FPS_MAX:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_5

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    const-string v0, "effectrecording-hint"

    invoke-virtual {p1, v0, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v0, :cond_2

    const-string v0, "phase-af"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-eq v0, v5, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-eq v0, v7, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v0

    if-ne v0, v8, :cond_9

    :cond_7
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_8

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v0, 0x3a98

    const/16 v1, 0x7530

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_COMPANION_CHIP:Z

    if-eqz v0, :cond_a

    invoke-static {v6}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getCameraHDRString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const/16 v0, 0x3a98

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_EFFECT_PREVIEW_FPS_MAX:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v0, "effect_hint"

    invoke-virtual {p1, v0, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x83

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x84

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onPauseButtonPressed()Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onResumeButtonPressed()Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mUndoButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onUndoButtonPressed()Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onCAFButtonPressed()Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mSwitchCameraButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onSwitchCameraButtonPressed()Z

    move-result v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 0

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->initializeView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    return-void
.end method

.method public onEffectProcessorPrepared()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getEffectProcessorParameter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setProcessorParameter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEngineStateChanged(I)V
    .locals 2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopThumbnailPreviewCallback()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showCropArea()V

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 8

    const/16 v7, 0x83

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v1, "VideoCollage"

    const-string v2, "onInactivate()"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedSaveProjcet()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->saveProject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isNeedReset()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->reset()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->unregisterRecordingController()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideView()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v7, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x84

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCamcorderAudioRecording(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v7, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    :cond_4
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectThumbnailListMenu:Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectProcessorListener(Lcom/sec/android/app/camera/interfaces/Engine$EffectProcessorListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsNeedDrawingProgressDivider:Z

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->clear()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "VideoCollage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInactivate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VideoCollage"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :sswitch_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onBackKeyPressed()Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onPauseButtonPressed()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onResumeButtonPressed()Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMediaRecorderPreparedEvent(Landroid/media/MediaRecorder;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "VideoCollage"

    const-string v3, "onMediaRecorderPrepared()"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getMaxRecordingTimeInMs()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    const-wide/32 v2, 0x7d000

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaRecorder;->semSetFileSizeInterval(J)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v6}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    const v2, 0x2dc6c0

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getVideoSizeDivider()[I

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p1, v5}, Landroid/media/MediaRecorder;->semSetRecordingMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getVideoBitRateFromProfile()I

    move-result v2

    aget v3, v0, v5

    aget v4, v0, v6

    mul-int/2addr v3, v4

    div-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v2

    aget v3, v0, v5

    div-int/2addr v2, v3

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v3

    aget v4, v0, v6

    div-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_0
.end method

.method public onMenuSelected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNegativeButtonClicked(I)V
    .locals 3

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegativeButtonClicked keyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1dd

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    return-void

    :cond_1
    const/16 v0, 0x1de

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardSaved()V

    goto :goto_0
.end method

.method public onNewVideoLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Z101"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Z029"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Z028"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    if-eq v0, p1, :cond_2

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateIndicatorLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCropArea()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$200(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setCollageTypeIconResources()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateCollageTypeIcon(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->rotateCollageTypeIcon()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showIndicatorLayout()V

    goto :goto_0
.end method

.method public onPositiveButtonClicked(I)V
    .locals 3

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositiveButtonClicked keyId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1df

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->discardRecording()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    return-void

    :cond_1
    const/16 v0, 0x1dd

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCameraSwitched()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->switchCameraSync()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultShootingModeByCurrentCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShootingModeChanged(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x1de

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getProjectSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->loadSavedProject(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_video_collage_is_project_saved_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x1e3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mVideoCollageHandler:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onRecordKeyReleased()Z
    .locals 5

    const/16 v4, 0x84

    const/16 v3, 0x83

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsCameraSwitching:Z

    if-eqz v2, :cond_1

    const-string v0, "VideoCollage"

    const-string v2, "return mIsCameraSwitching"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getStorageStatus(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showLowDeviceStorageToast()V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsLayoutUpdateNeeded:Z

    if-eqz v2, :cond_4

    const-string v1, "VideoCollage"

    const-string v2, "return mIsLayoutUpdateNeeded"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1dd

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1de

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1df

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "VideoCollage"

    const-string v2, "return isCameraDialogVisible.."

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$100(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageRecordingTime()I

    move-result v2

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v0, v4, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getVideoCollageType()I

    move-result v2

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public onRecordingEvent(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingLayout()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showResumeLayout()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showPauseLayout()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleRecordingStopped()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->handleRecordingCancelled()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onRecordingMaxDurationReached()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "onRecordingMaxReachedDuration()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getMaxRecordingTimeInMs()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingTimeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTimeText(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setProgress(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "onRecordingMaxReachedFileSize()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->stopRecording()V

    return-void
.end method

.method protected onRecordingRestricted(ZZ)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getStorageStatus(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0
.end method

.method public onRecordingTick(JJ)V
    .locals 3

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTick - elapsedTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->startTimer()V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateProgress()V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    goto :goto_0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEffectLevelSliderMenu:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideIndicatorLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isCropAreaEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->hideCropArea()V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0

    return-void
.end method

.method protected onStopProgress(I)V
    .locals 0

    return-void
.end method

.method protected onStopRecordingRequested(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->cancelRecording()V

    goto :goto_0
.end method

.method public onTimerEvent(I)V
    .locals 4

    const/16 v3, 0x3d

    const-string v0, "VideoCollage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_2
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected startRecording()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->isPlayRecordingStartSound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x8

    invoke-interface {v1, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->checkAvailableRecordingStorage()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording_over_60fps"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->createVideoCollageFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoFilePath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setMaxVideoFileSize()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mProject:Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;->access$000(Lcom/sec/android/app/camera/shootingmode/VideoCollage$VideoCollageProject;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFocusMode(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mIsTimerCounting:Z

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Camera_recording"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/util/Util;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->showRecordingLayout()V

    goto :goto_1
.end method

.method protected stopRecording()V
    .locals 2

    const-string v0, "VideoCollage"

    const-string v1, "stopRecording()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->getTotalRecordingTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->updateRecordingTime(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    return-void
.end method

.method protected stopRecordingForced()V
    .locals 0

    return-void
.end method
