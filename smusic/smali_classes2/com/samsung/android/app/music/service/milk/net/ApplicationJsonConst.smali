.class public interface abstract Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;
.super Ljava/lang/Object;
.source "ApplicationJsonConst.java"


# static fields
.field public static final DEFAULT_APPBOY_SERVER:Ljava/lang/String; = "prod"

.field public static final DEFAULT_BILLING_SERVER:Ljava/lang/String; = ""

.field public static final DEFAULT_CUSTOM_LOCK_SCREEN_WIDGET_ENABLED:Z = true

.field public static final DEFAULT_DRM_EXPIRED_TEST:Z = false

.field public static final DEFAULT_HTTPS_TRUST_ALL_CERTS_ENABLED:Z = false

.field public static final DEFAULT_HTTP_START_INFO:Ljava/lang/String; = "http://api.glb.samsungmilkradio.com/"

.field public static final DEFAULT_MOBILE_COUNTRY_CODE:Ljava/lang/String;

.field public static final DEFAULT_MOBILE_NETWORK_CODE:Ljava/lang/String;

.field public static final DEFAULT_MODEL_NAME:Ljava/lang/String;

.field public static final DEFAULT_NETWORK_OPERATOR_MCC:Ljava/lang/String;

.field public static final DEFAULT_NETWORK_OPERATOR_MNC:Ljava/lang/String;

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "radio"

.field public static final DEFAULT_PRODUCT_URL:Ljava/lang/String; = "http://samsungmusic.kr/mobile/ticket_buy"

.field public static final DEFAULT_PROPERTY_SMART_STATION_FORCE_CREATE_ENABLED:Z = false

.field public static final DEFAULT_PROPERTY_SMART_VIEW_FEATURE_ENABLED:Z = false

.field public static final DEFAULT_SERVER_API_REQUEST_LOG_WRITE_MODE_ENABLED:Z = false

.field public static final DEFAULT_SERVER_ERROR_CODE_ENABLED:Z = false

.field public static final DEFAULT_SET_MLOG_LEVEL:I = 0x2

.field public static final DRM_EXPIRED_TEST:Ljava/lang/String; = "drmExpiredTest"

.field public static final PRODUCT_URL:Ljava/lang/String; = "productUrl"

.field public static final PROPERTY_APPBOY_SERVER:Ljava/lang/String; = "appboyserver"

.field public static final PROPERTY_BILLING_SERVER:Ljava/lang/String; = "billingserver"

.field public static final PROPERTY_CUSTOM_LOCK_SCREEN_WIDGET_ENAGLED:Ljava/lang/String; = "customLockScreenWidgetEnabled"

.field public static final PROPERTY_HTTPS_TRUST_ALL_CERTS_ENABLED:Ljava/lang/String; = "httpsTrustAllCertsEnabled"

.field public static final PROPERTY_HTTP_START_INFO_KEY:Ljava/lang/String; = "startclient"

.field public static final PROPERTY_MOBILE_COUNTRY_CODE:Ljava/lang/String; = "mcc"

.field public static final PROPERTY_MOBILE_NETWORK_CODE:Ljava/lang/String; = "mnc"

.field public static final PROPERTY_MODEL_NAME:Ljava/lang/String; = "modelName"

.field public static final PROPERTY_NETWORK_OPERATOR_MCC:Ljava/lang/String; = "nMcc"

.field public static final PROPERTY_NETWORK_OPERATOR_MNC:Ljava/lang/String; = "nMnc"

.field public static final PROPERTY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PROPERTY_PARTNER_PACKAGE_NAME:Ljava/lang/String; = "partnerPackageName"

.field public static final PROPERTY_PARTNER_PACKAGE_VERSION:Ljava/lang/String; = "partnerPackageVersion"

.field public static final PROPERTY_SERVER_API_REQUEST_LOG_WRITE_MODE_ENABLED:Ljava/lang/String; = "serverApiRequestwriteModeEnabled"

.field public static final PROPERTY_SERVER_ERROR_CODE_ENABLED:Ljava/lang/String; = "serverAPIErrorCodeVisibility"

.field public static final PROPERTY_SET_MLOG_LEVEL:Ljava/lang/String; = "loglevel"

.field public static final PROPERTY_SMART_STATION_FORCE_CREATE_ENABLED:Ljava/lang/String; = "smartStationForceCreateEnabled"

.field public static final PROPERTY_SMART_VIEW_FEATURE_ENABLED:Ljava/lang/String; = "smartViewFeatureEnabled"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_COUNTRY_CODE:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MOBILE_NETWORK_CODE:Ljava/lang/String;

    .line 28
    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_NETWORK_OPERATOR_MCC:Ljava/lang/String;

    .line 31
    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_NETWORK_OPERATOR_MNC:Ljava/lang/String;

    .line 62
    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonConst;->DEFAULT_MODEL_NAME:Ljava/lang/String;

    return-void
.end method
