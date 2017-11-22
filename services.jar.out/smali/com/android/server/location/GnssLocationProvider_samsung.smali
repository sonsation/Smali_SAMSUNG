.class public Lcom/android/server/location/GnssLocationProvider_samsung;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I = null

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AGPS_TYPE_SUPL_2:I = 0x3

.field private static final AGPS_TYPE_SUPL_2_0_1_AGNSS:I = 0x5

.field private static final AGPS_TYPE_SUPL_2_AGNSS:I = 0x4

.field private static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field private static final DEBUG:Z = true

.field static final FLAG_AGPS_UDP_RECEIVED:I = 0x1

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final INTENT_AGPS_UDP_RECEIVED:Ljava/lang/String; = "android.intent.action.AGPS_UDP_RECEIVED"

.field private static final MSG_FOR_GNSS_ASSERT:I = 0x12c

.field private static final MSG_FOR_SUPL_INFO:I = 0x190

.field private static final Num_Top_SV:I = 0x5

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field static final SUPL_INIT_EMERGENCY_SUPL_NI:I = 0x2

.field static final SUPL_INIT_NATIVE_INIT_SUPL_NI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider_ex"

.field private static final VERBOSE:Z

.field private static salesCode:Ljava/lang/String;


# instance fields
.field private final RJILALPHA:Ljava/lang/String;

.field private final SERVER_PORT:I

.field private googleSuplAddr:Ljava/lang/String;

.field private isNativeInitCalled:Z

.field private isUDPListen:Z

.field private ktPositionMode:I

.field mConnMgr:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mCurrentMobileType:I

.field private mIsKtGps:Z

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPositionModeFromCSC:Ljava/lang/String;

.field mProperties:Ljava/util/Properties;

.field mProperties_secgps:Ljava/util/Properties;

.field private mResolveAddrs:Ljava/net/InetAddress;

.field public mStarted:Z

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplType:I

.field private mccTLS:I

.field private mncTLS1:I

.field private mncTLS2:I

.field private prevLppMask:I

.field private sktSuplAddr:Ljava/lang/String;

.field private sktSuplPort:I

.field private socket:Ljava/net/DatagramSocket;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/GnssLocationProvider_samsung;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    return v0
.end method

.method private static synthetic -getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->-com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->-com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->values()[Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    sput-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->-com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_14

    :catch_1
    move-exception v1

    goto :goto_13

    :catch_2
    move-exception v1

    goto :goto_12

    :catch_3
    move-exception v1

    goto :goto_11

    :catch_4
    move-exception v1

    goto :goto_10

    :catch_5
    move-exception v1

    goto :goto_f

    :catch_6
    move-exception v1

    goto :goto_e

    :catch_7
    move-exception v1

    goto :goto_d

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    move-exception v1

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v1

    goto/16 :goto_9

    :catch_c
    move-exception v1

    goto/16 :goto_8

    :catch_d
    move-exception v1

    goto/16 :goto_7

    :catch_e
    move-exception v1

    goto/16 :goto_6

    :catch_f
    move-exception v1

    goto/16 :goto_5

    :catch_10
    move-exception v1

    goto/16 :goto_4

    :catch_11
    move-exception v1

    goto/16 :goto_3

    :catch_12
    move-exception v1

    goto/16 :goto_2

    :catch_13
    move-exception v1

    goto/16 :goto_1

    :catch_14
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider_samsung;->VERBOSE:Z

    .line 155
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x1c6b

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->SERVER_PORT:I

    .line 83
    iput-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->socket:Ljava/net/DatagramSocket;

    .line 84
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 91
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    .line 92
    const-string/jumbo v0, "wpde.nate.com"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    .line 93
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplPort:I

    .line 94
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    .line 97
    const/16 v0, 0x12e

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mccTLS:I

    .line 98
    const/16 v0, 0xdc

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS1:I

    .line 99
    const/16 v0, 0xdd

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS2:I

    .line 102
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 104
    const-string/jumbo v0, "MSBASED"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 106
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 107
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 108
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 109
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 110
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 112
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mCurrentMobileType:I

    .line 142
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    .line 147
    const-string/jumbo v0, "Jio 4G"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->RJILALPHA:Ljava/lang/String;

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    .line 151
    iput-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    .line 157
    return-void
.end method

.method private checkUDPSuplInit()V
    .locals 3

    .prologue
    .line 1754
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "start UDP socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider_samsung$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider_samsung$1;-><init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1787
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1753
    return-void
.end method

.method private deleteSecGpsConf()V
    .locals 4

    .prologue
    .line 1535
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "deleteSecGpsConf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1539
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1540
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1541
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "secgps.conf deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1534
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not delete secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private extChnSelectPositionMode()I
    .locals 5

    .prologue
    .line 524
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v1, 0x0

    .line 527
    .local v1, "chnPositionMode":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_1

    .line 528
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 529
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_CMCCxtraDownloadRequest()Z

    move-result v0

    .line 531
    .local v0, "agpsSwitchOff":Z
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    if-eqz v0, :cond_4

    .line 532
    :cond_0
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x0

    .line 540
    .end local v0    # "agpsSwitchOff":Z
    .end local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_5

    .line 541
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 542
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_3
    return v1

    .line 535
    .restart local v0    # "agpsSwitchOff":Z
    .restart local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v1, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "agpsSwitchOff":Z
    .end local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_3

    goto :goto_1
.end method

.method private extSelectUseGooglePositionMode(I)I
    .locals 13
    .param p1, "_mPositionMode"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 499
    move v12, p1

    .line 500
    .local v12, "mPositionMode":I
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v2, "extSelectUseGooglePositionMode()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v12, 0x1

    .line 502
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, " SKT GPS mode : SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 514
    :goto_0
    return v12

    .line 506
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 507
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v2, " KT GPS mode : SUPL2.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 510
    :cond_1
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v2, "extSelectUseGooglePositionMode() : Google SUPL 2.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 512
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v8, 0x1c6b

    move-object v5, p0

    move v6, v1

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method private extension_setAgpsServer(ILjava/lang/String;IIII)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "ssl"    # I
    .param p5, "ssl_ver"    # I
    .param p6, "ssl_type"    # I

    .prologue
    .line 1901
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1902
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 1903
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendSuplHostNameToNsflp()V

    .line 1900
    return-void
.end method

.method private getCpAgpsProfile()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1446
    const-string/jumbo v1, "ril.product_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1447
    .local v0, "productCode":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1448
    const-string/jumbo v1, "ECO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "EBE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1449
    const-string/jumbo v1, "ALE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1448
    if-nez v1, :cond_0

    .line 1449
    const-string/jumbo v1, "EON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1448
    if-eqz v1, :cond_1

    .line 1457
    :cond_0
    return v3

    .line 1459
    :cond_1
    const-string/jumbo v1, "COB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "COM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1465
    :cond_2
    return v3

    .line 1469
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private getLppBitmask()I
    .locals 10

    .prologue
    .line 758
    const/4 v2, -0x1

    .line 759
    .local v2, "ret":I
    const/4 v1, 0x0

    .line 761
    .local v1, "isRJIO":Z
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 762
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    .line 763
    .local v5, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 765
    .local v4, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_1

    .line 766
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 767
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 768
    .local v3, "subId":I
    const-string/jumbo v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SubscriptionId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 769
    const-string/jumbo v9, ", SimOperatorName = "

    .line 768
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 769
    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v9

    .line 768
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 770
    const-string/jumbo v9, ", SimOperator = "

    .line 768
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 770
    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    .line 768
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string/jumbo v7, "Jio 4G"

    invoke-virtual {v6, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 773
    const/4 v1, 0x1

    .line 766
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    .end local v0    # "i":I
    .end local v3    # "subId":I
    :cond_1
    if-eqz v1, :cond_3

    .line 779
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, "JIO 4G operator"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v2, 0x7

    .line 785
    :cond_2
    :goto_1
    return v2

    .line 781
    :cond_3
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v7

    sget-object v8, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v7, v8, :cond_2

    .line 782
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, "No Operator LPP Disable"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getSKAFEnable()Z
    .locals 3

    .prologue
    .line 455
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method private getSuplServerFromCSC()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1049
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, "getSuplServerFromCSC"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iput v14, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1053
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/data/system/gps/cscgps.conf"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1055
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    return-void

    .line 1058
    .end local v8    # "file":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 1059
    .local v7, "e":Ljava/lang/SecurityException;
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_0
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 1064
    .local v9, "mProperties_cscgps":Ljava/util/Properties;
    :try_start_1
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/data/system/gps/cscgps.conf"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1065
    .restart local v8    # "file":Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1067
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v9, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1073
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1082
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string/jumbo v11, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v9, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1083
    .local v1, "SuplServerFromCSC_s":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 1085
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1092
    :cond_1
    :goto_1
    iget v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 1093
    const-string/jumbo v11, "CSC_SUPL_OPMODE"

    invoke-virtual {v9, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 1094
    const-string/jumbo v11, "CSC_SUPL_HOST"

    invoke-virtual {v9, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 1096
    const-string/jumbo v11, "CSC_SUPL_VER"

    const-string/jumbo v12, "1"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1097
    .local v3, "SuplType_s":Ljava/lang/String;
    const-string/jumbo v11, "CSC_SUPL_PORT"

    const-string/jumbo v12, "7276"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "SuplPort_s":Ljava/lang/String;
    const-string/jumbo v11, "CSC_SUPL_SSL"

    const-string/jumbo v12, "0"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1101
    .local v2, "SuplSslMode_s":Ljava/lang/String;
    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 1102
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 1103
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1111
    .end local v0    # "SuplPort_s":Ljava/lang/String;
    .end local v2    # "SuplSslMode_s":Ljava/lang/String;
    .end local v3    # "SuplType_s":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string/jumbo v11, "GnssLocationProvider_ex"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[getProperty] mSuplServerFromCSC : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void

    .line 1074
    .end local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 1075
    .local v4, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1078
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 1079
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1068
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 1069
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not load file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1073
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1070
    :goto_3
    return-void

    .line 1074
    :catch_4
    move-exception v4

    .line 1075
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 1071
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 1073
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1071
    :goto_4
    :try_start_b
    throw v11

    .line 1074
    :catch_5
    move-exception v4

    .line 1075
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "GnssLocationProvider_ex"

    const-string/jumbo v13, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 1086
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 1087
    .local v6, "e":Ljava/lang/NumberFormatException;
    iput v14, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1088
    const-string/jumbo v11, "GnssLocationProvider_ex"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " [NumberFormatException] mSuplServerFromCSC :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1105
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "SuplPort_s":Ljava/lang/String;
    .restart local v2    # "SuplSslMode_s":Ljava/lang/String;
    .restart local v3    # "SuplType_s":Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 1106
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    iput v14, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1107
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, "[NumberFormatException] failed to convert supl information"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    .locals 3

    .prologue
    .line 325
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    :cond_0
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    .line 327
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 328
    :cond_1
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    .line 331
    :cond_2
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    .line 333
    .local v0, "vendor":Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    const-string/jumbo v1, "TMB"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    .line 371
    :cond_3
    :goto_0
    return-object v0

    .line 335
    :cond_4
    const-string/jumbo v1, "ATT"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 336
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 337
    :cond_5
    const-string/jumbo v1, "DCM"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 338
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 339
    :cond_6
    const-string/jumbo v1, "KDI"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 340
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 341
    :cond_7
    const-string/jumbo v1, "TLS"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "KDO"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "PMB"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "SPC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 342
    :cond_8
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 343
    :cond_9
    const-string/jumbo v1, "BMC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "VMC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "PCM"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "SOL"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "BWA"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 344
    :cond_a
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 345
    :cond_b
    const-string/jumbo v1, "RWC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "FMC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "MTA"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "VTR"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "ESK"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "GLW"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 346
    :cond_c
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 347
    :cond_d
    const-string/jumbo v1, "XAC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 348
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 349
    :cond_e
    const-string/jumbo v1, "SKT"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, "SKC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string/jumbo v1, "SKO"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 350
    :cond_f
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 351
    :cond_10
    const-string/jumbo v1, "LGT"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "LUC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "LUO"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 352
    :cond_11
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 353
    :cond_12
    const-string/jumbo v1, "KTT"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "KTC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "KTO"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 354
    :cond_13
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 355
    :cond_14
    const-string/jumbo v1, "CHM"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 356
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 357
    :cond_15
    const-string/jumbo v1, "CTC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 358
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 359
    :cond_16
    const-string/jumbo v1, "CHU"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 360
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 361
    :cond_17
    const-string/jumbo v1, "CHC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 362
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 363
    :cond_18
    const-string/jumbo v1, "MNX"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 364
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 365
    :cond_19
    const-string/jumbo v1, "IUS"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 366
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 367
    :cond_1a
    const-string/jumbo v1, "SWC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 368
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 369
    :cond_1b
    const-string/jumbo v1, "TUR"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0
.end method

.method private static isUSAMarket()Z
    .locals 5

    .prologue
    .line 376
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 378
    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    :cond_1
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket : code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string/jumbo v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    const/4 v1, 0x1

    .line 398
    .local v1, "rc":Z
    :goto_0
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v1

    .line 384
    .end local v1    # "rc":Z
    :cond_2
    const-string/jumbo v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 385
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 386
    .end local v1    # "rc":Z
    :cond_3
    const-string/jumbo v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 387
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 388
    .end local v1    # "rc":Z
    :cond_4
    const-string/jumbo v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 389
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 390
    .end local v1    # "rc":Z
    :cond_5
    const-string/jumbo v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 391
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 392
    .end local v1    # "rc":Z
    :cond_6
    const-string/jumbo v2, "XAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 393
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 394
    .end local v1    # "rc":Z
    :cond_7
    const-string/jumbo v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 395
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 397
    .end local v1    # "rc":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "rc":Z
    goto :goto_0
.end method

.method static isUSCDMAMarket()Z
    .locals 5

    .prologue
    .line 411
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    const/4 v1, 0x1

    .line 433
    .local v1, "rc":Z
    :goto_0
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSCDMAMarket rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v1

    .line 415
    .end local v1    # "rc":Z
    :cond_0
    const-string/jumbo v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 417
    .end local v1    # "rc":Z
    :cond_1
    const-string/jumbo v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 418
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 419
    .end local v1    # "rc":Z
    :cond_2
    const-string/jumbo v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 420
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 421
    .end local v1    # "rc":Z
    :cond_3
    const-string/jumbo v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 422
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 423
    .end local v1    # "rc":Z
    :cond_4
    const-string/jumbo v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 424
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 425
    .end local v1    # "rc":Z
    :cond_5
    const-string/jumbo v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 426
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 427
    .end local v1    # "rc":Z
    :cond_6
    const-string/jumbo v2, "TFNVZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 428
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 429
    .end local v1    # "rc":Z
    :cond_7
    const-string/jumbo v2, "ACG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 430
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 432
    .end local v1    # "rc":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "rc":Z
    goto :goto_0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 262
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .local v3, "szUrl":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 264
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "SimOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 268
    .local v1, "mcc":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 269
    .local v2, "mnc":I
    const-string/jumbo v5, "h-slp.mnc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "makeAutoSuplUrl :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 274
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    :cond_0
    return-object v8
.end method

.method private native native_agps_ni_message_for_emergency_supl([BI)V
.end method

.method private native native_agps_set_supl_host_ip(Ljava/lang/String;)V
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_cleanup_extention()V
.end method

.method private native native_gnss_control(I)V
.end method

.method private native native_init_extention()Z
.end method

.method private native native_inject_sensor_data(DD)V
.end method

.method private native native_set_agps_server_extension(ILjava/lang/String;IIII)V
.end method

.method private native native_set_lpp_support(I)V
.end method

.method private sendSuplHostNameToNsflp()V
    .locals 5

    .prologue
    .line 1913
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send_supl_hostname : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1916
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "supl_hostname"

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1919
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x190

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1920
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1922
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    .line 1912
    return-void
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .locals 19
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 605
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "setCscParameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-nez p1, :cond_0

    .line 608
    return-void

    .line 610
    :cond_0
    const/16 v16, 0x0

    .line 612
    .local v16, "isDeleted":Z
    :try_start_0
    new-instance v15, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps/cscgps.conf"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    const/16 v16, 0x1

    .line 617
    :cond_1
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " isDeleted :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v15    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 624
    const-string/jumbo v2, "MSBASED"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 625
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 626
    const-string/jumbo v2, "supl.google.com"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 627
    const/16 v2, 0x1c6b

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 628
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 629
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 630
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Default SUPL CSC] mEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mSuplAddress : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mSuplType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mSuplPort : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mSuplSslMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    if-eqz p2, :cond_3

    .line 632
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 636
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 637
    const-string/jumbo v9, "TRUE"

    .line 638
    .local v9, "CscParamIsEmpty":Ljava/lang/String;
    const-string/jumbo v2, "is_empty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 639
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " CscParamIsEmpty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string/jumbo v2, "TRUE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 642
    return-void

    .line 619
    .end local v9    # "CscParamIsEmpty":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 620
    .local v14, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 645
    .end local v14    # "e":Ljava/lang/SecurityException;
    .restart local v9    # "CscParamIsEmpty":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "operation_mode"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 646
    const-string/jumbo v2, "hslp_addr"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 647
    const-string/jumbo v2, "hslp_port"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 648
    const-string/jumbo v2, "ssl"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 649
    const-string/jumbo v2, "ssl_cert"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 650
    const-string/jumbo v2, "supl_ver"

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 652
    .local v10, "SuplVer":I
    packed-switch v10, :pswitch_data_0

    .line 658
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 661
    :goto_1
    new-instance v17, Ljava/util/Properties;

    invoke-direct/range {v17 .. v17}, Ljava/util/Properties;-><init>()V

    .line 662
    .local v17, "mProperties_cscgps":Ljava/util/Properties;
    const-string/jumbo v2, "MSBASED"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 663
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSuplType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSuplPort "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSuplSslMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    if-eqz p2, :cond_5

    .line 666
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 668
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 670
    const-string/jumbo v2, "CSC_SUPL_OPMODE"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 671
    const-string/jumbo v2, "CSC_SUPL_HOST"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 672
    const-string/jumbo v2, "CSC_SUPL_VER"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    const-string/jumbo v2, "CSC_SUPL_PORT"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    const-string/jumbo v2, "CSC_SUPL_SSL"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 677
    :cond_6
    const-string/jumbo v2, "CSC_SUPL_SUPLSERVERFROMCSC"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 680
    :try_start_1
    new-instance v11, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps"

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v11, "dir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 682
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 684
    :cond_7
    new-instance v15, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps/cscgps.conf"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 685
    .restart local v15    # "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 686
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 688
    :cond_8
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 690
    .local v18, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    const-string/jumbo v2, "Saved CSC GPS Information"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 691
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 604
    .end local v11    # "dir":Ljava/io/File;
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    .line 653
    .end local v17    # "mProperties_cscgps":Ljava/util/Properties;
    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_1

    .line 655
    :pswitch_1
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_1

    .line 697
    .restart local v11    # "dir":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v17    # "mProperties_cscgps":Ljava/util/Properties;
    .restart local v18    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    .line 698
    .local v12, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 701
    .end local v11    # "dir":Ljava/io/File;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v12

    .line 702
    .restart local v12    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not create file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 692
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v11    # "dir":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v18    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v13

    .line 693
    .local v13, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not store file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 696
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 697
    :catch_4
    move-exception v12

    .line 698
    .restart local v12    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 694
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 696
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 694
    :goto_3
    :try_start_9
    throw v2

    .line 697
    :catch_5
    move-exception v12

    .line 698
    .restart local v12    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDcmSuplIot(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 484
    if-eqz p1, :cond_0

    .line 485
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " server = dcm-supl.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    const-string/jumbo v2, "dcm-supl.com"

    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 483
    :goto_0
    return-void

    .line 488
    :cond_0
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setGnssChipProperty()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 209
    const/4 v6, 0x0

    .line 212
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v8, "/data/system/gps/chip.info"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 215
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v6    # "stream":Ljava/io/FileInputStream;
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .local v3, "i":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 221
    int-to-char v8, v3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 239
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v6, v7

    .line 240
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "Could not open gpsInfo file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    if-eqz v6, :cond_0

    .line 244
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 208
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 224
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 226
    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "chipInfo":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v8, v0

    if-lt v8, v9, :cond_4

    .line 229
    const-string/jumbo v8, "sys.gps.chipvendor"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v8, "sys.gps.chipinfo"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    array-length v8, v0

    const/4 v9, 0x3

    if-lt v8, v9, :cond_2

    .line 233
    const-string/jumbo v8, "sys.gps.swversion"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v6, v7

    .line 242
    .end local v0    # "chipInfo":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    if-eqz v6, :cond_0

    .line 244
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 245
    :catch_1
    move-exception v1

    .line 246
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 235
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "chipInfo":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :cond_4
    :try_start_6
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "Invalid chipInfo"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 245
    .end local v0    # "chipInfo":[Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 241
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 242
    :goto_4
    if-eqz v6, :cond_5

    .line 244
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 241
    :cond_5
    :goto_5
    throw v8

    .line 245
    :catch_3
    move-exception v1

    .line 246
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 241
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 239
    .end local v2    # "file":Ljava/io/File;
    .local v6, "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :cond_6
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private setLppSupport(ZI)V
    .locals 4
    .param p1, "mEnabled"    # Z
    .param p2, "bitmask"    # I

    .prologue
    .line 795
    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLppSupport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    move v0, p1

    .line 803
    .local v0, "enabled":Z
    if-nez p1, :cond_0

    .line 804
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extention()Z

    move-result v0

    .line 805
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_init_extention "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_lpp_support(I)V

    .line 809
    :cond_1
    if-nez p1, :cond_2

    .line 810
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_cleanup_extention()V

    .line 811
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_cleanup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_2
    return-void
.end method

.method private setSKAFEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    .line 445
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1482
    if-nez p1, :cond_0

    return-void

    .line 1484
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 1485
    .local v6, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    new-array v5, v9, [Ljava/lang/String;

    .line 1487
    .local v5, "keyArray":[Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1488
    array-length v9, v5

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v0, v5, v8

    .line 1489
    .local v0, "aKeyArray":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1490
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1488
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1495
    .end local v0    # "aKeyArray":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v8, "/data/system/gps"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1497
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1499
    :cond_3
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "/data/system/gps/secgps.conf"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1501
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 1503
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1504
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1505
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1508
    :cond_5
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1510
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string/jumbo v9, "SECGPS Configuration"

    invoke-virtual {v8, v7, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1511
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1516
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1481
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 1517
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 1518
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1521
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 1522
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not create file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1512
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 1513
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1516
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1517
    :catch_3
    move-exception v2

    .line 1518
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1514
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1516
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1514
    :goto_2
    :try_start_8
    throw v8

    .line 1517
    :catch_4
    move-exception v2

    .line 1518
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "GnssLocationProvider_ex"

    const-string/jumbo v10, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2
.end method

.method private setServer(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 181
    const-string/jumbo v6, "GnssLocationProvider_ex"

    const-string/jumbo v8, "setServer"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string/jumbo v2, ""

    .line 184
    .local v2, "mServerAddr":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 186
    .local v3, "mServerPort":Ljava/lang/String;
    const-string/jumbo v6, "ServerAddr"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    const-string/jumbo v6, "ServerPort"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string/jumbo v6, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setServer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v8, "SUPL_HOST"

    invoke-virtual {v6, v8, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v8, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "/etc/gps.conf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v8, "Generated by GnssLocationProvider."

    invoke-virtual {v6, v5, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 195
    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 196
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "GnssLocationProvider_ex"

    const-string/jumbo v7, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void

    .line 195
    .restart local v1    # "file":Ljava/io/File;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    goto :goto_0

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v6

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_2
    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    :goto_3
    if-eqz v7, :cond_4

    :try_start_7
    throw v7

    :catch_3
    move-exception v8

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_3

    :cond_3
    if-eq v7, v8, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    goto :goto_2

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v6

    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setSktSuplVer()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 466
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "AGPS_TYPE_SUPL_2_0_1_AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplPort:I

    const/4 v1, 0x5

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 465
    return-void
.end method

.method private setSuplByNw()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 283
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "simOperator":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 285
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "mcc":I
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 287
    .local v1, "mnc":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v5

    sget-object v6, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mccTLS:I

    if-ne v0, v5, :cond_1

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS1:I

    if-eq v1, v5, :cond_0

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS2:I

    if-ne v1, v5, :cond_1

    .line 289
    :cond_0
    const-string/jumbo v3, "supl.telusmobility.com"

    .line 290
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v0    # "mcc":I
    .end local v1    # "mnc":I
    .end local v3    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 294
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "supl.google.com"

    .line 295
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method extension_CMCCxtraDownloadRequest()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 555
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_0

    .line 556
    return v6

    .line 558
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "agps_function_switch"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 560
    .local v1, "isAgpsSwitchMode":I
    const/4 v2, 0x0

    .line 561
    .local v2, "result":Z
    const-string/jumbo v3, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, isAgpsSwitchMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    packed-switch v1, :pswitch_data_0

    .line 584
    const/4 v2, 0x1

    .line 585
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :goto_0
    if-eqz v2, :cond_3

    .line 589
    invoke-direct {p0, v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 594
    :goto_1
    return v2

    .line 565
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_2

    .line 566
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 567
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 568
    const/4 v2, 0x1

    .line 569
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :cond_1
    const/4 v2, 0x0

    .line 572
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v2, 0x1

    .line 576
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :pswitch_1
    const/4 v2, 0x0

    .line 581
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_1

    .line 563
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method extension_agps_ni_message([BI)V
    .locals 0
    .param p1, "supl_init"    # [B
    .param p2, "length"    # I

    .prologue
    .line 1871
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_ni_message_for_emergency_supl([BI)V

    .line 1869
    return-void
.end method

.method extension_checkSmsSuplInit(Z)I
    .locals 3
    .param p1, "mEnabled"    # Z

    .prologue
    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "result":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 901
    :cond_0
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_2

    .line 904
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 906
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_2
    if-eqz p1, :cond_3

    .line 909
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 910
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_6

    .line 915
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v1, :cond_4

    .line 917
    const/4 v0, 0x1

    .line 918
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    .line 922
    :cond_4
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_5

    .line 923
    or-int/lit8 v0, v0, 0x2

    .line 926
    :cond_5
    return v0

    .line 911
    :cond_6
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 912
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 913
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 914
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_4

    goto :goto_0
.end method

.method extension_checkWapPushMsg(Z)Z
    .locals 4
    .param p1, "mEnabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 822
    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "extension_checkWapPushMsg(), mEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    if-nez p1, :cond_0

    .line 824
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    .line 825
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 823
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    .line 827
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    .line 828
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    .line 829
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method extension_checkWapSuplInit(ZLandroid/net/ConnectivityManager;)I
    .locals 13
    .param p1, "mEnabled"    # Z
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 936
    const/4 v10, 0x0

    .line 937
    .local v10, "result":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    .line 939
    :cond_0
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "agps_function_switch"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 942
    .local v8, "isAgpsSwitchMode":I
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "++checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 947
    .local v9, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "New message notification LCD on"

    .line 946
    const v1, 0x1000001a

    invoke-virtual {v9, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 948
    .local v11, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 949
    const-wide/16 v0, 0x1388

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 950
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "--checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    if-ne v8, v12, :cond_2

    .line 953
    if-eqz p2, :cond_1

    .line 954
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 955
    .local v7, "info":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 956
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    return v10

    .line 960
    .end local v7    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return v10

    .line 963
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_9

    .line 964
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v11    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_3
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_4

    .line 972
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 973
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_5

    .line 977
    const-string/jumbo v2, "221.148.242.107"

    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 978
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_5
    if-eqz p1, :cond_6

    .line 982
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 983
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    .line 988
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v0, :cond_7

    .line 990
    const/4 v10, 0x1

    .line 991
    iput-boolean v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    .line 995
    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    .line 996
    or-int/lit8 v10, v10, 0x2

    .line 999
    :cond_8
    return v10

    .line 966
    .restart local v8    # "isAgpsSwitchMode":I
    .restart local v9    # "pm":Landroid/os/PowerManager;
    .restart local v11    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_9
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkWapSuplInit NI : //agps off isAgpsSwitchMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return v10

    .line 984
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v11    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_a
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 985
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 986
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 987
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_7

    goto :goto_0
.end method

.method extension_getExtraConfigurationString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1287
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1326
    .local v2, "extraConfigProperty":Ljava/util/Properties;
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->-getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I

    move-result-object v4

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1423
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getCpAgpsProfile()I

    move-result v4

    if-lez v4, :cond_0

    .line 1424
    const-string/jumbo v4, "CP_AGPS_ENABLE_PROFILE"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1427
    :cond_0
    const-string/jumbo v3, ""

    .line 1429
    .local v3, "mStringExtraConfigProperty":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1430
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v4, "Extra Configuration"

    invoke-virtual {v2, v0, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1435
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v3

    .line 1328
    .end local v3    # "mStringExtraConfigProperty":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1329
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1330
    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1331
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1332
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1333
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1334
    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1335
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1336
    const-string/jumbo v4, "SUPL_LPP_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1337
    const-string/jumbo v4, "SUPL_OTDOA_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1338
    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1339
    const-string/jumbo v4, "RTI_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1340
    const-string/jumbo v4, "EE_SYNC_THRESHOLD_DAYS"

    const-string/jumbo v5, "3"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1341
    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1342
    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1343
    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1346
    :pswitch_2
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1347
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1348
    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1349
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1350
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1351
    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1352
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1353
    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1354
    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1355
    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1356
    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1359
    :pswitch_3
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1360
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1361
    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1362
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1363
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1364
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1365
    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1366
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1367
    const-string/jumbo v4, "LPP_UP_ECID_CAPABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1368
    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1369
    const-string/jumbo v4, "RTI_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1370
    const-string/jumbo v4, "EE_SYNC_THRESHOLD_DAYS"

    const-string/jumbo v5, "3"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1371
    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1372
    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1373
    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1376
    :pswitch_4
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1377
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1378
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1382
    :pswitch_5
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1383
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1386
    :pswitch_6
    const-string/jumbo v4, "USE_NI_SLP_ADDRESS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1391
    :pswitch_7
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1394
    :pswitch_8
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "600"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1395
    const-string/jumbo v4, "SUPL_LOG_ENABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1396
    const-string/jumbo v4, "SUPL_LOG_PATH"

    const-string/jumbo v5, "/data/AGPSLog.txt"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1397
    const-string/jumbo v4, "SUPL_NI_GPS_ICON"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1398
    const-string/jumbo v4, "NO_DATA_STANDALONE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1399
    const-string/jumbo v4, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1402
    :pswitch_9
    const-string/jumbo v4, "SUPL_UT1_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1403
    const-string/jumbo v4, "SUPL_UT2_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1404
    const-string/jumbo v4, "SUPL_UT3_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1405
    const-string/jumbo v4, "TCP_CONNETION_TIMEOUT"

    const-string/jumbo v5, "30"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1406
    const-string/jumbo v4, "SUPL_NTT_DOCOMO"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1409
    :pswitch_a
    const-string/jumbo v4, "USE_NI_SLP_ADDRESS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1410
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1411
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1412
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1413
    const-string/jumbo v4, "SUPL_LPP_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1414
    const-string/jumbo v4, "SUPL_OTDOA_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1432
    .restart local v3    # "mStringExtraConfigProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1433
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 4
    .param p1, "mBroadcastReciever"    # Landroid/content/BroadcastReceiver;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 839
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 840
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 841
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 843
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 844
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 849
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 850
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 838
    return-void
.end method

.method extension_mBroadcastReciever(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 714
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 716
    .local v5, "result":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 718
    .local v6, "result_mask":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v8, v9, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_1

    .line 719
    :cond_0
    const-string/jumbo v8, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 720
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->setServer(Landroid/content/Intent;)V

    .line 730
    :cond_1
    :goto_0
    const-string/jumbo v8, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 731
    const/4 v6, 0x1

    .line 732
    const-string/jumbo v8, "packet_data"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_data"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 733
    const-string/jumbo v8, "packet_length"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_length"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 735
    :cond_2
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 736
    const-string/jumbo v8, "ss"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 737
    .local v7, "simState":Ljava/lang/String;
    const-string/jumbo v8, "GnssLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SIM_STATE_CHANGED received : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string/jumbo v8, "LOADED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 739
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getLppBitmask()I

    move-result v3

    .line 740
    .local v3, "mask":I
    iget v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    if-eq v3, v8, :cond_3

    .line 741
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    .line 742
    invoke-direct {p0, p2, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    .line 746
    .end local v3    # "mask":I
    .end local v7    # "simState":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "result_mask"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 747
    return-object v5

    .line 721
    :cond_4
    const-string/jumbo v8, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 722
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 723
    .local v2, "mSuplServerHost":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v9, "SUPL_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 724
    .local v4, "portString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v1, "getAgpsProfile":Landroid/content/Intent;
    const-string/jumbo v8, "ServerAddr"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    const-string/jumbo v8, "ServerPort"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected extension_printSvStatus([I[FI)V
    .locals 10
    .param p1, "prnWithFlags"    # [I
    .param p2, "cn0s"    # [F
    .param p3, "svCount"    # I

    .prologue
    const/4 v8, 0x5

    .line 861
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 862
    .local v3, "inViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v1, "inUsedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_6

    .line 865
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 866
    aget v7, p2, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    aget v7, p1, v0

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    aget v7, p2, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 869
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 870
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 872
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .local v6, "sbInView":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .local v5, "sbInUsed":Ljava/lang/StringBuilder;
    const/4 v4, 0x5

    .line 876
    .local v4, "inViewSize":I
    const/4 v2, 0x5

    .line 877
    .local v2, "inUsedSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 878
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 880
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 881
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 882
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_5

    .line 883
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 885
    :cond_5
    const-string/jumbo v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SV Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / TOP5(v) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / TOP5(u) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v0    # "i":I
    .end local v2    # "inUsedSize":I
    .end local v4    # "inViewSize":I
    .end local v5    # "sbInUsed":Ljava/lang/StringBuilder;
    .end local v6    # "sbInView":Ljava/lang/StringBuilder;
    :cond_6
    return-void
.end method

.method public extension_reloadMakeAutoSuplUrl(Z)V
    .locals 7
    .param p1, "mNetworkAvailable"    # Z

    .prologue
    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1028
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 1029
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1030
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1031
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1032
    const/4 v1, 0x4

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 1033
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 1027
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_0

    .line 1037
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1038
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v2

    .line 1039
    .restart local v2    # "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1040
    const/4 v1, 0x3

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 1041
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto :goto_0
.end method

.method public extension_reportAGpsStatus()V
    .locals 1

    .prologue
    .line 1866
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .line 1865
    return-void
.end method

.method protected extension_reportGeofenceAddStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1659
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1661
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1664
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1665
    :catch_0
    move-exception v0

    .line 1666
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected extension_reportGeofencePauseStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1697
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1699
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1702
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1703
    :catch_0
    move-exception v0

    .line 1704
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected extension_reportGeofenceRemoveStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1678
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1680
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1683
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected extension_reportGeofenceResumeStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1716
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1718
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1721
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    :cond_0
    :goto_0
    return-void

    .line 1722
    :catch_0
    move-exception v0

    .line 1723
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceStatus(IIDDDFFFJ)V
    .locals 15
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1640
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1642
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1645
    :try_start_0
    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected extension_reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 21
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1618
    const-string/jumbo v4, "sec_location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v3

    .line 1620
    .local v3, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v3, :cond_0

    const/16 v4, 0x2710

    move/from16 v0, p1

    if-le v0, v4, :cond_0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move-wide/from16 v18, p15

    .line 1623
    :try_start_0
    invoke-interface/range {v3 .. v19}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    :cond_0
    :goto_0
    return-void

    .line 1625
    :catch_0
    move-exception v2

    .line 1626
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "GnssLocationProvider_ex"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "mEnabled"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1190
    const/4 v4, 0x0

    .line 1191
    .local v4, "result":Z
    const-string/jumbo v5, "set_csc_parameters"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1192
    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GnssLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;Z)V

    .line 1193
    const/4 v4, 0x1

    .line 1277
    :cond_0
    :goto_0
    return v4

    .line 1194
    :cond_1
    const-string/jumbo v5, "com.skt.intent.action.AGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1195
    const-string/jumbo v5, "opType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1196
    .local v3, "opType":Ljava/lang/String;
    const-string/jumbo v5, "cmdType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1198
    .local v0, "cmdType":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1199
    const-string/jumbo v5, "msAssisted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "msBased"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1200
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1208
    :cond_3
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1203
    :cond_4
    const-string/jumbo v5, "off"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1204
    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1205
    const-string/jumbo v5, "sys.sktgps"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1209
    .end local v0    # "cmdType":Ljava/lang/String;
    .end local v3    # "opType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "setOllehServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1210
    const-string/jumbo v5, "host"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, "hostURL":Ljava/lang/String;
    const-string/jumbo v5, "port"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1212
    .local v1, "hostPort":I
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 1213
    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    .line 1214
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    .line 1215
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "host :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " port ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1217
    .end local v1    # "hostPort":I
    .end local v2    # "hostURL":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "setNativeServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1218
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setNativeServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 1220
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1221
    :cond_7
    const-string/jumbo v5, "activateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1222
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateGPS is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1223
    :cond_8
    const-string/jumbo v5, "deactivateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1224
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateGPS is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1225
    :cond_9
    const-string/jumbo v5, "activateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1226
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateNLP is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1227
    :cond_a
    const-string/jumbo v5, "deactivateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1228
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateNLP is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1229
    :cond_b
    const-string/jumbo v5, "activateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1230
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1232
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1233
    :cond_c
    const-string/jumbo v5, "deactivateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1234
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1236
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1237
    :cond_d
    const-string/jumbo v5, "setMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1238
    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    .line 1239
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1241
    :cond_e
    const-string/jumbo v5, "getMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1242
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    const-string/jumbo v5, "mode"

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1244
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1245
    :cond_f
    const-string/jumbo v5, "set_use_udp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1246
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_use_udp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "use_udp"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const-string/jumbo v5, "use_udp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_11

    .line 1248
    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    if-nez v5, :cond_10

    .line 1249
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    .line 1250
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->checkUDPSuplInit()V

    .line 1255
    :cond_10
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1253
    :cond_11
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    goto :goto_2

    .line 1256
    :cond_12
    const-string/jumbo v5, "set_dcm_iot"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1257
    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_dcm_iot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dcm_iot"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const-string/jumbo v5, "dcm_iot"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->setDcmSuplIot(Z)V

    .line 1259
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1260
    :cond_13
    const-string/jumbo v5, "request_running"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1261
    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mStarted:Z

    return v5

    .line 1262
    :cond_14
    const-string/jumbo v5, "set_lpp_support"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1263
    const-string/jumbo v5, "set_lpp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p3, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    goto/16 :goto_0

    .line 1264
    :cond_15
    const-string/jumbo v5, "setSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1265
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSecGpsConf(Landroid/os/Bundle;)V

    .line 1267
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1268
    :cond_16
    const-string/jumbo v5, "deleteSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1269
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deleteSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->deleteSecGpsConf()V

    .line 1271
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1272
    :cond_17
    const-string/jumbo v5, "supl_hostname_to_nsflp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1274
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendSuplHostNameToNsflp()V

    .line 1275
    return v8
.end method

.method protected extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;Z)I
    .locals 3
    .param p1, "mPositionMode"    # I
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "singleShot"    # Z

    .prologue
    .line 1556
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_9

    .line 1557
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->extSelectUseGooglePositionMode(I)I

    move-result p1

    .line 1561
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    .line 1562
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extChnSelectPositionMode()I

    move-result p1

    .line 1563
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CHN startNavigating mPositionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1567
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const/4 p1, 0x0

    .line 1571
    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1572
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_gnss_control(I)V

    .line 1576
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1577
    const-string/jumbo v0, "sys.sktgps"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    :cond_6
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    .line 1582
    :cond_7
    if-eqz p3, :cond_8

    .line 1583
    const/4 p1, 0x2

    .line 1584
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating extension_setStartNavigatingModes For JAPAN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_8
    return p1

    .line 1556
    :cond_9
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 1561
    :cond_a
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    goto/16 :goto_1
.end method

.method protected extension_set_supl_server()V
    .locals 13

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSuplServerFromCSC()V

    .line 1123
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1124
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->-getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I

    move-result-object v0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1177
    :pswitch_0
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v7, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1128
    :pswitch_1
    const-string/jumbo v2, "lbs.geo.t-mobile.com"

    const/4 v1, 0x3

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1131
    :pswitch_2
    const/4 v2, 0x0

    .line 1132
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1133
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1134
    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1141
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    const/4 v4, 0x4

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1145
    :pswitch_4
    const-string/jumbo v5, "location2.kddi.ne.jp"

    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1148
    :pswitch_5
    const-string/jumbo v5, "supl.telusmobility.com"

    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1152
    :pswitch_6
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1155
    :pswitch_7
    const/4 v5, 0x0

    .line 1156
    .local v5, "suplServerNwConfig":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v5

    .line 1157
    .local v5, "suplServerNwConfig":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1158
    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1161
    :cond_2
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1165
    .end local v5    # "suplServerNwConfig":Ljava/lang/String;
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    goto/16 :goto_0

    .line 1169
    :pswitch_9
    const-string/jumbo v8, "221.176.0.55"

    const/4 v7, 0x1

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1173
    :pswitch_a
    const-string/jumbo v8, "supl.iusacell.com"

    const/4 v7, 0x3

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public extension_set_xtra_downloaded_time()V
    .locals 5

    .prologue
    .line 1009
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_0

    .line 1010
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_2

    .line 1012
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1013
    .local v2, "timestamp":J
    const-string/jumbo v1, "persist.sys.xtra_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.angryGps.XtraSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1008
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "timestamp":J
    :cond_1
    return-void

    .line 1011
    :cond_2
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_1

    goto :goto_0
.end method

.method protected extension_stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1598
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1599
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1600
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const-string/jumbo v0, "sys.sktgps"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 1604
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 1605
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_1
    return-void
.end method

.method public getInitCalledByNI()Z
    .locals 1

    .prologue
    .line 1744
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    return v0
.end method

.method getWifiOnlyModel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1735
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected init_GnssLocationPrivider_samsung(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "mProperties"    # Ljava/util/Properties;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    .line 162
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    .line 163
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 164
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    .line 166
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setGnssChipProperty()V

    .line 159
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public provideSuplFqdn(Ljava/lang/String;)V
    .locals 14
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 1797
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "provideSuplFqdn :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    if-eqz p1, :cond_0

    const-string/jumbo v10, ""

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    .line 1801
    .local v4, "networks":[Landroid/net/Network;
    const/4 v9, 0x0

    .line 1802
    .local v9, "suplNetwork":Landroid/net/Network;
    if-eqz v4, :cond_4

    .line 1803
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v4

    if-ge v3, v10, :cond_4

    .line 1804
    aget-object v10, v4, v3

    if-nez v10, :cond_3

    .line 1803
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1805
    :cond_3
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v11, v4, v3

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1806
    .local v5, "ntwkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_2

    .line 1807
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "network["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "] : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v4, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", Capability : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v13, v4, v3

    invoke-virtual {v12, v13}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v11, v4, v3

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1809
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1810
    aget-object v9, v4, v3

    .line 1817
    .end local v3    # "i":I
    .end local v5    # "ntwkInfo":Landroid/net/NetworkInfo;
    .end local v9    # "suplNetwork":Landroid/net/Network;
    :cond_4
    if-nez v9, :cond_5

    .line 1818
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "No default network is currently active."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1821
    :cond_5
    :try_start_0
    invoke-virtual {v9, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .line 1822
    const/4 v8, 0x0

    .line 1824
    .local v8, "retAddr":Ljava/net/InetAddress;
    const/4 v1, 0x0

    .local v1, "flag_v4_set":Z
    const/4 v2, 0x0

    .line 1825
    .local v2, "flag_v6_set":Z
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    instance-of v10, v10, Ljava/net/Inet6Address;

    if-eqz v10, :cond_8

    .line 1826
    if-nez v2, :cond_6

    .line 1827
    const/4 v2, 0x1

    .line 1828
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Got IPv6 InetAddress : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .line 1837
    .end local v8    # "retAddr":Ljava/net/InetAddress;
    :cond_6
    :goto_2
    const/4 v6, 0x0

    .line 1838
    .local v6, "resInetAddress":Ljava/net/InetAddress;
    if-eqz v8, :cond_9

    .line 1839
    move-object v6, v8

    .line 1843
    .end local v6    # "resInetAddress":Ljava/net/InetAddress;
    :goto_3
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "DNS resolve result : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    if-nez v1, :cond_7

    if-eqz v2, :cond_0

    .line 1846
    :cond_7
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1847
    const/4 v11, 0x3

    .line 1846
    invoke-virtual {v10, v11, v6}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v7

    .line 1850
    .local v7, "result":Z
    if-nez v7, :cond_a

    .line 1851
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error requesting route to host: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :goto_4
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_set_supl_host_ip(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1857
    .end local v1    # "flag_v4_set":Z
    .end local v2    # "flag_v6_set":Z
    .end local v7    # "result":Z
    :catch_0
    move-exception v0

    .line 1858
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "UnknownHostException occured"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    .line 1831
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "flag_v4_set":Z
    .restart local v2    # "flag_v6_set":Z
    .restart local v8    # "retAddr":Ljava/net/InetAddress;
    :cond_8
    if-nez v1, :cond_6

    .line 1832
    const/4 v1, 0x1

    .line 1833
    :try_start_1
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Got IPv4 InetAddress : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .local v8, "retAddr":Ljava/net/InetAddress;
    goto/16 :goto_2

    .line 1841
    .end local v8    # "retAddr":Ljava/net/InetAddress;
    .restart local v6    # "resInetAddress":Ljava/net/InetAddress;
    :cond_9
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "DNS resolve failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1853
    .end local v6    # "resInetAddress":Ljava/net/InetAddress;
    .restart local v7    # "result":Z
    :cond_a
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Successfully requested route to host: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public reportVendorExtraAgpsStatus(IIIII)V
    .locals 3
    .param p1, "isSuplServerConnected"    # I
    .param p2, "lastSuplMessage"    # I
    .param p3, "isRefLocationReceived"    # I
    .param p4, "isRefTimeReceived"    # I
    .param p5, "isEEValid"    # I

    .prologue
    .line 1876
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportVendorExtraAgpsStatus, isSuplServerConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastSuplMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1877
    const-string/jumbo v2, ", isRefLocationReceived = "

    .line 1876
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1877
    const-string/jumbo v2, ", isRefTimeReceived = "

    .line 1876
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1877
    const-string/jumbo v2, ", isEEValid = "

    .line 1876
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    return-void
.end method

.method public reportVendorExtraAssertMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1881
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "method_reportVendorExtraAssertMessage, message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1884
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "assert_msg"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1887
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x12c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1888
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1890
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    .line 1880
    return-void
.end method
