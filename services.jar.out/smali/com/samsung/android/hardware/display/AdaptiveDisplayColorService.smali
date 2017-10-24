.class public Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final APP_MANAGER_NAME:Ljava/lang/String;

.field private final BLUE_LIGHT_FILTER:Ljava/lang/String;

.field private final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EBOOK_NAMES:[Ljava/lang/String;

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final FOREGROUND_THREAD_DELAY_MILLIS:J

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

.field private final MEDIA_PLAYER_NAMES:[Ljava/lang/String;

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_RGB_DEBOUNCE:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final MSG_TERMINATE_VIDEO_MODE:I

.field private final MULTI_SCREEN_DEBOUNCE_MILLIS:J

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCENARIO_FILE_PATH:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private final VIDEO_MODE_DEBOUNCE_MILLIS:J

.field private exitHomeDelay:I

.field private exitHomeDelayTime:J

.field private exitMenuDelay:I

.field private exitMenuDelayTime:J

.field private foregroundDelayTime:J

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBlueFilterEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mDuration:I

.field private mEBookScenarioIntented:Z

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mEnvironmentDisplayColorServiceEnable:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForegroundThreadWork:Z

.field private mGreyScaleModeEnabled:Z

.field private mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPowerSavingEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mSensorEnabled:Z

.field private mSensorHubSupportInterrupt:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumCCT:I

.field private mSumLux:J

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseEnvironmentDisplayColorConfig:Z

.field private mValidZone:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    return p1
.end method

.method static synthetic -set10(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object p1
.end method

.method static synthetic -set7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p1
.end method

.method static synthetic -set8(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/SemMdnieManager;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object p1
.end method

.method static synthetic -set9(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateScrRGB()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateVideoMode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;IIIII)V
    .locals 0
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorEvent(IIIII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setBrowserMode()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setEbookMode()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setVideoMode()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string/jumbo v14, "eng"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    .line 94
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    .line 95
    const/high16 v14, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    .line 97
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_FOREGROUND_APP:I

    .line 98
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RESCAN_FOREGROUND_APP:I

    .line 99
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    .line 100
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    .line 101
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_EBOOK_MODE:I

    .line 102
    const/4 v14, 0x5

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_VIDEO_MODE:I

    .line 103
    const/4 v14, 0x6

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_BROWSER_MODE:I

    .line 104
    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_VIDEO_MODE:I

    .line 105
    const/16 v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_SCR_RGB:I

    .line 106
    const/16 v14, 0x9

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RGB_DEBOUNCE:I

    .line 108
    const/high16 v14, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    .line 109
    const v14, 0x989680

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    .line 110
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    .line 111
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    .line 112
    const/16 v14, 0x24

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    .line 114
    const-wide/16 v14, 0x2710

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    .line 115
    const-wide/16 v14, 0xfa

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    .line 116
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_THREAD_DELAY_MILLIS:J

    .line 117
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->VIDEO_MODE_DEBOUNCE_MILLIS:J

    .line 118
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_MODE_DEBOUNCE_MILLIS:J

    .line 119
    const-wide/16 v14, 0x2bc

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MULTI_SCREEN_DEBOUNCE_MILLIS:J

    .line 120
    const-wide/16 v14, 0x3e8

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    .line 122
    const-string/jumbo v14, "screen_mode_automatic_setting"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 123
    const-string/jumbo v14, "screen_mode_setting"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 124
    const-string/jumbo v14, "blue_light_filter"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BLUE_LIGHT_FILTER:Ljava/lang/String;

    .line 125
    const-string/jumbo v14, "1"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

    .line 126
    const-string/jumbo v14, "8"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    .line 127
    const-string/jumbo v14, "9"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    .line 129
    const-string/jumbo v14, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    .line 130
    const-string/jumbo v14, "/sys/class/mdnie/mdnie/scenario"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCENARIO_FILE_PATH:Ljava/lang/String;

    .line 131
    const-string/jumbo v14, "/sys/class/sensors/light_sensor/raw_data"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    .line 132
    const-string/jumbo v14, "com.sec.android.app.SecSetupWizard"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    .line 133
    const-string/jumbo v14, "com.android.systemui"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->APP_MANAGER_NAME:Ljava/lang/String;

    .line 134
    const-string/jumbo v14, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    .line 135
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    .line 136
    const-string/jumbo v15, "com.google.android.apps.books"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 135
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    .line 139
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    .line 140
    const-string/jumbo v15, "com.sec.android.app.sbrowser"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 141
    const-string/jumbo v15, "com.android.chrome"

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 139
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    .line 144
    const/16 v14, 0x9

    new-array v14, v14, [Ljava/lang/String;

    .line 145
    const-string/jumbo v15, "com.zgz.supervideo"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    .line 146
    const-string/jumbo v15, "com.kmplayer"

    const/16 v16, 0x1

    aput-object v15, v14, v16

    .line 147
    const-string/jumbo v15, "com.pg.gom"

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 148
    const-string/jumbo v15, "com.gretech.gomplayer"

    const/16 v16, 0x3

    aput-object v15, v14, v16

    .line 149
    const-string/jumbo v15, "com.mxtech.videoplayer"

    const/16 v16, 0x4

    aput-object v15, v14, v16

    .line 150
    const-string/jumbo v15, "com.nhn.android.naverplayer"

    const/16 v16, 0x5

    aput-object v15, v14, v16

    .line 151
    const-string/jumbo v15, "com.inisoft.mediaplayer"

    const/16 v16, 0x6

    aput-object v15, v14, v16

    .line 152
    const-string/jumbo v15, "com.google.android.youtube"

    const/16 v16, 0x7

    aput-object v15, v14, v16

    .line 153
    const-string/jumbo v15, "com.google.android.videos"

    const/16 v16, 0x8

    aput-object v15, v14, v16

    .line 144
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    .line 158
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 159
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 160
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 161
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    .line 162
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 163
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 169
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 170
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 171
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 174
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    .line 175
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 176
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 177
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 178
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    .line 179
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    .line 180
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    .line 182
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    .line 184
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    .line 185
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 186
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 187
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 188
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 189
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    .line 190
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    .line 191
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 192
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 193
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 195
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 196
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    .line 197
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mGreyScaleModeEnabled:Z

    .line 199
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenMode:I

    .line 201
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 203
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 211
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    .line 212
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    .line 213
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    .line 220
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 221
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 222
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 223
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 224
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 225
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 226
    const v14, 0x3d8f5c29    # 0.07f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    .line 228
    const/16 v14, 0x23

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    .line 230
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 231
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    .line 233
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 234
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 235
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 237
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 238
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 239
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 241
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 242
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 243
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 245
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 246
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 247
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 249
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 250
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 251
    const/16 v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 253
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    .line 254
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    .line 255
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    .line 257
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 258
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 259
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 261
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 263
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 267
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 269
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 271
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 441
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 636
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    .line 666
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 685
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 274
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    .line 276
    new-instance v14, Landroid/os/HandlerThread;

    const-string/jumbo v15, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v14, v15}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    .line 278
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 281
    const v15, 0x11200d1

    .line 280
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 285
    const v15, 0x11200d2

    .line 284
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 287
    const-string/jumbo v14, "AdaptiveDisplayColorService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mUseEnvironmentDisplayColorConfig : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mUseEnvironmentDisplayColorConfig : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 293
    .local v12, "resolver":Landroid/content/ContentResolver;
    new-instance v14, Lcom/samsung/android/cover/CoverManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 296
    const-string/jumbo v14, "lcd_curtain"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    .line 295
    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    const-string/jumbo v14, "high_contrast"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    .line 297
    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    const-string/jumbo v14, "color_blind"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    .line 299
    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    const-string/jumbo v14, "psm_switch"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    .line 305
    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 309
    const-string/jumbo v14, "ultra_powersaving_mode"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    .line 308
    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 311
    const-string/jumbo v14, "screen_mode_automatic_setting"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    .line 310
    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 313
    const-string/jumbo v14, "blue_light_filter"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    const/16 v16, 0x0

    .line 312
    move/from16 v0, v16

    invoke-virtual {v12, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 315
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 316
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v14, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string/jumbo v14, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v15, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;)V

    invoke-virtual {v14, v15, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "activity"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    .line 324
    const/4 v11, 0x0

    .line 325
    .local v11, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 326
    .local v11, "pm":Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_1

    .line 327
    const-string/jumbo v14, "com.sec.feature.sensorhub"

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string/jumbo v14, "com.sec.feature.scontext_lite"

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 328
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "scontext"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/scontext/SContextManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v14, :cond_1

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v15, 0x2c

    invoke-virtual {v14, v15}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    .line 336
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v14, :cond_2

    .line 337
    new-instance v14, Landroid/hardware/SystemSensorManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v14, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107008b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 343
    .local v2, "adj_rgb":[I
    const/4 v14, 0x0

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 344
    const/4 v14, 0x1

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 345
    const/4 v14, 0x2

    aget v14, v2, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107008c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    .line 348
    .local v13, "test_rgb":[I
    const/4 v14, 0x0

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    .line 349
    const/4 v14, 0x1

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    .line 350
    const/4 v14, 0x2

    aget v14, v13, v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00bb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 353
    .local v7, "foregroundDelay":I
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    .line 354
    if-eqz v7, :cond_3

    .line 355
    int-to-long v14, v7

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    .line 357
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00bc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 358
    .local v5, "exitHomeDelay":I
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    .line 359
    if-eqz v5, :cond_4

    .line 360
    int-to-long v14, v5

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    .line 362
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e00bd

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 363
    .local v6, "exitMenuDelay":I
    const-wide/16 v14, 0x2bc

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    .line 364
    if-eqz v6, :cond_5

    .line 365
    int-to-long v14, v6

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    .line 367
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x107008d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "coefficientStringArray":[Ljava/lang/String;
    const/16 v14, 0x24

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    .line 371
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v14, v3

    if-ge v8, v14, :cond_6

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v15, v3, v8

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v14, v8

    .line 371
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 375
    :cond_6
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 376
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 378
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 379
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 380
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/lit16 v14, v14, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 383
    .end local v2    # "adj_rgb":[I
    .end local v3    # "coefficientStringArray":[Ljava/lang/String;
    .end local v5    # "exitHomeDelay":I
    .end local v6    # "exitMenuDelay":I
    .end local v7    # "foregroundDelay":I
    .end local v8    # "i":I
    .end local v13    # "test_rgb":[I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    .line 386
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    .line 387
    .local v10, "mIActivityManager":Landroid/app/IActivityManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v10, v14}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v10    # "mIActivityManager":Landroid/app/IActivityManager;
    :cond_8
    :goto_1
    return-void

    .line 388
    :catch_0
    move-exception v4

    .line 389
    .local v4, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v14, :cond_8

    .line 390
    const-string/jumbo v14, "AdaptiveDisplayColorService"

    const-string/jumbo v15, "failed to registerProcessObserver"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private animateScrRGB()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/high16 v12, 0x41a00000    # 20.0f

    const/16 v11, 0xff

    .line 1239
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v4

    .line 1240
    .local v4, "state":I
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 1242
    if-lez v4, :cond_1

    .line 1244
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    const/16 v10, 0x14

    if-ne v7, v10, :cond_3

    .line 1246
    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1247
    .local v3, "r":I
    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1248
    .local v1, "g":I
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 1250
    .local v0, "b":I
    if-lez v3, :cond_1

    if-gt v3, v11, :cond_1

    if-lez v1, :cond_1

    if-gt v1, v11, :cond_1

    if-lez v0, :cond_1

    if-gt v0, v11, :cond_1

    .line 1251
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v7, :cond_0

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-eq v1, v7, :cond_2

    .line 1252
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1253
    .local v6, "str":Ljava/lang/String;
    const-string/jumbo v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1257
    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1258
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1237
    .end local v0    # "b":I
    .end local v1    # "g":I
    .end local v3    # "r":I
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1251
    .restart local v0    # "b":I
    .restart local v1    # "g":I
    .restart local v3    # "r":I
    :cond_2
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v7, :cond_1

    goto :goto_0

    .line 1264
    .end local v0    # "b":I
    .end local v1    # "g":I
    .end local v3    # "r":I
    :cond_3
    const/4 v2, 0x0

    .line 1265
    .local v2, "gap":I
    const/4 v5, 0x0

    .line 1266
    .local v5, "step":F
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int v2, v7, v10

    .line 1267
    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    .line 1268
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    float-to-int v10, v5

    add-int v3, v7, v10

    .line 1270
    .restart local v3    # "r":I
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int v2, v7, v10

    .line 1271
    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    .line 1272
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    float-to-int v10, v5

    add-int v1, v7, v10

    .line 1274
    .restart local v1    # "g":I
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int v2, v7, v10

    .line 1275
    int-to-float v7, v2

    div-float/2addr v7, v12

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    int-to-float v10, v10

    mul-float v5, v7, v10

    .line 1276
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    float-to-int v10, v5

    add-int v0, v7, v10

    .line 1278
    .restart local v0    # "b":I
    if-lez v3, :cond_5

    if-gt v3, v11, :cond_5

    if-lez v1, :cond_5

    if-gt v1, v11, :cond_5

    if-lez v0, :cond_5

    if-gt v0, v11, :cond_5

    .line 1279
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v3, v7, :cond_4

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-eq v1, v7, :cond_6

    .line 1280
    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1281
    .restart local v6    # "str":Ljava/lang/String;
    const-string/jumbo v7, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {p0, v7, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1285
    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1286
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1290
    .end local v6    # "str":Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1291
    .local v8, "time":J
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v13}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 1292
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v10, 0xfa

    add-long/2addr v10, v8

    invoke-virtual {v7, v13, v10, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1

    .line 1279
    .end local v8    # "time":J
    :cond_6
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v0, v7, :cond_5

    goto :goto_2
.end method

.method private enableRgbSensor(Z)V
    .locals 11
    .param p1, "enable"    # Z

    .prologue
    const/16 v10, 0x2c

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/16 v7, 0xff

    .line 590
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    .local v1, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 592
    .local v3, "white_scr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 593
    const-string/jumbo v4, "AdaptiveDisplayColorService"

    const-string/jumbo v5, "StatFs returns null."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 596
    const-string/jumbo v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableRgbSensor : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1
    if-eqz p1, :cond_4

    .line 599
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    add-int/2addr v4, v5

    int-to-float v2, v4

    .line 600
    .local v2, "sum":F
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 601
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 602
    iput v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 603
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 604
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 605
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 606
    iput v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 607
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v4, :cond_3

    .line 608
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v4, :cond_2

    .line 609
    new-instance v0, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;

    .line 610
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    .line 609
    invoke-direct {v0, v4, v5}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;-><init>(FI)V

    .line 611
    .local v0, "environmentAdaptiveDisplayAttribute":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v4, v5, v10}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 633
    .end local v0    # "environmentAdaptiveDisplayAttribute":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;
    .end local v2    # "sum":F
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 589
    return-void

    .line 614
    .restart local v2    # "sum":F
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_2

    .line 615
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v4, v5, v6, v9, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 618
    .end local v2    # "sum":F
    :cond_4
    iput v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 619
    iput v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 620
    iput v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 621
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 622
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v4, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 623
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 624
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 625
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v4, :cond_5

    .line 626
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v4, :cond_2

    .line 627
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v4, v5, v10}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_0

    .line 629
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v4, :cond_2

    .line 630
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1328
    const/4 v3, 0x0

    .line 1329
    .local v3, "out":Ljava/io/FileOutputStream;
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1330
    const-string/jumbo v5, "AdaptiveDisplayColorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileWriteString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1340
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1341
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 1327
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1335
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string/jumbo v5, "AdaptiveDisplayColorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fileWriteString : file not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1337
    return-void

    .line 1342
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 1343
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1345
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1346
    :catch_2
    move-exception v2

    .line 1347
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1342
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private getRgbFromLightSensor()V
    .locals 7

    .prologue
    .line 800
    const/4 v2, 0x0

    .line 802
    .local v2, "raw":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "raw":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 804
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 806
    .local v3, "rawDatas":[Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_1
    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    .line 807
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    .line 808
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    .line 809
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 799
    .end local v2    # "raw":Ljava/lang/String;
    .end local v3    # "rawDatas":[Ljava/lang/String;
    :goto_0
    return-void

    .line 810
    .restart local v2    # "raw":Ljava/lang/String;
    .restart local v3    # "rawDatas":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string/jumbo v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 817
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "raw":Ljava/lang/String;
    .end local v3    # "rawDatas":[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 818
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 816
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raw":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x80

    const/4 v11, 0x0

    .line 823
    const/4 v6, 0x0

    .line 824
    .local v6, "in":Ljava/io/InputStream;
    const/16 v0, 0x80

    .line 825
    .local v0, "MAX_BUFFER_SIZE":I
    new-array v1, v12, [B

    .line 826
    .local v1, "buffer":[B
    const/4 v9, 0x0

    .line 827
    .local v9, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .line 829
    .local v8, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v12, :cond_0

    .line 830
    aput-byte v11, v1, v5

    .line 829
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 833
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    .end local v6    # "in":Ljava/io/InputStream;
    .local v7, "in":Ljava/io/InputStream;
    if-eqz v7, :cond_2

    .line 835
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 836
    if-eqz v8, :cond_1

    .line 837
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v11, v8, -0x1

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v13, 0x0

    invoke-direct {v10, v1, v13, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .local v10, "value":Ljava/lang/String;
    move-object v9, v10

    .line 839
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 848
    :cond_2
    if-eqz v7, :cond_3

    .line 850
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move-object v6, v7

    .line 856
    .end local v7    # "in":Ljava/io/InputStream;
    :cond_4
    :goto_2
    return-object v9

    .line 851
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 852
    .local v3, "ee":Ljava/io/IOException;
    const-string/jumbo v11, "AdaptiveDisplayColorService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 844
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 845
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "value":Ljava/lang/String;
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 846
    const-string/jumbo v11, "AdaptiveDisplayColorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 848
    if-eqz v6, :cond_4

    .line 850
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 851
    :catch_2
    move-exception v3

    .line 852
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string/jumbo v11, "AdaptiveDisplayColorService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 841
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ee":Ljava/io/IOException;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v9    # "value":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 843
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v9    # "value":Ljava/lang/String;
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string/jumbo v11, "AdaptiveDisplayColorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FileNotFoundException : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 848
    if-eqz v6, :cond_4

    .line 850
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 851
    :catch_4
    move-exception v3

    .line 852
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string/jumbo v11, "AdaptiveDisplayColorService"

    const-string/jumbo v12, "File Close error"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 847
    .end local v3    # "ee":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    .line 848
    :goto_5
    if-eqz v6, :cond_5

    .line 850
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 847
    :cond_5
    :goto_6
    throw v11

    .line 851
    :catch_5
    move-exception v3

    .line 852
    .restart local v3    # "ee":Ljava/io/IOException;
    const-string/jumbo v12, "AdaptiveDisplayColorService"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 847
    .end local v3    # "ee":Ljava/io/IOException;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .local v6, "in":Ljava/io/InputStream;
    goto :goto_5

    .line 841
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v4

    .restart local v4    # "ex":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 844
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "in":Ljava/io/InputStream;
    .restart local v6    # "in":Ljava/io/InputStream;
    goto :goto_3
.end method

.method private handleRgbSensorEvent(IIIII)V
    .locals 7
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    const/16 v6, 0x9

    .line 860
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    .line 861
    .local v0, "isInControlZone":I
    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v1, v0, :cond_0

    .line 862
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 863
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 864
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 867
    :cond_0
    if-lez v0, :cond_2

    .line 868
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v1, :cond_3

    .line 869
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_1

    .line 870
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v5, 0x2c

    invoke-virtual {v1, v4, v5}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 876
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorValue(IIIII)V

    .line 878
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v1, :cond_2

    .line 879
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 880
    .local v2, "time":J
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 881
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v1, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 882
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v4, 0x2710

    add-long/2addr v4, v2

    invoke-virtual {v1, v6, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 859
    .end local v2    # "time":J
    :cond_2
    return-void

    .line 872
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    .line 873
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private handleRgbSensorValue(IIIII)V
    .locals 10
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 958
    add-int v6, p1, p2

    add-int v3, v6, p3

    .line 959
    .local v3, "sumRGB":I
    const/4 v2, 0x0

    .local v2, "ratioR":F
    const/4 v1, 0x0

    .local v1, "ratioG":F
    const/4 v0, 0x0

    .line 961
    .local v0, "ratioB":F
    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    .line 962
    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 963
    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 965
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 967
    :cond_0
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    if-lez v6, :cond_2

    .line 968
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 969
    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 970
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 971
    int-to-long v6, p4

    iput-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 972
    iput p5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    .line 973
    iput v9, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 975
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 976
    .local v4, "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 977
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 957
    .end local v4    # "time":J
    :goto_0
    return-void

    .line 965
    :cond_1
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 984
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 985
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 986
    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 987
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 988
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v6, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_0

    .line 980
    :cond_2
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    goto :goto_0
.end method

.method private initRgbAverage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 900
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 901
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 902
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    .line 903
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 904
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 899
    return-void
.end method

.method private isInBoundary()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 889
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    if-eqz v0, :cond_0

    .line 890
    return v1

    .line 891
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v0, :cond_1

    .line 892
    const/4 v0, 0x2

    return v0

    .line 893
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_2

    .line 894
    const/4 v0, 0x1

    return v0

    .line 896
    :cond_2
    return v1
.end method

.method private max_num(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1380
    if-lt p1, p2, :cond_0

    .line 1381
    return p1

    .line 1383
    :cond_0
    return p2
.end method

.method private min_num(II)I
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 1372
    if-ge p1, p2, :cond_0

    .line 1373
    return p1

    .line 1375
    :cond_0
    return p2
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;II)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 694
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    if-eqz v6, :cond_2

    .line 705
    const/4 v1, 0x0

    .line 706
    .local v1, "isBrowser":Z
    const/4 v2, 0x0

    .line 707
    .local v2, "isReading":Z
    const/4 v3, 0x0

    .line 709
    .local v3, "isVideo":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_0

    .line 710
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 711
    const/4 v3, 0x1

    .line 716
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_6

    .line 717
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 718
    const/4 v1, 0x1

    .line 716
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 695
    .end local v0    # "i":I
    .end local v1    # "isBrowser":Z
    .end local v2    # "isReading":Z
    .end local v3    # "isVideo":Z
    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_4

    .line 696
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 697
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_3

    .line 698
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 699
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 700
    .local v4, "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 701
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 692
    .end local v4    # "time":J
    :cond_4
    :goto_2
    return-void

    .line 709
    .restart local v0    # "i":I
    .restart local v1    # "isBrowser":Z
    .restart local v2    # "isReading":Z
    .restart local v3    # "isVideo":Z
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_8

    .line 723
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 724
    const/4 v2, 0x1

    .line 722
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 728
    :cond_8
    if-eqz v2, :cond_d

    .line 729
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_4

    .line 730
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 731
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    :goto_4
    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 732
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_c

    .line 735
    :cond_9
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 736
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 737
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr v8, v4

    const/4 v7, 0x4

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_2

    .line 731
    .end local v4    # "time":J
    :cond_a
    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    .line 733
    :cond_c
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_5

    .line 740
    :cond_d
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v6, :cond_f

    .line 741
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 742
    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 744
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 745
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 751
    :goto_6
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_4

    .line 752
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_2

    .line 747
    .end local v4    # "time":J
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 748
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 749
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_6

    .line 754
    .end local v4    # "time":J
    :cond_f
    if-eqz v3, :cond_10

    .line 755
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-nez v6, :cond_4

    .line 756
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 758
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 759
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, v4

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_2

    .line 761
    .end local v4    # "time":J
    :cond_10
    if-eqz v1, :cond_15

    .line 762
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez v6, :cond_4

    .line 763
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 764
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v6, :cond_13

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v6, :cond_12

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    :goto_7
    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 766
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    if-eqz v6, :cond_11

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_14

    .line 769
    :cond_11
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 770
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 771
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr v8, v4

    const/4 v7, 0x6

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_2

    .line 764
    .end local v4    # "time":J
    :cond_12
    const/4 v6, 0x1

    goto :goto_7

    :cond_13
    const/4 v6, 0x0

    goto :goto_7

    .line 767
    :cond_14
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_8

    .line 774
    :cond_15
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-eqz v6, :cond_17

    .line 775
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 776
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 777
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 778
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 791
    .end local v4    # "time":J
    :cond_16
    :goto_9
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v6, :cond_4

    .line 792
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_2

    .line 779
    :cond_17
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v6, :cond_16

    .line 780
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 781
    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 783
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 784
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_9

    .line 786
    .end local v4    # "time":J
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 787
    .restart local v4    # "time":J
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 788
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v4

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_9
.end method

.method private receive_multi_window_on_intent()V
    .locals 5

    .prologue
    .line 524
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v1, :cond_0

    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 529
    const-string/jumbo v1, "AdaptiveDisplayColorService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private receive_screen_off_intent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 549
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 550
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 551
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 548
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 550
    goto :goto_0
.end method

.method private receive_screen_on_intent()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 536
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 537
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 538
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 540
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 543
    const-string/jumbo v1, "AdaptiveDisplayColorService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendForcedRGB(IIIII)V
    .locals 4
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    .line 908
    add-int v1, p1, p2

    add-int v0, v1, p3

    .line 910
    .local v0, "sumRGB":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 911
    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 912
    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 913
    int-to-long v2, p4

    iput-wide v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 914
    iput p5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    .line 915
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 917
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    .line 907
    return-void
.end method

.method private sendRgbAverage()V
    .locals 38

    .prologue
    .line 1045
    const/16 v27, 0x0

    .local v27, "scrR":I
    const/16 v26, 0x0

    .local v26, "scrG":I
    const/16 v24, 0x0

    .line 1046
    .local v24, "scrB":I
    const/16 v23, 0x0

    .local v23, "scr400LuxR":I
    const/16 v22, 0x0

    .local v22, "scr400LuxG":I
    const/16 v21, 0x0

    .line 1048
    .local v21, "scr400LuxB":I
    const/4 v6, 0x0

    .local v6, "adjustR":I
    const/4 v5, 0x0

    .local v5, "adjustG":I
    const/4 v4, 0x0

    .line 1049
    .local v4, "adjustB":I
    const-wide/16 v12, 0x1

    .local v12, "count_l":J
    const-wide/16 v8, 0x0

    .local v8, "avgLux":J
    const-wide/16 v18, 0x0

    .line 1051
    .local v18, "luxValue":J
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 1052
    .local v15, "isEbookmode":Z
    const/16 v32, 0x0

    .line 1054
    .local v32, "white_scr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    move/from16 v33, v0

    if-lez v33, :cond_7

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 1055
    .local v10, "count":I
    :goto_0
    int-to-long v12, v10

    .line 1056
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v20, v33, v34

    .line 1057
    .local v20, "r":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v14, v33, v34

    .line 1058
    .local v14, "g":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    move/from16 v33, v0

    int-to-float v0, v10

    move/from16 v34, v0

    div-float v7, v33, v34

    .line 1059
    .local v7, "b":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 1060
    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 1061
    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 1062
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    move-wide/from16 v34, v0

    div-long v8, v34, v12

    .line 1064
    const-string/jumbo v33, "AdaptiveDisplayColorService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "AvgR : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", AvgG : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", AvgB : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", avg lux : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 1069
    :try_start_0
    const-string/jumbo v33, "/sys/class/mdnie/mdnie/sensorRGB"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1070
    .local v32, "white_scr":Ljava/lang/String;
    if-eqz v32, :cond_0

    .line 1071
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1072
    .local v25, "scrDatas":[Ljava/lang/String;
    const/16 v33, 0x0

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1073
    const/16 v33, 0x1

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1074
    const/16 v33, 0x2

    aget-object v33, v25, v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    .end local v25    # "scrDatas":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1

    .line 1080
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1081
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1082
    .end local v32    # "white_scr":Ljava/lang/String;
    :goto_1
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 1086
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_2

    .line 1087
    if-eqz v15, :cond_9

    .line 1088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1090
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1096
    :goto_2
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 1099
    :cond_2
    move-wide/from16 v18, v8

    .line 1100
    const/16 v16, -0x1

    .line 1102
    .local v16, "log2Lux":I
    const-wide/16 v34, 0x4

    cmp-long v33, v8, v34

    if-ltz v33, :cond_3

    const-wide/16 v34, 0x3e8

    cmp-long v33, v8, v34

    if-lez v33, :cond_a

    .line 1103
    :cond_3
    if-eqz v15, :cond_b

    .line 1104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v27, v0

    .line 1105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v26, v0

    .line 1106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v24, v0

    .line 1218
    :goto_3
    if-eqz v27, :cond_6

    if-eqz v26, :cond_6

    if-eqz v24, :cond_6

    .line 1220
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1221
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1222
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 1223
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 1225
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    move/from16 v33, v0

    if-eqz v33, :cond_4

    .line 1226
    const-string/jumbo v33, "AdaptiveDisplayColorService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "scrR : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", scrG : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v35, ", scrB : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v27

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v26

    move/from16 v1, v33

    if-eq v0, v1, :cond_14

    .line 1229
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 1230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 1231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 1232
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    .line 1043
    :cond_6
    return-void

    .line 1054
    .end local v7    # "b":F
    .end local v10    # "count":I
    .end local v14    # "g":F
    .end local v16    # "log2Lux":I
    .end local v20    # "r":F
    .local v32, "white_scr":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1076
    .end local v32    # "white_scr":Ljava/lang/String;
    .restart local v7    # "b":F
    .restart local v10    # "count":I
    .restart local v14    # "g":F
    .restart local v20    # "r":F
    :catch_0
    move-exception v11

    .line 1077
    .local v11, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1

    .line 1080
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1081
    const/16 v33, 0xff

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    goto/16 :goto_1

    .line 1078
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v33

    .line 1079
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    .line 1080
    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1081
    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1082
    const/16 v34, 0xff

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 1078
    :cond_8
    throw v33

    .line 1092
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1093
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1094
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    goto/16 :goto_2

    .line 1102
    .restart local v16    # "log2Lux":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v33, v34, v36

    if-ltz v33, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v33, v34, v36

    if-ltz v33, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v33, v34, v36

    if-ltz v33, :cond_3

    .line 1114
    :goto_5
    const-wide/16 v34, 0x0

    cmp-long v33, v18, v34

    if-eqz v33, :cond_c

    .line 1115
    const/16 v33, 0x1

    shr-long v18, v18, v33

    .line 1116
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1108
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v27, v0

    .line 1109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v26, v0

    .line 1110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v24, v0

    goto/16 :goto_3

    .line 1119
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v33, v0

    if-nez v33, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_13

    .line 1120
    :cond_d
    if-eqz v15, :cond_e

    .line 1121
    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 1122
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 1123
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 1130
    :goto_6
    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v20

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    move/from16 v34, v0

    div-int v31, v33, v34

    .line 1131
    .local v31, "testR":I
    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v14

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    move/from16 v34, v0

    div-int v30, v33, v34

    .line 1132
    .local v30, "testG":I
    const v33, 0x4b189680    # 1.0E7f

    mul-float v33, v33, v7

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    move/from16 v34, v0

    div-int v29, v33, v34

    .line 1134
    .local v29, "testB":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v17

    .line 1135
    .local v17, "maxValue":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v17

    .line 1137
    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    .line 1138
    const/16 v27, 0xff

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x2

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x3

    aget v34, v34, v35

    mul-float v34, v34, v14

    .line 1140
    add-float v33, v33, v34

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x4

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v14

    .line 1140
    add-float v33, v33, v34

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x5

    aget v34, v34, v35

    .line 1140
    add-float v28, v33, v34

    .line 1142
    .local v28, "temp":F
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1143
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x6

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x7

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x8

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x9

    aget v34, v34, v35

    mul-float v34, v34, v7

    .line 1145
    add-float v33, v33, v34

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xa

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v7

    .line 1145
    add-float v33, v33, v34

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xb

    aget v34, v34, v35

    .line 1145
    add-float v28, v33, v34

    .line 1147
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1148
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    .line 1177
    :goto_7
    add-int v23, v27, v6

    .line 1178
    add-int v22, v26, v5

    .line 1179
    add-int v21, v24, v4

    .line 1181
    const-wide/16 v34, 0x190

    cmp-long v33, v8, v34

    if-gez v33, :cond_12

    .line 1183
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_11

    .line 1184
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v23

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v27, v33, 0x8

    .line 1185
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    .line 1187
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v22

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v26, v33, 0x8

    .line 1188
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    .line 1190
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v21

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v24, v33, 0x8

    .line 1191
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    goto/16 :goto_3

    .line 1125
    .end local v17    # "maxValue":I
    .end local v28    # "temp":F
    .end local v29    # "testB":I
    .end local v30    # "testG":I
    .end local v31    # "testR":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v6, v0, -0xff

    .line 1126
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v5, v0, -0xff

    .line 1127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v33, v0

    move/from16 v0, v33

    add-int/lit16 v4, v0, -0xff

    goto/16 :goto_6

    .line 1150
    .restart local v17    # "maxValue":I
    .restart local v29    # "testB":I
    .restart local v30    # "testG":I
    .restart local v31    # "testR":I
    :cond_f
    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0xc

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xd

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xe

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0xf

    aget v34, v34, v35

    mul-float v34, v34, v7

    .line 1151
    add-float v33, v33, v34

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x10

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v7

    .line 1151
    add-float v33, v33, v34

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x11

    aget v34, v34, v35

    .line 1151
    add-float v28, v33, v34

    .line 1153
    .restart local v28    # "temp":F
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1154
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x12

    aget v33, v33, v34

    mul-float v33, v33, v14

    mul-float v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x13

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x14

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x15

    aget v34, v34, v35

    mul-float v34, v34, v7

    .line 1156
    add-float v33, v33, v34

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x16

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v7

    .line 1156
    add-float v33, v33, v34

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x17

    aget v34, v34, v35

    .line 1156
    add-float v28, v33, v34

    .line 1158
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1159
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    .line 1161
    const/16 v24, 0xff

    goto/16 :goto_7

    .line 1164
    .end local v28    # "temp":F
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x18

    aget v33, v33, v34

    mul-float v33, v33, v20

    mul-float v33, v33, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x19

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v14

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1a

    aget v34, v34, v35

    mul-float v34, v34, v20

    add-float v33, v33, v34

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1b

    aget v34, v34, v35

    mul-float v34, v34, v14

    .line 1164
    add-float v33, v33, v34

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1c

    aget v34, v34, v35

    mul-float v34, v34, v20

    mul-float v34, v34, v14

    .line 1164
    add-float v33, v33, v34

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1d

    aget v34, v34, v35

    .line 1164
    add-float v28, v33, v34

    .line 1166
    .restart local v28    # "temp":F
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1167
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    .line 1169
    const/16 v26, 0xff

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v33, v0

    const/16 v34, 0x1e

    aget v33, v33, v34

    mul-float v33, v33, v14

    mul-float v33, v33, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x1f

    aget v34, v34, v35

    mul-float v34, v34, v7

    mul-float v34, v34, v7

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x20

    aget v34, v34, v35

    mul-float v34, v34, v14

    add-float v33, v33, v34

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x21

    aget v34, v34, v35

    mul-float v34, v34, v7

    .line 1171
    add-float v33, v33, v34

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x22

    aget v34, v34, v35

    mul-float v34, v34, v14

    mul-float v34, v34, v7

    .line 1171
    add-float v33, v33, v34

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    move-object/from16 v34, v0

    const/16 v35, 0x23

    aget v34, v34, v35

    .line 1171
    add-float v28, v33, v34

    .line 1173
    const/high16 v33, 0x437f0000    # 255.0f

    mul-float v33, v33, v28

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1174
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    goto/16 :goto_7

    .line 1193
    :cond_11
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v23

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v27, v33, 0x8

    .line 1194
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v27

    .line 1196
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v22

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v26, v33, 0x8

    .line 1197
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v26

    .line 1199
    rsub-int/lit8 v33, v16, 0x8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    mul-int v34, v16, v21

    add-int v33, v33, v34

    add-int/lit8 v33, v33, 0x4

    div-int/lit8 v24, v33, 0x8

    .line 1200
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v33

    const/16 v34, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v24

    goto/16 :goto_3

    .line 1205
    :cond_12
    move/from16 v27, v23

    .line 1206
    move/from16 v26, v22

    .line 1207
    move/from16 v24, v21

    goto/16 :goto_3

    .line 1212
    .end local v17    # "maxValue":I
    .end local v28    # "temp":F
    .end local v29    # "testB":I
    .end local v30    # "testG":I
    .end local v31    # "testR":I
    :cond_13
    const/16 v27, 0x0

    .line 1213
    const/16 v26, 0x0

    .line 1214
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 1228
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    move/from16 v33, v0

    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_6

    goto/16 :goto_4
.end method

.method private setAverageValue(IIIII)V
    .locals 10
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I
    .param p5, "cct"    # I

    .prologue
    .line 921
    add-int v6, p1, p2

    add-int v3, v6, p3

    .line 922
    .local v3, "sumRGB":I
    const/4 v2, 0x0

    .local v2, "ratioR":F
    const/4 v1, 0x0

    .local v1, "ratioG":F
    const/4 v0, 0x0

    .line 924
    .local v0, "ratioB":F
    int-to-float v6, p1

    int-to-float v7, v3

    div-float v2, v6, v7

    .line 925
    int-to-float v6, p2

    int-to-float v7, v3

    div-float v1, v6, v7

    .line 926
    int-to-float v6, p3

    int-to-float v7, v3

    div-float v0, v6, v7

    .line 928
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 929
    :cond_0
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v6, v2

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 930
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v6, v1

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 931
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v6, v0

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 932
    iget-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    int-to-long v8, p4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 933
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    add-int/2addr v6, p5

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumCCT:I

    .line 934
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 936
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v7, 0x14

    if-lt v6, v7, :cond_1

    .line 937
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 938
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 939
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 941
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 944
    :cond_1
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez v6, :cond_2

    .line 945
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 946
    .local v4, "time":J
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 947
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 948
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v8, 0x2710

    add-long/2addr v8, v4

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 920
    .end local v4    # "time":J
    :cond_2
    :goto_0
    return-void

    .line 928
    :cond_3
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 952
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 953
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method private setBrowserMode()V
    .locals 2

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1309
    :cond_0
    return-void
.end method

.method private setEbookMode()V
    .locals 2

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1297
    :cond_0
    return-void
.end method

.method private setVideoMode()V
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1303
    :cond_0
    return-void
.end method

.method private setting_is_changed()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 557
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 559
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "lcd_curtain"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 560
    const-string/jumbo v2, "high_contrast"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 561
    const-string/jumbo v2, "color_blind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 565
    const-string/jumbo v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    .line 567
    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    .line 568
    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_9

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 569
    const-string/jumbo v2, "blue_light_filter"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_a

    :goto_6
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    .line 570
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-eqz v2, :cond_b

    :cond_0
    move v2, v4

    :goto_7
    iput-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 571
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v2, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 573
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v2, :cond_c

    .line 574
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_2

    .line 575
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 577
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_3
    :goto_8
    return-void

    :cond_4
    move v2, v4

    .line 559
    goto :goto_0

    :cond_5
    move v2, v4

    .line 560
    goto :goto_1

    :cond_6
    move v2, v4

    .line 561
    goto :goto_2

    :cond_7
    move v2, v4

    .line 565
    goto :goto_3

    :cond_8
    move v2, v4

    .line 567
    goto :goto_4

    :cond_9
    move v2, v4

    .line 568
    goto :goto_5

    :cond_a
    move v3, v4

    .line 569
    goto :goto_6

    .line 570
    :cond_b
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    goto :goto_7

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 580
    const-string/jumbo v2, "AdaptiveDisplayColorService"

    const-string/jumbo v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_3

    .line 585
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_8
.end method

.method private terminateScrRGB()V
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1321
    :cond_0
    return-void
.end method

.method private terminateVideoMode()V
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1315
    :cond_0
    return-void
.end method

.method private updateScreen()V
    .locals 6

    .prologue
    .line 1355
    :try_start_0
    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1356
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 1357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1358
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1359
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1360
    const/16 v3, 0x3ee

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 1363
    :catch_0
    move-exception v1

    .line 1364
    .local v1, "e":Landroid/os/RemoteException;
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1365
    const-string/jumbo v3, "AdaptiveDisplayColorService"

    const-string/jumbo v4, "failed to updateScreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
