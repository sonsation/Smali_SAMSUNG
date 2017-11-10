.class public Lcom/sec/android/app/camera/shootingmode/TagShot;
.super Ljava/lang/Object;
.source "TagShot.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;,
        Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;,
        Lcom/sec/android/app/camera/shootingmode/TagShot$SCRetryPolicy;,
        Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;,
        Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;
    }
.end annotation


# static fields
.field private static final ACCU_FORECAST_URL:Ljava/lang/String; = "http://api.accuweather.com/localweather/v1/%s.json?apikey=0460650BB2524F84BAECAA9381D79EFC%s&details=true"

.field private static final ACCU_LANGUAGE:Ljava/lang/String; = "&language="

.field private static final ACCU_LOCATION_KEY_URL:Ljava/lang/String; = "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=ko"

.field private static final ALTITUDE_FORMAT:Ljava/lang/String; = "%d"

.field private static final CHANGE_DEFAULT_SHOOTING_MODE_DURATION:I = 0x64

.field private static final DAEMON_ACCUWEATHER:Ljava/lang/String; = "Accuweather"

.field private static final DEFAULT_ALTITUDE:Ljava/lang/String; = "31"

.field private static final KEY_CURRENT_CITY:Ljava/lang/String; = "aw_daemon_service_key_loc_code"

.field private static final KEY_CURRENT_TEMP:Ljava/lang/String; = "aw_daemon_service_key_current_temp"

.field private static final KEY_ERROR_BUNDLE:Ljava/lang/String; = "Error_Code"

.field private static final KEY_HIGH_TEMP:Ljava/lang/String; = "aw_daemon_service_key_high_temp"

.field private static final KEY_ICON_NUM:Ljava/lang/String; = "aw_daemon_service_key_weather_icon_num"

.field private static final KEY_LOW_TEMP:Ljava/lang/String; = "aw_daemon_service_key_low_temp"

.field private static final KEY_TAG_SHOT_GUIDE_DIALOG_ENABLED:Ljava/lang/String; = "pref_tag_shot_guide_dialog_enabled"

.field private static final KEY_TEMP_SCALE:Ljava/lang/String; = "aw_daemon_service_key_temp_scale"

.field private static final MAX_SIZE_PRESSURE_LIST:I = 0x2

.field private static final RESTORE_DEFAULT_SHOOTING_MODE_MSG:I = 0x2

.field private static final SYMBOLIZED_DEGREE:C = '\u00b0'

.field private static final TAG:Ljava/lang/String; = "TagShot"

.field private static final TRANSFORMATION_VALUE_INCHHG_TO_HPA:F = 33.86388f

.field private static final UPDATE_TAG_INFO_INTERVAL:I = 0x3e8

.field private static final UPDATE_TAG_INFO_MSG:I = 0x1


# instance fields
.field private ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

.field private ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final TAG_SHOT_INFO_GROUP_HEIGHT:I

.field private final TAG_SHOT_INFO_GROUP_WIDTH:I

.field private final TAG_SHOT_INFO_ICON_WIDTH:F

.field private final TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

.field private final TAG_SHOT_INFO_PORTRAIT_MARGIN:F

.field private final TAG_SHOT_INFO_SIDE_MARGIN:F

.field private final TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

.field private final TAG_SHOT_INFO_TEXT_HEIGHT:F

.field private final TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

.field private final TAG_SHOT_INFO_TEXT_SIZE:F

.field private final TAG_SHOT_INFO_TEXT_WIDTH:F

.field private loc:Landroid/location/Location;

.field private mAltitude:Ljava/lang/String;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPName:Ljava/lang/String;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentPressure:F

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mHumidity:Ljava/lang/String;

.field private mLatitude:Ljava/lang/Double;

.field private mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mLocation:Ljava/lang/String;

.field private mLocationImage:Lcom/samsung/android/glview/GLImage;

.field private mLocationText:Lcom/samsung/android/glview/GLText;

.field private mLongitude:Ljava/lang/Double;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mModifiedAltitude:I

.field private mModifiedPressure:F

.field private mPressureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mPressureListener:Landroid/hardware/SensorEventListener;

.field private mRefPressure:F

.field private mSenserCounter:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

.field private mTempScale:Ljava/lang/String;

.field private mTemperature:Ljava/lang/String;

.field private mTemperatureText:Lcom/samsung/android/glview/GLText;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mWeatherIcon:I

.field private mWeatherImage:Lcom/samsung/android/glview/GLImage;

.field private mWeatherImageID:I

.field private mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    const v0, 0x7f0b0210

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    const v0, 0x7f0b020d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    const v0, 0x7f0b020e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    const v0, 0x7f0b020c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    const v0, 0x7f0b0208

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_ICON_WIDTH:F

    const v0, 0x7f0b020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    const v0, 0x7f0b0209

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    const v0, 0x7f0b020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_SIDE_MARGIN:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_ICON_WIDTH:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    const v0, 0x7f0b020f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_SIZE:F

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mRefPressure:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedPressure:F

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedAltitude:I

    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLatitude:Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLongitude:Ljava/lang/Double;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$1;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureListener:Landroid/hardware/SensorEventListener;

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImageID:I

    iput v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANE_SETTING"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.AUTO_REFRESH"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CHANGE_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.WEATHER_DATE_SYNC"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    const-string v0, "Accuweather"

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCPName:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$2;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    return p1
.end method

.method static synthetic access$010(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSenserCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/TagShot;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->updateCurrentPressure(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/TagShot;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedPressure:F

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/shootingmode/TagShot;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedPressure:F

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedAltitude:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mModifiedAltitude:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->convertMetersToFeet(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mAltitude:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mAltitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/shootingmode/TagShot;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImageID:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImageID:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/shootingmode/TagShot;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot;->getWeatherIconImage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLImage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperature:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTempScale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTempScale:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mHumidity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/shootingmode/TagShot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mHumidity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Lcom/samsung/android/glview/GLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->showTagInfo()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/shootingmode/TagShot;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->fetchForecastInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->updateTagInfo()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/TagShot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/TagShot;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->setWeatherInfo(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/TagShot;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mRefPressure:F

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/shootingmode/TagShot;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mRefPressure:F

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/TagShot;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    return v0
.end method

.method private addSEFInfo(Ljava/io/File;)V
    .locals 9

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "LocalizedName"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "Altitude"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mAltitude:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "Temperature"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperature:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "Unit"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTempScale:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "RelativeHumidity"

    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mHumidity:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "WeatherIcon"

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherIcon:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz v4, :cond_0

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    :try_start_1
    const-string v5, "Tag_Shot_Info"

    const/16 v6, 0x990

    const/4 v7, 0x1

    invoke-static {p1, v5, v3, v6, v7}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEF_DATA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    return-void

    :catch_0
    move-exception v1

    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONObject data writing error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "TagShot"

    const-string v6, "error while addSEFData in TagShot"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->access$700(Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->unregisterSensorManager()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    return-void
.end method

.method private convertMetersToFeet(I)I
    .locals 2

    const/16 v0, 0x32

    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v0, v1

    return v0
.end method

.method private fetchForecastInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-string v5, "TagShot"

    const-string v6, "fetchForecastInfo"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->getLocaleCode()Ljava/lang/String;

    move-result-object v1

    const-string v5, "http://api.accuweather.com/localweather/v1/%s.json?apikey=0460650BB2524F84BAECAA9381D79EFC%s&details=true"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$3;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/TagShot$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$4;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;

    const-class v5, Lcom/sec/android/app/camera/shootingmode/util/AccuForecastInfo;

    invoke-direct {v2, v4, v5, v3, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private fetchLocationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;)V
    .locals 7

    const-string v4, "TagShot"

    const-string v5, "fetchLocationInfo"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=ko"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/TagShot$5;

    invoke-direct {v2, p0, p4, p1}, Lcom/sec/android/app/camera/shootingmode/TagShot$5;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;Landroid/content/Context;)V

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$6;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;

    const-class v4, Lcom/sec/android/app/camera/shootingmode/util/AccuLocationInfo;

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$SCJsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/shootingmode/util/ServerConnector;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private getLocaleCode()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "&language=ko"

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ru"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "&language=ru"

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "es_ES"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v0, "&language=es"

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v0, "&language=de"

    goto :goto_0

    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const-string v0, "&language=fr"

    goto :goto_0

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const-string v0, "&language=it"

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const-string v0, "&language=ja"

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    const-string v0, "&language=zh"

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ar"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v0, "&language=ar"

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bn"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "&language=bn"

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bs"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "&language=bs"

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "bg"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "&language=bg"

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ca"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "&language=ca"

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v0, "&language=hr"

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "cs"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "&language=cs"

    goto/16 :goto_0

    :cond_15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "da"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v0, "&language=da"

    goto/16 :goto_0

    :cond_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "nl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "&language=nl"

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "et"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v0, "&language=et"

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fa"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "&language=fa"

    goto/16 :goto_0

    :cond_19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ph"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "&language=ph"

    goto/16 :goto_0

    :cond_1a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "fi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "&language=fi"

    goto/16 :goto_0

    :cond_1b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "el"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v0, "&language=el"

    goto/16 :goto_0

    :cond_1c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "he"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v0, "&language=he"

    goto/16 :goto_0

    :cond_1d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "&language=hi"

    goto/16 :goto_0

    :cond_1e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "hu"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v0, "&language=hu"

    goto/16 :goto_0

    :cond_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "is"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v0, "&language=is"

    goto/16 :goto_0

    :cond_20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "id"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "&language=id"

    goto/16 :goto_0

    :cond_21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "kk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v0, "&language=kk"

    goto/16 :goto_0

    :cond_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "lv"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v0, "&language=lv"

    goto/16 :goto_0

    :cond_23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "lt"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v0, "&language=lt"

    goto/16 :goto_0

    :cond_24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "mk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v0, "&language=mk"

    goto/16 :goto_0

    :cond_25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ms"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, "&language=ms"

    goto/16 :goto_0

    :cond_26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sr-me"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v0, "&language=sr-me"

    goto/16 :goto_0

    :cond_27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "no"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v0, "&language=no"

    goto/16 :goto_0

    :cond_28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pl_PL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const-string v0, "&language=pl"

    goto/16 :goto_0

    :cond_2a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "pt"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v0, "&language=pt"

    goto/16 :goto_0

    :cond_2b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ro"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v0, "&language=ro"

    goto/16 :goto_0

    :cond_2c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v0, "&language=sk"

    goto/16 :goto_0

    :cond_2d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sl"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v0, "&language=sl"

    goto/16 :goto_0

    :cond_2e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sw"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v0, "&language=sw"

    goto/16 :goto_0

    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "sv"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v0, "&language=sv"

    goto/16 :goto_0

    :cond_30
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "th"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v0, "&language=th"

    goto/16 :goto_0

    :cond_31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "tr"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v0, "&language=tr"

    goto/16 :goto_0

    :cond_32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "uk"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v0, "&language=uk"

    goto/16 :goto_0

    :cond_33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "ur"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string v0, "&language=ur"

    goto/16 :goto_0

    :cond_34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "vi"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v0, "&language=vi"

    goto/16 :goto_0

    :cond_35
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private getWeatherIconImage(I)I
    .locals 8

    const v0, 0x7f0202e6

    const v2, 0x7f0202e4

    const v3, 0x7f0202d9

    const v1, 0x7f0202d7

    const v4, 0x7f0202e5

    const-string v5, "TagShot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWeatherIconImage iconNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0202de

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0202da

    goto :goto_0

    :pswitch_4
    move v0, v2

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0202e0

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0202e7

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0202e1

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0202e2

    goto :goto_0

    :pswitch_9
    move v0, v3

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0202df

    goto :goto_0

    :pswitch_b
    move v0, v4

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0202dc

    goto :goto_0

    :pswitch_d
    move v0, v4

    goto :goto_0

    :pswitch_e
    const v0, 0x7f0202e3

    goto :goto_0

    :pswitch_f
    const v0, 0x7f0202db

    goto :goto_0

    :pswitch_10
    const v0, 0x7f0202d8

    goto :goto_0

    :pswitch_11
    const v0, 0x7f0202e8

    goto :goto_0

    :pswitch_12
    const v0, 0x7f0202d6

    goto :goto_0

    :pswitch_13
    const v0, 0x7f0202dd

    goto :goto_0

    :pswitch_14
    move v0, v1

    goto :goto_0

    :pswitch_15
    move v0, v2

    goto :goto_0

    :pswitch_16
    const v0, 0x7f0202e7

    goto :goto_0

    :pswitch_17
    move v0, v3

    goto :goto_0

    :pswitch_18
    move v0, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method private hideTagInfo()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "TagShot"

    const-string v1, "hideTagInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private isTagShotGuideDialogEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_tag_shot_guide_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private registerSensorManager()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const-string v0, "TagShot"

    const-string v1, "registerSensorManager - registerListener"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method private registerWeatherInfoReceiver()V
    .locals 3

    const-string v1, "TagShot"

    const-string v2, "registerWeatherInfoReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->requestWeatherDataSync()V

    return-void
.end method

.method private requestWeatherDataSync()V
    .locals 3

    const-string v1, "TagShot"

    const-string v2, "requestWeatherDataSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "START"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CP"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCPName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "TagShot"

    const-string v2, "SendBroadcast() from Camera to Weather Deamon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restoreDefaultShootingMode()V
    .locals 2

    const-string v0, "TagShot"

    const-string v1, "restoreDefaultShootingMode"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultShootingModeByCurrentCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShootingModeChanged(I)V

    return-void
.end method

.method private sendMessageToUpdateTagInfo()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "TagShot"

    const-string v1, "sendMessageToUpdateTagInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private setTagShotGuideDialogEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_tag_shot_guide_dialog_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_tag_shot_guide_dialog_enabled"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setWeatherInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_weather_icon_num"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setIconNumber(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_current_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setCurrentTemperature(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_temp_scale"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setTempScale(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_loc_code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setCurrentCityId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_high_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setHighTemperature(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "aw_daemon_service_key_low_temp"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setLowTemperature(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    const-string v1, "Error_Code"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->setTrusted(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;->dump()V

    return-void
.end method

.method private showTagInfo()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TagShot"

    const-string v1, "showTagInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private showTagShotGuideDialog()V
    .locals 9

    const v8, 0x7f0a017d

    const v2, 0x7f0a00d7

    const/16 v7, 0x1e6

    const/4 v6, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a023a

    invoke-static {v0, v1, v4}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->isTagShotGuideDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x1e5

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isGPSProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01b9

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x19e

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a01b7

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    goto/16 :goto_0
.end method

.method private unregisterSensorManager()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const-string v0, "TagShot"

    const-string v1, "unregisterSensorManager - unregisterListener"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    return-void
.end method

.method private updateCurrentPressure(F)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/Float;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v3, v0

    div-int/lit8 v1, v3, 0x2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCurrentPressure:F

    :cond_1
    return-void
.end method

.method private updateTagInfo()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "TagShot"

    const-string v2, "handleMessage - GPS OFF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLatitude:Ljava/lang/Double;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLongitude:Ljava/lang/Double;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$7;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLatitude:Ljava/lang/Double;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLongitude:Ljava/lang/Double;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->fetchLocationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/camera/shootingmode/TagShot$LocationInfoListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    goto :goto_0
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherInfo:Lcom/sec/android/app/camera/shootingmode/TagShot$WeatherInfo;

    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mPressureList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->registerWeatherInfoReceiver()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->registerSensorManager()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->showTagShotGuideDialog()V

    return-void

    :array_0
    .array-data 4
        0x3
        0xc
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancelDialog(I)V
    .locals 3

    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancelDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x19e -> :sswitch_0
        0x1e5 -> :sswitch_0
        0x1e6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 8

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    const-string v6, "Secho 1-dong / 31ft"

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const v3, 0x7f0201f7

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocationImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_SIDE_MARGIN:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float v2, v1, v2

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    add-float/2addr v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    new-instance v0, Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_HEIGHT:F

    const-string v6, "14\u00b0F / 60%"

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_SIZE:F

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v7

    mul-float/2addr v7, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_RIGHT_MARGIN:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/TagShot;->getWeatherIconImage(I)I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTemperatureText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_SIDE_MARGIN:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_TEXT_BOTTOM_MARGIN:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x3

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->SCREEN_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_LANDSCAPE_MARGIN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_GROUP_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->TAG_SHOT_INFO_PORTRAIT_MARGIN:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mLocGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mWeatherGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->hideTagInfo()V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 2

    const-string v0, "sef_file_type"

    const/16 v1, 0x990

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/TagShot;->addSEFInfo(Ljava/io/File;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTagShotHandler:Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->hideTagInfo()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNegativeButtonClicked(I)V
    .locals 3

    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNegativeButtonClicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x19e -> :sswitch_0
        0x1e5 -> :sswitch_0
        0x1e6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPositiveButtonClicked(I)V
    .locals 3

    const-string v0, "TagShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPositiveButtonClicked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->dismissCameraDialog(I)V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->setTagShotGuideDialogEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->showTagShotGuideDialog()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->sendMessageToUpdateTagInfo()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1e5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    const/4 v0, 0x0

    return v0
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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0

    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4

    const/16 v3, 0x3d

    const-string v0, "TagShot"

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
