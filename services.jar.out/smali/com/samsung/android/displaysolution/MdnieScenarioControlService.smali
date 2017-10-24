.class public Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final MSC_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field private static final TAG:Ljava/lang/String; = "MdnieScenarioControlService"


# instance fields
.field private final ACTION_DETAIL_VIEW_STATE_IN:Ljava/lang/String;

.field private ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_DETAIL_VIEW_STATE_OUT:Ljava/lang/String;

.field private ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

.field private ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

.field private ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

.field private ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

.field private ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

.field private ANDROID_APP_LAUNCHER:[Ljava/lang/String;

.field private CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field private CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private DMB_APP_LAUNCHER:[Ljava/lang/String;

.field private EBOOK_APP_LAUNCHER:[Ljava/lang/String;

.field private EMAIL_APP_LAUNCHER:[Ljava/lang/String;

.field private FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

.field private FrontPackageName:Ljava/lang/String;

.field private GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

.field private GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private GET_SYSTEM_SERVICES_MILLIS:I

.field private IS_CAMERA_APP_DEBOUNCE_MILLIS:I

.field private IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

.field private final LOCALE_CHANGED:Ljava/lang/String;

.field private MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

.field private MDNIE_GAME_LOW_MODE:Ljava/lang/String;

.field private MDNIE_GAME_MID_MODE:Ljava/lang/String;

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_GET_SYSTEM_SERVICES:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_CAMERA_MODE:I

.field private final MSG_SET_DMB_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_EMAIL_MODE:I

.field private final MSG_SET_GALLERY_MODE:I

.field private final MSG_SET_GALLERY_OUT_MODE:I

.field private final MSG_SET_GAME_HIGH_MODE:I

.field private final MSG_SET_GAME_LOW_MODE:I

.field private final MSG_SET_GAME_MID_MODE:I

.field private final MSG_SET_GAME_OUT_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

.field private final MSG_SET_UI_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_SET_VIDEO_OPTION_MODE:I

.field private final MSG_WRITE_DATABASE_VIDEO_LIST:I

.field private final NOTIFICATION_DISMISS:Ljava/lang/String;

.field private final NOTIFICATION_REMOVED:Ljava/lang/String;

.field private final NOTIFICATION_SETTINGS:Ljava/lang/String;

.field private READING_SCENARIO_PATH:Ljava/lang/String;

.field private SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private SCENARIO_VALUE:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private VIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private first_MultiWindowOn:Z

.field private isLockScreenOn:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppLaunchStateInDatabase:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoModeEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mCameraScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

.field private mDMBScenarioEnabled:Z

.field private mDetailViewState:Z

.field private mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEBookScenarioIntented:Z

.field private mEbookScenarioEnabled:Z

.field private mEmailScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mGalleryAppLauncher:Z

.field private mGalleryModeFirst:Z

.field private mGalleryMultiView:Z

.field private mGalleryMultiViewLauncher:Z

.field private mGalleryOptionScenarioEnabled:Z

.field private mGalleryScenarioEnabled:Z

.field private mGameModeLauncher:Z

.field private mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdrEffectEnabled:Z

.field private mHdrEffectSamsungVideo:Z

.field private mHdrEffectVideo:Z

.field private mHdrEffect_Perfomance_mode:I

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mIsFromCamera:Z

.field private mKeyGuardManager:Landroid/app/KeyguardManager;

.field private mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mNotGoUI:Z

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mNotidficationAlreadyShow:Z

.field private mPbmVideoEnhancer:Z

.field private mPerfomanceMode:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mQuickViewState:Z

.field private mSVideoAppLauncher:Z

.field private mSVideoOptionScenarioEnabled:Z

.field private mSVideoScenarioEnabled:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

.field private mStatusbarManager:Landroid/app/StatusBarManager;

.field private mUIScenarioEnabled:Z

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseMdnieScenarioControlConfig:Z

.field private mVideoEnd:Z

.field private mVideoEndNotUI:Z

.field private mVideoScenarioEnabled:Z

.field private mWorkingCondition:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_LOW_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_MID_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverState:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    return p1
.end method

.method static synthetic -set7(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->cancelNotification()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getSystemServices()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .locals 0
    .param p1, "mGalleryAppLauncher"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGalleryMode(Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .locals 0
    .param p1, "mSVideoAppLauncher"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoOptionMode()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .locals 0
    .param p1, "videoPackageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->settingsNotification()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .locals 0
    .param p1, "needHeadUpNoti"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->showHdrEffectNotification(Z)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->writeVideoListInDataBase()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName_className"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrowserMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraMode()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDMBMode()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEbookMode()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEmailMode()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/16 v7, 0x13

    const/16 v5, 0x12

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DEBUG:Z

    .line 109
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_FOREGROUND_APP:I

    .line 110
    iput v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_RESCAN_FOREGROUND_APP:I

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_UI_MODE:I

    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_BROWSER_MODE:I

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_MODE:I

    .line 114
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_CAMERA_MODE:I

    .line 115
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_VIDEO_MODE:I

    .line 116
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_MODE:I

    .line 117
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

    .line 118
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EMAIL_MODE:I

    .line 119
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EBOOK_MODE:I

    .line 120
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_DMB_MODE:I

    .line 121
    const/16 v0, 0xc

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_OUT_MODE:I

    .line 122
    const/16 v0, 0xd

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GAME_LOW_MODE:I

    .line 123
    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GAME_MID_MODE:I

    .line 124
    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GAME_HIGH_MODE:I

    .line 125
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GAME_OUT_MODE:I

    .line 126
    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_VIDEO_OPTION_MODE:I

    .line 127
    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_WRITE_DATABASE_VIDEO_LIST:I

    .line 128
    iput v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_GET_SYSTEM_SERVICES:I

    .line 130
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    .line 131
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffect_Perfomance_mode:I

    .line 132
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 133
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 134
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 135
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 136
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 137
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 138
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 139
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 140
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 141
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 142
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    .line 143
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 144
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 145
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 147
    const-string/jumbo v0, "screen_mode_automatic_setting"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, "screen_mode_setting"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 149
    const-string/jumbo v0, "ACTION_DETAIL_VIEW_STATE_IN"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "ACTION_DETAIL_VIEW_STATE_OUT"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, "ACTION_MOVIE_PLAYER_STATE_IN"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, "ACTION_MOVIE_PLAYER_STATE_OUT"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

    .line 153
    const-string/jumbo v0, "ACTION_GAME_MODE_STATE_IN"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

    .line 154
    const-string/jumbo v0, "ACTION_GAME_MODE_STATE_OUT"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "NOTIFICATION_SETTINGS"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->NOTIFICATION_SETTINGS:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "NOTIFICATION_DISMISS"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->NOTIFICATION_DISMISS:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "NOTIFICATION_REMOVED"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->NOTIFICATION_REMOVED:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->LOCALE_CHANGED:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "MDNIE_GAME_LOW_MODE"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_LOW_MODE:Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "MDNIE_GAME_MID_MODE"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_MID_MODE:Ljava/lang/String;

    .line 162
    const-string/jumbo v0, "MDNIE_GAME_HIGH_MODE"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MDNIE_GAME_HIGH_MODE:Ljava/lang/String;

    .line 163
    const-string/jumbo v0, "/sys/class/mdnie/mdnie/scenario"

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    .line 165
    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    .line 166
    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    .line 168
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 169
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 170
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 171
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 172
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    .line 173
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 174
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    .line 175
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 176
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 177
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 178
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 179
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 180
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 181
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    .line 199
    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 200
    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 202
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 203
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 204
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 205
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 206
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    .line 207
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 208
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    .line 209
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    .line 210
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    .line 211
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    .line 212
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 213
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPbmVideoEnhancer:Z

    .line 214
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPerfomanceMode:Z

    .line 215
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    .line 216
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 217
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    .line 218
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 219
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoModeEnabled:Z

    .line 220
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEBookScenarioIntented:Z

    .line 221
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 222
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 223
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 224
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 225
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 226
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 227
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 228
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 229
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 230
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 231
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 232
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    .line 233
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    .line 234
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    .line 235
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiView:Z

    .line 236
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    .line 237
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 238
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z

    .line 239
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    .line 240
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 241
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 242
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectSamsungVideo:Z

    .line 243
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectVideo:Z

    .line 244
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    .line 245
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFirstStart:Z

    .line 246
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverState:Z

    .line 456
    new-instance v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 641
    new-instance v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 249
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    .line 251
    new-instance v0, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    .line 252
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 254
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MdnieScenarioControlServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 255
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 256
    new-instance v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    .line 258
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    .line 260
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    .line 276
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    .line 277
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 278
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    .line 279
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 280
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    .line 281
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 282
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    .line 283
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    .line 284
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    .line 285
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    .line 286
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    .line 287
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    .line 289
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 292
    new-instance v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 295
    .local v6, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 297
    .local v8, "time":J
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 299
    const-string/jumbo v0, "screen_mode_automatic_setting"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v6, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    const-string/jumbo v0, "high_contrast"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v6, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 301
    const-string/jumbo v0, "lcd_curtain"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v6, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 302
    const-string/jumbo v0, "color_blind"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v6, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 303
    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v6, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v0, "ACTION_DETAIL_VIEW_STATE_IN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v0, "ACTION_DETAIL_VIEW_STATE_OUT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v0, "ACTION_MOVIE_PLAYER_STATE_IN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string/jumbo v0, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v0, "ACTION_GAME_MODE_STATE_IN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    const-string/jumbo v0, "ACTION_GAME_MODE_STATE_OUT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v0, "NOTIFICATION_DISMISS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v0, "NOTIFICATION_SETTINGS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v0, "NOTIFICATION_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

    invoke-direct {v1, p0, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v4, v1

    add-long/2addr v4, v8

    invoke-virtual {v0, v7, v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 326
    const-string/jumbo v0, "sys.mdniecontrolservice.mscon"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    if-eqz v0, :cond_0

    .line 329
    const-string/jumbo v0, "sys.mdniecontrolservice.mscon"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_0
    iput-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 248
    return-void
.end method

.method private cancelNotification()V
    .locals 4

    .prologue
    .line 1650
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    .line 1651
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    const-string/jumbo v1, "dialog"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v3, 0x3e7

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1649
    :cond_0
    return-void
.end method

.method private checkHeadUpNotiFirst()V
    .locals 0

    .prologue
    .line 1566
    return-void
.end method

.method private getAppLaunchState(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1728
    const/4 v7, 0x0

    .line 1730
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packagename = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "MSCS_APP_LIST"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1731
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1732
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1733
    const-string/jumbo v0, "launchstate"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    :cond_0
    if-eqz v7, :cond_1

    .line 1737
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1739
    :cond_1
    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    return v0

    .line 1735
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1736
    if-eqz v7, :cond_2

    .line 1737
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1735
    :cond_2
    throw v0
.end method

.method private getAppListRegistState(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1714
    const/4 v7, 0x0

    .line 1715
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1717
    .local v8, "mAppListRegistStateInDatabase":I
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packagename = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "MSCS_APP_LIST"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1718
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1719
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1721
    :cond_0
    if-eqz v7, :cond_1

    .line 1722
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1724
    :cond_1
    return v8

    .line 1720
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1721
    if-eqz v7, :cond_2

    .line 1722
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1720
    :cond_2
    throw v0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x80

    const/4 v10, 0x0

    .line 1502
    const/4 v5, 0x0

    .line 1503
    .local v5, "in":Ljava/io/InputStream;
    const/16 v0, 0x80

    .line 1504
    .local v0, "MAX_BUFFER_SIZE":I
    new-array v1, v11, [B

    .line 1505
    .local v1, "buffer":[B
    const/4 v8, 0x0

    .line 1506
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1508
    .local v7, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_0

    .line 1509
    aput-byte v10, v1, v4

    .line 1508
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1512
    :cond_0
    if-eqz p1, :cond_1

    .line 1513
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .local v6, "in":Ljava/io/InputStream;
    move-object v5, v6

    .line 1515
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_1
    if-eqz v5, :cond_3

    .line 1516
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 1517
    if-lez v7, :cond_2

    .line 1518
    new-instance v9, Ljava/lang/String;

    add-int/lit8 v10, v7, -0x1

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v12, 0x0

    invoke-direct {v9, v1, v12, v10, v11}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v9, "value":Ljava/lang/String;
    move-object v8, v9

    .line 1520
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1526
    :cond_3
    if-eqz v5, :cond_4

    .line 1528
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1534
    :cond_4
    :goto_1
    return-object v8

    .line 1529
    :catch_0
    move-exception v3

    .line 1530
    .local v3, "ee":Ljava/lang/Exception;
    const-string/jumbo v10, "MdnieScenarioControlService"

    const-string/jumbo v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1522
    .end local v3    # "ee":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1523
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "MdnieScenarioControlService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , in : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , value : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " , length : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1526
    if-eqz v5, :cond_4

    .line 1528
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1529
    :catch_2
    move-exception v3

    .line 1530
    .restart local v3    # "ee":Ljava/lang/Exception;
    const-string/jumbo v10, "MdnieScenarioControlService"

    const-string/jumbo v11, "File Close error"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1525
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ee":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 1526
    if-eqz v5, :cond_5

    .line 1528
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1525
    :cond_5
    :goto_2
    throw v10

    .line 1529
    :catch_3
    move-exception v3

    .line 1530
    .restart local v3    # "ee":Ljava/lang/Exception;
    const-string/jumbo v11, "MdnieScenarioControlService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getSystemServices()V
    .locals 7

    .prologue
    const/16 v6, 0x13

    .line 1667
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    .line 1668
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPowerManager:Landroid/os/PowerManager;

    .line 1669
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1670
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mDNIe"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 1671
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 1672
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    .line 1673
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 1674
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mStatusbarManager:Landroid/app/StatusBarManager;

    .line 1675
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "DisplaySolution"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 1677
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mStatusbarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v2, :cond_1

    .line 1678
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1679
    .local v0, "time":J
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1680
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    invoke-virtual {v2, v6, v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1681
    const-string/jumbo v2, "MdnieScenarioControlService"

    const-string/jumbo v3, "Failure to register all of the services system."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    .end local v0    # "time":J
    :goto_0
    return-void

    .line 1677
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v2, :cond_0

    .line 1683
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->registerProcessObserver()V

    .line 1684
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    .line 1685
    const-string/jumbo v2, "MdnieScenarioControlService"

    const-string/jumbo v3, "Success to register all of the services system."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getting_pbm_video_enhancer()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 570
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 571
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "pbm_video_enhancer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPbmVideoEnhancer:Z

    .line 572
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPbmVideoEnhancer:Z

    return v1

    .line 571
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getting_perfomance_mode_enabled()Z
    .locals 3

    .prologue
    .line 576
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPerfomanceMode:Z

    .line 577
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPerfomanceMode:Z

    return v0
.end method

.method private getting_perfomance_mode_value()I
    .locals 3

    .prologue
    .line 564
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 565
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "sem_perfomance_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffect_Perfomance_mode:I

    .line 566
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffect_Perfomance_mode:I

    return v1
.end method

.method private getting_setting_value()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 548
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    .line 549
    .local v0, "currentUserId":I
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    .line 550
    .local v1, "isKnoxMode":Z
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 552
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 553
    const-string/jumbo v5, "hdr_effect"

    const/4 v6, -0x2

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 554
    const-string/jumbo v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "Use Current User"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    return v3

    :cond_0
    move v3, v4

    .line 553
    goto :goto_0

    .line 557
    :cond_1
    const-string/jumbo v5, "hdr_effect"

    invoke-static {v2, v5, v4, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_2

    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    .line 558
    const-string/jumbo v3, "MdnieScenarioControlService"

    const-string/jumbo v4, "Use Owner User"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v3, v4

    .line 557
    goto :goto_2
.end method

.method private insertDataUsage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1700
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1701
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const-string/jumbo v1, "launchstate"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1703
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppListRegistState(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1704
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "MSCS_APP_LIST"

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1699
    :cond_0
    return-void
.end method

.method private mdnie_reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1470
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 1471
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 1472
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    .line 1473
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    .line 1474
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 1475
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 1476
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 1477
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 1478
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 1479
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 1480
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 1481
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 1482
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    .line 1483
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 1484
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 1469
    return-void
.end method

.method private monitorForegroundActivity(Ljava/lang/String;II)V
    .locals 25
    .param p1, "packageName_className"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 650
    const/16 v16, 0x0

    .line 651
    .local v16, "isUI":Z
    const/4 v7, 0x0

    .line 652
    .local v7, "isDmb":Z
    const/4 v9, 0x0

    .line 653
    .local v9, "isEmail":Z
    const/16 v17, 0x0

    .line 654
    .local v17, "isVideo":Z
    const/4 v8, 0x0

    .line 655
    .local v8, "isEbook":Z
    const/4 v10, 0x0

    .line 656
    .local v10, "isGallery":Z
    const/4 v14, 0x0

    .line 657
    .local v14, "isSVideo":Z
    const/4 v6, 0x0

    .line 658
    .local v6, "isCamera":Z
    const/4 v5, 0x0

    .line 659
    .local v5, "isBrowser":Z
    const/4 v11, 0x0

    .line 660
    .local v11, "isGalleryOption":Z
    const/4 v15, 0x0

    .line 661
    .local v15, "isSVideoOption":Z
    const/4 v12, 0x0

    .line 662
    .local v12, "isGallery_Multi_View":Z
    const/4 v13, 0x0

    .line 664
    .local v13, "isGallery_from_camera":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_0

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 666
    const/16 v16, 0x1

    .line 670
    :cond_0
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_1

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 672
    const/4 v5, 0x1

    .line 676
    :cond_1
    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_2

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 678
    const/4 v5, 0x1

    .line 682
    :cond_2
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 684
    const/4 v10, 0x1

    .line 688
    :cond_3
    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 690
    const/4 v12, 0x1

    .line 694
    :cond_4
    const/16 v18, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 696
    const/4 v11, 0x1

    .line 700
    :cond_5
    const/16 v18, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 702
    const/4 v13, 0x1

    .line 706
    :cond_6
    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_7

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 708
    const/4 v6, 0x1

    .line 712
    :cond_7
    const/4 v4, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_8

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 714
    const/4 v14, 0x1

    .line 718
    :cond_8
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_9

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 720
    const/4 v15, 0x1

    .line 724
    :cond_9
    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_a

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 726
    const/16 v17, 0x1

    .line 730
    :cond_a
    const/4 v4, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_b

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 732
    const/4 v9, 0x1

    .line 736
    :cond_b
    const/4 v4, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_c

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 738
    const/4 v8, 0x1

    .line 742
    :cond_c
    const/4 v4, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_d

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 744
    const/4 v7, 0x1

    .line 749
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1d

    if-eqz v5, :cond_1d

    .line 750
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 751
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 752
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 648
    :cond_e
    :goto_e
    return-void

    .line 664
    .end local v18    # "j":I
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 670
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 676
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 682
    .restart local v18    # "j":I
    :cond_12
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 688
    :cond_13
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 694
    :cond_14
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 700
    :cond_15
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    .line 706
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 712
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 718
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 724
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 730
    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 736
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 742
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    .line 756
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1e

    if-eqz v10, :cond_1e

    .line 757
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 758
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 759
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 763
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    goto/16 :goto_e

    .line 766
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_1f

    if-eqz v12, :cond_1f

    .line 767
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 768
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 769
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryMultiViewLauncher:Z

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 773
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_20

    if-eqz v11, :cond_20

    .line 774
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 776
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 780
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_25

    if-eqz v13, :cond_25

    .line 781
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_24

    .line 789
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    .line 790
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 794
    :cond_22
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_23

    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 796
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 797
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 798
    .local v20, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v20

    const/16 v24, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 800
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    .line 802
    .end local v20    # "time":J
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 805
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    goto/16 :goto_e

    .line 782
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 783
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDetailViewState:Z

    move/from16 v19, v0

    if-nez v19, :cond_22

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 787
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    goto/16 :goto_f

    .line 807
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_26

    if-eqz v6, :cond_26

    .line 808
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 809
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 810
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 811
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 812
    .restart local v20    # "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v20

    const/16 v24, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_e

    .line 815
    .end local v20    # "time":J
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_29

    if-eqz v14, :cond_29

    .line 816
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_28

    .line 820
    :cond_27
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 821
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 822
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 825
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->first_MultiWindowOn:Z

    goto/16 :goto_e

    .line 817
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 818
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    goto :goto_10

    .line 827
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2a

    if-eqz v15, :cond_2a

    .line 828
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 829
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 830
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x11

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 834
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2b

    if-eqz v17, :cond_2b

    .line 835
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 837
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 839
    .restart local v20    # "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v20

    const/16 v24, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_e

    .line 842
    .end local v20    # "time":J
    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2c

    if-eqz v9, :cond_2c

    .line 843
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 845
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x9

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 849
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2d

    if-eqz v8, :cond_2d

    .line 850
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 852
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 856
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2e

    if-eqz v7, :cond_2e

    .line 857
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 859
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 863
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_2f

    if-eqz v16, :cond_2f

    .line 864
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 865
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 866
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 871
    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 872
    .restart local v20    # "time":J
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    const/16 v22, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v20

    const/16 v24, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_e
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1637
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private receive_screen_off_intent()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 542
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 543
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 544
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 541
    return-void
.end method

.method private receive_screen_on_intent()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 535
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 536
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    .line 537
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 538
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode()V

    .line 534
    return-void
.end method

.method private registerProcessObserver()V
    .locals 4

    .prologue
    .line 1691
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1692
    .local v1, "mIActivityManager":Landroid/app/IActivityManager;
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1693
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1689
    .end local v1    # "mIActivityManager":Landroid/app/IActivityManager;
    :goto_0
    return-void

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MdnieScenarioControlService"

    const-string/jumbo v3, "failed to registerProcessObserver"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scenario_enable_reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1488
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    .line 1489
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    .line 1490
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    .line 1491
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    .line 1492
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    .line 1493
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    .line 1494
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    .line 1495
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    .line 1496
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    .line 1497
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    .line 1498
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    .line 1487
    return-void
.end method

.method private setAudioHDR(Z)V
    .locals 1
    .param p1, "audioHDR"    # Z

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1563
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->semSetAudioHDR(Z)V

    .line 1561
    :cond_0
    return-void
.end method

.method private setBrightnessScaleFactor(I)V
    .locals 3
    .param p1, "scaleValue"    # I

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    .line 1548
    if-nez p1, :cond_1

    .line 1549
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string/jumbo v1, "hdr_effect_off"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 1550
    const-string/jumbo v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_0
    :goto_0
    return-void

    .line 1551
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1552
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string/jumbo v1, "hdr_effect_on_1"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 1553
    const-string/jumbo v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1554
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string/jumbo v1, "hdr_effect_on_2"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 1556
    const-string/jumbo v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setBrowserMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1005
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 995
    :cond_0
    :goto_1
    return-void

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1005
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "BROWSER_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1007
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1008
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1009
    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setBrowserMode from Browser function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setCameraMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1056
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1064
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    .line 1066
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    if-eqz v1, :cond_1

    .line 1075
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    .line 1076
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    .line 1078
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    .line 1054
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1067
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "CAMERA_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1068
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1069
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1070
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1071
    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setCameraMode from Camera function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setDMBMode()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/16 v12, 0x14

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1349
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1355
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    .line 1356
    .local v0, "currentUserId":I
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_value()I

    move-result v5

    .line 1358
    .local v5, "perfomance_mode":I
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v2

    .line 1359
    .local v2, "hdr_effect_enable":Z
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_pbm_video_enhancer()Z

    move-result v4

    .line 1360
    .local v4, "pbm_video_enhancer":Z
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    .line 1361
    .local v3, "isKnoxMode":Z
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_enabled()Z

    move-result v6

    .line 1363
    .local v6, "perfomance_mode_enabled":Z
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1365
    const-string/jumbo v7, "MdnieScenarioControlService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hdr_effect_enable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , perfomance_mode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , SemFloatingFeature : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , pbm_video_enhancer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    if-eqz v6, :cond_0

    if-nez v5, :cond_4

    .line 1368
    :cond_0
    if-eqz v2, :cond_b

    .line 1369
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_7

    .line 1377
    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_3

    .line 1378
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "20"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1347
    :cond_3
    :goto_1
    return-void

    .line 1351
    .end local v0    # "currentUserId":I
    .end local v2    # "hdr_effect_enable":Z
    .end local v3    # "isKnoxMode":Z
    .end local v4    # "pbm_video_enhancer":Z
    .end local v5    # "perfomance_mode":I
    .end local v6    # "perfomance_mode_enabled":Z
    :catch_0
    move-exception v1

    .line 1352
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1367
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentUserId":I
    .restart local v2    # "hdr_effect_enable":Z
    .restart local v3    # "isKnoxMode":Z
    .restart local v4    # "pbm_video_enhancer":Z
    .restart local v5    # "perfomance_mode":I
    .restart local v6    # "perfomance_mode_enabled":Z
    :cond_4
    if-eq v5, v11, :cond_0

    const/4 v7, 0x3

    if-eq v5, v7, :cond_0

    .line 1401
    if-ne v5, v13, :cond_3

    .line 1402
    if-eqz v4, :cond_11

    .line 1403
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_e

    .line 1411
    :cond_5
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_3

    .line 1412
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "20"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "TDMB_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1413
    invoke-direct {p0, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1414
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1415
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1416
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setDMBMode from DMB function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1370
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "15"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1376
    :cond_8
    :goto_2
    const-string/jumbo v7, "HDR_EFFECT"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_1

    .line 1370
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_ENHANCER_THIRD "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1371
    const/16 v7, 0xf

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1372
    invoke-direct {p0, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1373
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1374
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from DMB function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1378
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "TDMB_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1379
    invoke-direct {p0, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1380
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1381
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1382
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setDMBMode from DMB function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1385
    :cond_b
    if-nez v2, :cond_3

    .line 1386
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "20"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "TDMB_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1387
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_c

    if-eqz v3, :cond_d

    .line 1395
    :cond_c
    :goto_3
    invoke-direct {p0, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1396
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1397
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1398
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setDMBMode from DMB function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1388
    :cond_d
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    if-nez v7, :cond_c

    .line 1389
    const-string/jumbo v7, "DMB_VIDEO_FIRST"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_c

    .line 1390
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->checkHeadUpNotiFirst()V

    .line 1391
    const-string/jumbo v7, "DMB_VIDEO_FIRST"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_3

    .line 1404
    :cond_e
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "15"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1410
    :cond_f
    :goto_4
    const-string/jumbo v7, "HDR_EFFECT"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1404
    :cond_10
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_ENHANCER_THIRD "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 1405
    const/16 v7, 0xf

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1406
    invoke-direct {p0, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1407
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1408
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from DMB function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1419
    :cond_11
    if-nez v4, :cond_3

    .line 1420
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "20"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "TDMB_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1421
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_12

    if-eqz v3, :cond_13

    .line 1429
    :cond_12
    :goto_5
    invoke-direct {p0, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1430
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1431
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1432
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setDMBMode from DMB function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1422
    :cond_13
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    if-nez v7, :cond_12

    .line 1423
    const-string/jumbo v7, "DMB_VIDEO_FIRST"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_12

    .line 1424
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->checkHeadUpNotiFirst()V

    .line 1425
    const-string/jumbo v7, "DMB_VIDEO_FIRST"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_5
.end method

.method private setEbookMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1313
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1321
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1311
    :cond_0
    :goto_1
    return-void

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "eBOOK_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1322
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1323
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1324
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1325
    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setEbookMode from Ebook function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setEmailMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1331
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1339
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    :cond_0
    :goto_1
    return-void

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1339
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "EMAIL_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1340
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1341
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1342
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1343
    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setEmailMode from Email function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setGalleryMode(Z)V
    .locals 5
    .param p1, "mGalleryAppLauncher"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1015
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :goto_0
    if-eqz p1, :cond_3

    .line 1022
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1023
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1029
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    .line 1030
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryModeFirst:Z

    .line 1031
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 1032
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    .line 1013
    :cond_1
    :goto_2
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1023
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "GALLERY_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1024
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1025
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1026
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1027
    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setGalleryMode from Gallery function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1035
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1036
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 1037
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    .line 1038
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 1039
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mQuickViewState:Z

    .line 1040
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    if-nez v1, :cond_4

    .line 1041
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1042
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1043
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1044
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1045
    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setUIMode from Gallery function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1048
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    if-eqz v1, :cond_1

    .line 1049
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    goto :goto_2
.end method

.method private setGameMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1440
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1446
    :goto_0
    const-string/jumbo v1, "LOW"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1447
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1460
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1461
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1463
    const-string/jumbo v1, "OUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1464
    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setUIMode from Game function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :goto_2
    return-void

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1447
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "GAME_LOW_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1448
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto :goto_1

    .line 1449
    :cond_2
    const-string/jumbo v1, "MID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1450
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "12"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "GAME_MID_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1451
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto :goto_1

    .line 1452
    :cond_3
    const-string/jumbo v1, "HIGH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1453
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "GAME_HIGH_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1454
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto :goto_1

    .line 1455
    :cond_4
    const-string/jumbo v1, "OUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1457
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto/16 :goto_1

    .line 1466
    :cond_5
    const-string/jumbo v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGameMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") from Game function"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private setMdnieScenarioMode(I)V
    .locals 3
    .param p1, "scenarioMode"    # I

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1541
    const-string/jumbo v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Calling MdnieManager API(setContentMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_0
    return-void
.end method

.method private setSVideoMode(Z)V
    .locals 14
    .param p1, "mSVideoAppLauncher"    # Z

    .prologue
    const/16 v13, 0xe

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1189
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :goto_0
    if-eqz p1, :cond_15

    .line 1196
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    .line 1197
    .local v0, "currentUserId":I
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_value()I

    move-result v5

    .line 1199
    .local v5, "perfomance_mode":I
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v2

    .line 1200
    .local v2, "hdr_effect_enable":Z
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_pbm_video_enhancer()Z

    move-result v4

    .line 1201
    .local v4, "pbm_video_enhancer":Z
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    .line 1202
    .local v3, "isKnoxMode":Z
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_enabled()Z

    move-result v6

    .line 1204
    .local v6, "perfomance_mode_enabled":Z
    iput-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotGoUI:Z

    .line 1206
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1208
    const-string/jumbo v7, "MdnieScenarioControlService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hdr_effect_enable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , perfomance_mode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , SemFloatingFeature : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , pbm_video_enhancer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    if-eqz v6, :cond_0

    if-nez v5, :cond_5

    .line 1211
    :cond_0
    if-eqz v2, :cond_c

    .line 1212
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_8

    .line 1220
    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_3

    .line 1221
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1244
    :cond_3
    :goto_1
    iput-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 1187
    .end local v0    # "currentUserId":I
    .end local v2    # "hdr_effect_enable":Z
    .end local v3    # "isKnoxMode":Z
    .end local v4    # "pbm_video_enhancer":Z
    .end local v5    # "perfomance_mode":I
    .end local v6    # "perfomance_mode_enabled":Z
    :cond_4
    :goto_2
    return-void

    .line 1191
    :catch_0
    move-exception v1

    .line 1192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1210
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentUserId":I
    .restart local v2    # "hdr_effect_enable":Z
    .restart local v3    # "isKnoxMode":Z
    .restart local v4    # "pbm_video_enhancer":Z
    .restart local v5    # "perfomance_mode":I
    .restart local v6    # "perfomance_mode_enabled":Z
    :cond_5
    if-eq v5, v11, :cond_0

    const/4 v7, 0x3

    if-eq v5, v7, :cond_0

    .line 1245
    if-ne v5, v12, :cond_4

    .line 1246
    if-eqz v4, :cond_12

    .line 1247
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_f

    .line 1255
    :cond_6
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_4

    .line 1256
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1257
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1258
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1259
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1260
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from SVideo function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1213
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "14"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1219
    :cond_9
    :goto_3
    const-string/jumbo v7, "HDR_EFFECT"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_1

    .line 1213
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_ENHANCER "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1214
    invoke-direct {p0, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1215
    invoke-direct {p0, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1216
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1217
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function(VIDEO_ENHANCER)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1221
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1222
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1223
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1224
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1225
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from SVideo function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1228
    :cond_c
    if-nez v2, :cond_3

    .line 1229
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1230
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_d

    if-eqz v3, :cond_e

    .line 1238
    :cond_d
    :goto_4
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1239
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1240
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1241
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from SVideo function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1231
    :cond_e
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    if-nez v7, :cond_d

    .line 1232
    const-string/jumbo v7, "S_VIDEO_FIRST"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_d

    .line 1233
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->checkHeadUpNotiFirst()V

    .line 1234
    const-string/jumbo v7, "S_VIDEO_FIRST"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_4

    .line 1248
    :cond_f
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "14"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1254
    :cond_10
    :goto_5
    const-string/jumbo v7, "HDR_EFFECT"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1248
    :cond_11
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_ENHANCER "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 1249
    invoke-direct {p0, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1250
    invoke-direct {p0, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1251
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1252
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function(VIDEO_ENHANCER)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1263
    :cond_12
    if-nez v4, :cond_4

    .line 1264
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1265
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_13

    if-eqz v3, :cond_14

    .line 1273
    :cond_13
    :goto_6
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1274
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1275
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1276
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from SVideo function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1266
    :cond_14
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    if-nez v7, :cond_13

    .line 1267
    const-string/jumbo v7, "S_VIDEO_FIRST"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_13

    .line 1268
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->checkHeadUpNotiFirst()V

    .line 1269
    const-string/jumbo v7, "S_VIDEO_FIRST"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_6

    .line 1281
    .end local v0    # "currentUserId":I
    .end local v2    # "hdr_effect_enable":Z
    .end local v3    # "isKnoxMode":Z
    .end local v4    # "pbm_video_enhancer":Z
    .end local v5    # "perfomance_mode":I
    .end local v6    # "perfomance_mode_enabled":Z
    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1282
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    if-nez v7, :cond_4

    .line 1283
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "UI_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1284
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1285
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1286
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1287
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setUIMode from SVideo function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private setSVideoOptionMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1295
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1301
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1303
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1293
    :cond_0
    :goto_1
    return-void

    .line 1297
    :catch_0
    move-exception v0

    .line 1298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1303
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "VIDEO_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1304
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1305
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1306
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1307
    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setVideoMode from SVideoOption function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setUIMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 977
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 985
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    if-nez v1, :cond_0

    .line 986
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    :cond_0
    :goto_1
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 986
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v2, "UI_APP "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 987
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 988
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 989
    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 990
    const-string/jumbo v1, "MdnieScenarioControlService"

    const-string/jumbo v2, "setUIMode from UI function"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setVideoMode(Ljava/lang/String;)V
    .locals 14
    .param p1, "videoPackageName"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xf

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1083
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    .line 1090
    .local v0, "currentUserId":I
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_value()I

    move-result v5

    .line 1092
    .local v5, "perfomance_mode":I
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v2

    .line 1093
    .local v2, "hdr_effect_enable":Z
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_pbm_video_enhancer()Z

    move-result v4

    .line 1094
    .local v4, "pbm_video_enhancer":Z
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    .line 1095
    .local v3, "isKnoxMode":Z
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_enabled()Z

    move-result v6

    .line 1097
    .local v6, "perfomance_mode_enabled":Z
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    .line 1099
    const-string/jumbo v7, "MdnieScenarioControlService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hdr_effect_enable : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , perfomance_mode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , SemFloatingFeature : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " , pbm_video_enhancer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    if-eqz v6, :cond_0

    if-nez v5, :cond_4

    .line 1102
    :cond_0
    if-eqz v2, :cond_b

    .line 1103
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_7

    .line 1111
    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_3

    .line 1112
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1184
    :cond_3
    :goto_1
    iput-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    .line 1081
    return-void

    .line 1085
    .end local v0    # "currentUserId":I
    .end local v2    # "hdr_effect_enable":Z
    .end local v3    # "isKnoxMode":Z
    .end local v4    # "pbm_video_enhancer":Z
    .end local v5    # "perfomance_mode":I
    .end local v6    # "perfomance_mode_enabled":Z
    :catch_0
    move-exception v1

    .line 1086
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1101
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentUserId":I
    .restart local v2    # "hdr_effect_enable":Z
    .restart local v3    # "isKnoxMode":Z
    .restart local v4    # "pbm_video_enhancer":Z
    .restart local v5    # "perfomance_mode":I
    .restart local v6    # "perfomance_mode_enabled":Z
    :cond_4
    if-eq v5, v11, :cond_0

    const/4 v7, 0x3

    if-eq v5, v7, :cond_0

    .line 1142
    if-ne v5, v12, :cond_3

    .line 1143
    if-eqz v4, :cond_13

    .line 1144
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_10

    .line 1152
    :cond_5
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v7, :cond_3

    .line 1153
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1154
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1155
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1156
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1157
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1104
    :cond_7
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "15"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1110
    :cond_8
    :goto_2
    const-string/jumbo v7, "HDR_EFFECT"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_1

    .line 1104
    :cond_9
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_ENHANCER_THIRD "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1105
    invoke-direct {p0, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1106
    invoke-direct {p0, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1107
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1108
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1112
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1113
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1114
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1115
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1116
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1119
    :cond_b
    if-nez v2, :cond_3

    .line 1120
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1121
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_c

    if-eqz v3, :cond_d

    .line 1136
    :cond_c
    :goto_3
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1137
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1138
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1139
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1122
    :cond_d
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    if-nez v7, :cond_c

    .line 1123
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_c

    .line 1124
    const-string/jumbo v7, "3RD_VIDEO_SECOND"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e

    .line 1125
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->checkHeadUpNotiFirst()V

    .line 1126
    const-string/jumbo v7, "3RD_VIDEO_FIRST"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_f

    .line 1127
    const-string/jumbo v7, "3RD_VIDEO_FIRST"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    .line 1132
    :cond_e
    :goto_4
    invoke-direct {p0, p1, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_3

    .line 1128
    :cond_f
    const-string/jumbo v7, "3RD_VIDEO_SECOND"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e

    .line 1129
    const-string/jumbo v7, "3RD_VIDEO_SECOND"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_4

    .line 1145
    :cond_10
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "15"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1151
    :cond_11
    :goto_5
    const-string/jumbo v7, "HDR_EFFECT"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1145
    :cond_12
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_ENHANCER_THIRD "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1146
    invoke-direct {p0, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1147
    invoke-direct {p0, v12}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1148
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1149
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1160
    :cond_13
    if-nez v4, :cond_3

    .line 1161
    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string/jumbo v8, "VIDEO_APP "

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1162
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v7, :cond_14

    if-eqz v3, :cond_15

    .line 1177
    :cond_14
    :goto_6
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    .line 1178
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    .line 1179
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    .line 1180
    const-string/jumbo v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1163
    :cond_15
    iget-boolean v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    if-nez v7, :cond_14

    .line 1164
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_14

    .line 1165
    const-string/jumbo v7, "3RD_VIDEO_SECOND"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_16

    .line 1166
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->checkHeadUpNotiFirst()V

    .line 1167
    const-string/jumbo v7, "3RD_VIDEO_FIRST"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_17

    .line 1168
    const-string/jumbo v7, "3RD_VIDEO_FIRST"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    .line 1173
    :cond_16
    :goto_7
    invoke-direct {p0, p1, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_6

    .line 1169
    :cond_17
    const-string/jumbo v7, "3RD_VIDEO_SECOND"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getAppLaunchState(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_16

    .line 1170
    const-string/jumbo v7, "3RD_VIDEO_SECOND"

    invoke-direct {p0, v7, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updateAppLaunchState(Ljava/lang/String;I)V

    goto :goto_7
.end method

.method private setting_is_changed()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 581
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 583
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoModeEnabled:Z

    .line 584
    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    .line 585
    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    .line 586
    const-string/jumbo v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    .line 587
    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    :goto_4
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    .line 589
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-eqz v2, :cond_9

    :cond_0
    move v2, v4

    :goto_5
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    .line 590
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v2, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    .line 592
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    if-eqz v2, :cond_a

    .line 593
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_2

    .line 594
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 596
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :cond_3
    :goto_6
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 580
    :goto_7
    return-void

    :cond_4
    move v2, v4

    .line 583
    goto :goto_0

    :cond_5
    move v2, v4

    .line 584
    goto :goto_1

    :cond_6
    move v2, v4

    .line 585
    goto :goto_2

    :cond_7
    move v2, v4

    .line 586
    goto :goto_3

    :cond_8
    move v3, v4

    .line 587
    goto :goto_4

    .line 589
    :cond_9
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoModeEnabled:Z

    goto :goto_5

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MdnieScenarioControlService"

    const-string/jumbo v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 601
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_3

    .line 602
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_6

    .line 637
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_7
.end method

.method private settingsNotification()V
    .locals 3

    .prologue
    .line 1641
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mStatusbarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mStatusbarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1643
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.settings.HDR_EFFECT_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1644
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1645
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1646
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->cancelNotification()V

    .line 1640
    return-void
.end method

.method private showHdrEffectNotification(Z)V
    .locals 13
    .param p1, "needHeadUpNoti"    # Z

    .prologue
    const v12, 0x1020060

    const v11, 0x102005f

    const v10, 0x10408b0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1580
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x10408af

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1581
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1582
    .local v3, "text":Ljava/lang/CharSequence;
    iput-boolean v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotidficationAlreadyShow:Z

    .line 1583
    if-eqz p1, :cond_1

    .line 1584
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1585
    const v6, 0x1080b05

    .line 1584
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1587
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1584
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1588
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1584
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1590
    const-string/jumbo v6, "NOTIFICATION_REMOVED"

    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1584
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1591
    const-string/jumbo v6, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1584
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1592
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1584
    invoke-virtual {v5, v8, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1593
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NOTIFICATION_DISMISS"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1584
    invoke-virtual {v5, v8, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1594
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 1584
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1595
    const/4 v6, 0x2

    .line 1584
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1596
    const/4 v6, 0x3

    .line 1584
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1598
    .local v0, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1599
    .local v1, "noti":Landroid/app/Notification;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x1090074

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1600
    .local v2, "rv":Landroid/widget/RemoteViews;
    const v5, 0x102005d

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1601
    const v5, 0x102005e

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1602
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x10408b2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1603
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x10408b1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1604
    const-string/jumbo v5, "NOTIFICATION_DISMISS"

    invoke-direct {p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1605
    const-string/jumbo v5, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1606
    iput-object v2, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 1607
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v5, :cond_0

    .line 1608
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    const-string/jumbo v6, "dialog"

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v8, 0x3e7

    invoke-virtual {v5, v6, v8, v1, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1577
    .end local v0    # "nb":Landroid/app/Notification$Builder;
    .end local v1    # "noti":Landroid/app/Notification;
    .end local v2    # "rv":Landroid/widget/RemoteViews;
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    if-nez p1, :cond_0

    .line 1610
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1611
    const v6, 0x1080b05

    .line 1610
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1613
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408af

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1610
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1614
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1610
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1616
    const-string/jumbo v6, "NOTIFICATION_REMOVED"

    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1610
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1617
    const-string/jumbo v6, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1610
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1618
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1610
    invoke-virtual {v5, v8, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1619
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10408b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NOTIFICATION_DISMISS"

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1610
    invoke-virtual {v5, v8, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1620
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    .line 1610
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1621
    const/4 v6, 0x2

    .line 1610
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1623
    .restart local v0    # "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1624
    .restart local v1    # "noti":Landroid/app/Notification;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x1090074

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1625
    .restart local v2    # "rv":Landroid/widget/RemoteViews;
    const v5, 0x102005d

    invoke-virtual {v2, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1626
    const v5, 0x102005e

    invoke-virtual {v2, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1627
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x10408b2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1628
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const v6, 0x10408b1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1629
    const-string/jumbo v5, "NOTIFICATION_DISMISS"

    invoke-direct {p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1630
    const-string/jumbo v5, "NOTIFICATION_SETTINGS"

    invoke-direct {p0, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v12, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1631
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v5, :cond_0

    .line 1632
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNotiManager:Landroid/app/NotificationManager;

    const-string/jumbo v6, "dialog"

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v8, 0x3e7

    invoke-virtual {v5, v6, v8, v1, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private updateAppLaunchState(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "launchState"    # I

    .prologue
    .line 1708
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1709
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "launchstate"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1710
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packagename = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "MSCS_APP_LIST"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    return-void
.end method

.method private writeVideoListInDataBase()V
    .locals 2

    .prologue
    .line 1656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1657
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 1656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1659
    :cond_0
    const-string/jumbo v1, "HDR_EFFECT"

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 1660
    const-string/jumbo v1, "3RD_VIDEO_FIRST"

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 1661
    const-string/jumbo v1, "3RD_VIDEO_SECOND"

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 1662
    const-string/jumbo v1, "S_VIDEO_FIRST"

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 1663
    const-string/jumbo v1, "DMB_VIDEO_FIRST"

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->insertDataUsage(Ljava/lang/String;)V

    .line 1655
    return-void
.end method
