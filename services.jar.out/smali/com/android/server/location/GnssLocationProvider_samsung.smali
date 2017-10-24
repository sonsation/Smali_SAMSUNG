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

.field private final TurkeyVodafoneOperator:Ljava/lang/String;

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

    .line 156
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

    .line 158
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
    const-string/jumbo v0, "28602"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->TurkeyVodafoneOperator:Ljava/lang/String;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    .line 152
    iput-object v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    .line 158
    return-void
.end method

.method private checkUDPSuplInit()V
    .locals 3

    .prologue
    .line 1766
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "start UDP socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider_samsung$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider_samsung$1;-><init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1799
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1765
    return-void
.end method

.method private deleteSecGpsConf()V
    .locals 4

    .prologue
    .line 1547
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "deleteSecGpsConf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1552
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1553
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "secgps.conf deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not delete secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private extChnSelectPositionMode()I
    .locals 5

    .prologue
    .line 525
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v1, 0x0

    .line 528
    .local v1, "chnPositionMode":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_1

    .line 529
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 530
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_CMCCxtraDownloadRequest()Z

    move-result v0

    .line 532
    .local v0, "agpsSwitchOff":Z
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    if-eqz v0, :cond_4

    .line 533
    :cond_0
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v1, 0x0

    .line 541
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

    .line 542
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 543
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_3
    return v1

    .line 536
    .restart local v0    # "agpsSwitchOff":Z
    .restart local v2    # "phone":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v1, 0x1

    goto :goto_0

    .line 541
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
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 500
    move v12, p1

    .line 501
    .local v12, "mPositionMode":I
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v12, 0x1

    .line 503
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, " SKT GPS mode : SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 515
    :goto_0
    return v12

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 508
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, " KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    const/4 v1, 0x3

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 511
    :cond_1
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode() : Google SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 513
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/4 v6, 0x4

    const/16 v8, 0x1c6b

    move-object v5, p0

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
    .line 1913
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    .line 1914
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 1915
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendSuplHostNameToNsflp()V

    .line 1912
    return-void
.end method

.method private getCpAgpsProfile()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1458
    const-string/jumbo v1, "ril.product_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, "productCode":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1460
    const-string/jumbo v1, "ECO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "EBE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1461
    const-string/jumbo v1, "ALE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1460
    if-nez v1, :cond_0

    .line 1461
    const-string/jumbo v1, "EON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1460
    if-eqz v1, :cond_1

    .line 1469
    :cond_0
    return v3

    .line 1471
    :cond_1
    const-string/jumbo v1, "COB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "COM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1477
    :cond_2
    return v3

    .line 1481
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private getLppBitmask()I
    .locals 11

    .prologue
    .line 759
    const/4 v3, -0x1

    .line 761
    .local v3, "ret":I
    const/4 v1, 0x0

    .line 762
    .local v1, "isRJIO":Z
    const/4 v2, 0x0

    .line 764
    .local v2, "isTurkeyVodafone":Z
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 765
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 766
    .local v6, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 768
    .local v5, "subscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v5, :cond_2

    .line 769
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 770
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 771
    .local v4, "subId":I
    const-string/jumbo v8, "GnssLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SubscriptionId is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 772
    const-string/jumbo v10, ", SimOperatorName = "

    .line 771
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 772
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v10

    .line 771
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 773
    const-string/jumbo v10, ", SimOperator = "

    .line 771
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 773
    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    .line 771
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string/jumbo v8, "Jio 4G"

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 776
    const/4 v1, 0x1

    .line 778
    :cond_0
    const-string/jumbo v8, "28602"

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 779
    const/4 v2, 0x1

    .line 769
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    .end local v0    # "i":I
    .end local v4    # "subId":I
    :cond_2
    if-eqz v1, :cond_4

    .line 785
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "JIO 4G operator"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v3, 0x7

    .line 797
    :cond_3
    :goto_1
    return v3

    .line 787
    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_5

    .line 788
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "getVendor: TUR"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    if-eqz v2, :cond_3

    .line 790
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "VODAFONE operator: LPP enable"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v3, 0x7

    goto :goto_1

    .line 793
    :cond_5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_3

    .line 794
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "No Operator LPP Disable"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSKAFEnable()Z
    .locals 3

    .prologue
    .line 456
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

    .line 457
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method private getSuplServerFromCSC()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1061
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, "getSuplServerFromCSC"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iput v14, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1065
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/data/system/gps/cscgps.conf"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1067
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    return-void

    .line 1070
    .end local v8    # "file":Ljava/io/File;
    :catch_0
    move-exception v7

    .line 1071
    .local v7, "e":Ljava/lang/SecurityException;
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_0
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 1076
    .local v9, "mProperties_cscgps":Ljava/util/Properties;
    :try_start_1
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/data/system/gps/cscgps.conf"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1077
    .restart local v8    # "file":Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1079
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_2
    invoke-virtual {v9, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1085
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1094
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string/jumbo v11, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v9, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1095
    .local v1, "SuplServerFromCSC_s":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    .line 1097
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1104
    :cond_1
    :goto_1
    iget v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 1105
    const-string/jumbo v11, "CSC_SUPL_OPMODE"

    invoke-virtual {v9, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 1106
    const-string/jumbo v11, "CSC_SUPL_HOST"

    invoke-virtual {v9, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 1108
    const-string/jumbo v11, "CSC_SUPL_VER"

    const-string/jumbo v12, "1"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1109
    .local v3, "SuplType_s":Ljava/lang/String;
    const-string/jumbo v11, "CSC_SUPL_PORT"

    const-string/jumbo v12, "7276"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, "SuplPort_s":Ljava/lang/String;
    const-string/jumbo v11, "CSC_SUPL_SSL"

    const-string/jumbo v12, "0"

    invoke-virtual {v9, v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1113
    .local v2, "SuplSslMode_s":Ljava/lang/String;
    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 1114
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 1115
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7

    .line 1123
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

    .line 1059
    return-void

    .line 1086
    .end local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 1087
    .local v4, "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1090
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 1091
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1080
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 1081
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not load file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1085
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1082
    :goto_3
    return-void

    .line 1086
    :catch_4
    move-exception v4

    .line 1087
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_9
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 1083
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 1085
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 1083
    :goto_4
    :try_start_b
    throw v11

    .line 1086
    :catch_5
    move-exception v4

    .line 1087
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "GnssLocationProvider_ex"

    const-string/jumbo v13, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 1098
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/File;
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "SuplServerFromCSC_s":Ljava/lang/String;
    :catch_6
    move-exception v6

    .line 1099
    .local v6, "e":Ljava/lang/NumberFormatException;
    iput v14, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1100
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

    .line 1117
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v0    # "SuplPort_s":Ljava/lang/String;
    .restart local v2    # "SuplSslMode_s":Ljava/lang/String;
    .restart local v3    # "SuplType_s":Ljava/lang/String;
    :catch_7
    move-exception v6

    .line 1118
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    iput v14, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 1119
    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, "[NumberFormatException] failed to convert supl information"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    .locals 3

    .prologue
    .line 326
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    :cond_0
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    .line 328
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 329
    :cond_1
    const-string/jumbo v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    .line 332
    :cond_2
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    .line 334
    .local v0, "vendor":Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    const-string/jumbo v1, "TMB"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    .line 372
    :cond_3
    :goto_0
    return-object v0

    .line 336
    :cond_4
    const-string/jumbo v1, "ATT"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 337
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 338
    :cond_5
    const-string/jumbo v1, "DCM"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 339
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 340
    :cond_6
    const-string/jumbo v1, "KDI"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 341
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 342
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

    .line 343
    :cond_8
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    .line 344
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

    .line 345
    :cond_a
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 346
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

    .line 347
    :cond_c
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 348
    :cond_d
    const-string/jumbo v1, "XAC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 349
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 350
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

    .line 351
    :cond_f
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 352
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

    .line 353
    :cond_11
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 354
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

    .line 355
    :cond_13
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 356
    :cond_14
    const-string/jumbo v1, "CHM"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 357
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 358
    :cond_15
    const-string/jumbo v1, "CTC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 359
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 360
    :cond_16
    const-string/jumbo v1, "CHU"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 361
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 362
    :cond_17
    const-string/jumbo v1, "CHC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 363
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 364
    :cond_18
    const-string/jumbo v1, "MNX"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 365
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 366
    :cond_19
    const-string/jumbo v1, "IUS"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 367
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 368
    :cond_1a
    const-string/jumbo v1, "SWC"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 369
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    .line 370
    :cond_1b
    const-string/jumbo v1, "TUR"

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0
.end method

.method private static isUSAMarket()Z
    .locals 5

    .prologue
    .line 377
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 379
    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
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

    .line 383
    const-string/jumbo v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    const/4 v1, 0x1

    .line 399
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

    .line 400
    return v1

    .line 385
    .end local v1    # "rc":Z
    :cond_2
    const-string/jumbo v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 386
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 387
    .end local v1    # "rc":Z
    :cond_3
    const-string/jumbo v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 388
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 389
    .end local v1    # "rc":Z
    :cond_4
    const-string/jumbo v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 390
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 391
    .end local v1    # "rc":Z
    :cond_5
    const-string/jumbo v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 392
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 393
    .end local v1    # "rc":Z
    :cond_6
    const-string/jumbo v2, "XAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 394
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 395
    .end local v1    # "rc":Z
    :cond_7
    const-string/jumbo v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 396
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 398
    .end local v1    # "rc":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "rc":Z
    goto :goto_0
.end method

.method static isUSCDMAMarket()Z
    .locals 5

    .prologue
    .line 412
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    const/4 v1, 0x1

    .line 434
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

    .line 435
    return v1

    .line 416
    .end local v1    # "rc":Z
    :cond_0
    const-string/jumbo v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 418
    .end local v1    # "rc":Z
    :cond_1
    const-string/jumbo v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 420
    .end local v1    # "rc":Z
    :cond_2
    const-string/jumbo v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 421
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 422
    .end local v1    # "rc":Z
    :cond_3
    const-string/jumbo v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 423
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 424
    .end local v1    # "rc":Z
    :cond_4
    const-string/jumbo v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 425
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 426
    .end local v1    # "rc":Z
    :cond_5
    const-string/jumbo v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 427
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 428
    .end local v1    # "rc":Z
    :cond_6
    const-string/jumbo v2, "TFNVZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 429
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 430
    .end local v1    # "rc":Z
    :cond_7
    const-string/jumbo v2, "ACG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 431
    const/4 v1, 0x1

    .restart local v1    # "rc":Z
    goto :goto_0

    .line 433
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

    .line 263
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    .local v3, "szUrl":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 265
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "SimOperator":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 268
    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 269
    .local v1, "mcc":I
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 270
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

    .line 271
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

    .line 272
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 275
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
    .line 1925
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

    .line 1927
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1928
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "supl_hostname"

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1931
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x190

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1932
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1934
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    .line 1924
    return-void
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .locals 19
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 606
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "setCscParameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    if-nez p1, :cond_0

    .line 609
    return-void

    .line 611
    :cond_0
    const/16 v16, 0x0

    .line 613
    .local v16, "isDeleted":Z
    :try_start_0
    new-instance v15, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps/cscgps.conf"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 614
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 615
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 616
    const/16 v16, 0x1

    .line 618
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

    .line 624
    .end local v15    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 625
    const-string/jumbo v2, "MSBASED"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    .line 626
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 627
    const-string/jumbo v2, "supl.google.com"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 628
    const/16 v2, 0x1c6b

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 629
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 630
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 631
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

    .line 632
    if-eqz p2, :cond_3

    .line 633
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

    .line 637
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 638
    const-string/jumbo v9, "TRUE"

    .line 639
    .local v9, "CscParamIsEmpty":Ljava/lang/String;
    const-string/jumbo v2, "is_empty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 640
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

    .line 642
    const-string/jumbo v2, "TRUE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 643
    return-void

    .line 620
    .end local v9    # "CscParamIsEmpty":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 621
    .local v14, "e":Ljava/lang/SecurityException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 646
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

    .line 647
    const-string/jumbo v2, "hslp_addr"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    .line 648
    const-string/jumbo v2, "hslp_port"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    .line 649
    const-string/jumbo v2, "ssl"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    .line 650
    const-string/jumbo v2, "ssl_cert"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    .line 651
    const-string/jumbo v2, "supl_ver"

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 653
    .local v10, "SuplVer":I
    packed-switch v10, :pswitch_data_0

    .line 659
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    .line 662
    :goto_1
    new-instance v17, Ljava/util/Properties;

    invoke-direct/range {v17 .. v17}, Ljava/util/Properties;-><init>()V

    .line 663
    .local v17, "mProperties_cscgps":Ljava/util/Properties;
    const-string/jumbo v2, "MSBASED"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 664
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

    .line 666
    if-eqz p2, :cond_5

    .line 667
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

    .line 669
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    .line 671
    const-string/jumbo v2, "CSC_SUPL_OPMODE"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 672
    const-string/jumbo v2, "CSC_SUPL_HOST"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 673
    const-string/jumbo v2, "CSC_SUPL_VER"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 674
    const-string/jumbo v2, "CSC_SUPL_PORT"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 675
    const-string/jumbo v2, "CSC_SUPL_SSL"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 678
    :cond_6
    const-string/jumbo v2, "CSC_SUPL_SUPLSERVERFROMCSC"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 681
    :try_start_1
    new-instance v11, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps"

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 682
    .local v11, "dir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 683
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 685
    :cond_7
    new-instance v15, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps/cscgps.conf"

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    .restart local v15    # "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 687
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 689
    :cond_8
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 691
    .local v18, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    const-string/jumbo v2, "Saved CSC GPS Information"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 692
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 697
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 605
    .end local v11    # "dir":Ljava/io/File;
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    .line 654
    .end local v17    # "mProperties_cscgps":Ljava/util/Properties;
    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_1

    .line 656
    :pswitch_1
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_1

    .line 698
    .restart local v11    # "dir":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v17    # "mProperties_cscgps":Ljava/util/Properties;
    .restart local v18    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    .line 699
    .local v12, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 702
    .end local v11    # "dir":Ljava/io/File;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v12

    .line 703
    .restart local v12    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not create file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 693
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v11    # "dir":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v18    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v13

    .line 694
    .local v13, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not store file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 697
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 698
    :catch_4
    move-exception v12

    .line 699
    .restart local v12    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 695
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 697
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 695
    :goto_3
    :try_start_9
    throw v2

    .line 698
    :catch_5
    move-exception v12

    .line 699
    .restart local v12    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 653
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

    .line 485
    if-eqz p1, :cond_0

    .line 486
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

    .line 487
    const-string/jumbo v2, "dcm-supl.com"

    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 484
    :goto_0
    return-void

    .line 489
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

    .line 210
    const/4 v6, 0x0

    .line 213
    .local v6, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v8, "/data/system/gps/chip.info"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 216
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v6    # "stream":Ljava/io/FileInputStream;
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v5, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v3

    .local v3, "i":I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_1

    .line 222
    int-to-char v8, v3

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 240
    .end local v3    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v6, v7

    .line 241
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "Could not open gpsInfo file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    if-eqz v6, :cond_0

    .line 245
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 209
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 225
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v5    # "sb":Ljava/lang/StringBuffer;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 227
    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "chipInfo":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v8, v0

    if-lt v8, v9, :cond_4

    .line 230
    const-string/jumbo v8, "sys.gps.chipvendor"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v8, "sys.gps.chipinfo"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    array-length v8, v0

    const/4 v9, 0x3

    if-lt v8, v9, :cond_2

    .line 234
    const-string/jumbo v8, "sys.gps.swversion"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    move-object v6, v7

    .line 243
    .end local v0    # "chipInfo":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    :cond_3
    :goto_3
    if-eqz v6, :cond_0

    .line 245
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 246
    :catch_1
    move-exception v1

    .line 247
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 236
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

    .line 246
    .end local v0    # "chipInfo":[Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 243
    :goto_4
    if-eqz v6, :cond_5

    .line 245
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 242
    :cond_5
    :goto_5
    throw v8

    .line 246
    :catch_3
    move-exception v1

    .line 247
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 242
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 240
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
    .line 807
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

    .line 814
    move v0, p1

    .line 815
    .local v0, "enabled":Z
    if-nez p1, :cond_0

    .line 816
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extention()Z

    move-result v0

    .line 817
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_init_extention "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_lpp_support(I)V

    .line 821
    :cond_1
    if-nez p1, :cond_2

    .line 822
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_cleanup_extention()V

    .line 823
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_cleanup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_2
    return-void
.end method

.method private setSKAFEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    .line 446
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

    .line 444
    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1494
    if-nez p1, :cond_0

    return-void

    .line 1496
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 1497
    .local v6, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    new-array v5, v9, [Ljava/lang/String;

    .line 1499
    .local v5, "keyArray":[Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1500
    array-length v9, v5

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v0, v5, v8

    .line 1501
    .local v0, "aKeyArray":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1502
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1500
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1507
    .end local v0    # "aKeyArray":Ljava/lang/String;
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v8, "/data/system/gps"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1508
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1509
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1511
    :cond_3
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "/data/system/gps/secgps.conf"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1512
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1513
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 1515
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1516
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1517
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 1520
    :cond_5
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1522
    .local v7, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string/jumbo v9, "SECGPS Configuration"

    invoke-virtual {v8, v7, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1523
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1528
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1493
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 1529
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 1530
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1533
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 1534
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not create file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1524
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 1525
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1528
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 1529
    :catch_3
    move-exception v2

    .line 1530
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1526
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1528
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1526
    :goto_2
    :try_start_8
    throw v8

    .line 1529
    :catch_4
    move-exception v2

    .line 1530
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

    .line 182
    const-string/jumbo v6, "GnssLocationProvider_ex"

    const-string/jumbo v8, "setServer"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string/jumbo v2, ""

    .line 185
    .local v2, "mServerAddr":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 187
    .local v3, "mServerPort":Ljava/lang/String;
    const-string/jumbo v6, "ServerAddr"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    const-string/jumbo v6, "ServerPort"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
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

    .line 190
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v8, "SUPL_HOST"

    invoke-virtual {v6, v8, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v8, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "/etc/gps.conf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .local v1, "file":Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v8, "Generated by GnssLocationProvider."

    invoke-virtual {v6, v5, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 196
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

    .line 197
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "GnssLocationProvider_ex"

    const-string/jumbo v7, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-void

    .line 196
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

    .line 467
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

    .line 469
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "AGPS_TYPE_SUPL_2_0_1_AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplPort:I

    const/4 v1, 0x5

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 466
    return-void
.end method

.method private setSuplByNw()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 282
    const/4 v3, 0x0

    .line 283
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 284
    .local v4, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "simOperator":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 287
    .local v0, "mcc":I
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 288
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

    .line 290
    :cond_0
    const-string/jumbo v3, "supl.telusmobility.com"

    .line 291
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

    .line 298
    .end local v0    # "mcc":I
    .end local v1    # "mnc":I
    .end local v3    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v3

    .line 295
    .local v3, "suplServerAutoConfig":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "supl.google.com"

    .line 296
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

    .line 556
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_0

    .line 557
    return v6

    .line 559
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "agps_function_switch"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 561
    .local v1, "isAgpsSwitchMode":I
    const/4 v2, 0x0

    .line 562
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

    .line 564
    packed-switch v1, :pswitch_data_0

    .line 585
    const/4 v2, 0x1

    .line 586
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :goto_0
    if-eqz v2, :cond_3

    .line 590
    invoke-direct {p0, v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    .line 595
    :goto_1
    return v2

    .line 566
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_2

    .line 567
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 568
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    const/4 v2, 0x1

    .line 570
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    :cond_1
    const/4 v2, 0x0

    .line 573
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v2, 0x1

    .line 577
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :pswitch_1
    const/4 v2, 0x0

    .line 582
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_1

    .line 564
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
    .line 1883
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_ni_message_for_emergency_supl([BI)V

    .line 1881
    return-void
.end method

.method extension_checkSmsSuplInit(Z)I
    .locals 3
    .param p1, "mEnabled"    # Z

    .prologue
    .line 910
    const/4 v0, 0x0

    .line 911
    .local v0, "result":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 913
    :cond_0
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_2

    .line 916
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 918
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_2
    if-eqz p1, :cond_3

    .line 921
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 922
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_6

    .line 927
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v1, :cond_4

    .line 929
    const/4 v0, 0x1

    .line 930
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    .line 934
    :cond_4
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_5

    .line 935
    or-int/lit8 v0, v0, 0x2

    .line 938
    :cond_5
    return v0

    .line 923
    :cond_6
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 924
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 925
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    .line 926
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

    .line 834
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

    .line 835
    if-nez p1, :cond_0

    .line 836
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    .line 837
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 835
    :cond_0
    :goto_0
    return v0

    .line 838
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    .line 839
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    .line 840
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    .line 841
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

    .line 948
    const/4 v10, 0x0

    .line 949
    .local v10, "result":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    .line 951
    :cond_0
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "agps_function_switch"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 954
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

    .line 956
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "++checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 959
    .local v9, "pm":Landroid/os/PowerManager;
    const-string/jumbo v0, "New message notification LCD on"

    .line 958
    const v1, 0x1000001a

    invoke-virtual {v9, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 960
    .local v11, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 961
    const-wide/16 v0, 0x1388

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 962
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "--checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    if-ne v8, v12, :cond_2

    .line 965
    if-eqz p2, :cond_1

    .line 966
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    .line 967
    .local v7, "info":Landroid/net/NetworkInfo;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 968
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return v10

    .line 972
    .end local v7    # "info":Landroid/net/NetworkInfo;
    :cond_1
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return v10

    .line 975
    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_9

    .line 976
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v11    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_3
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_4

    .line 984
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    .line 985
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_5

    .line 989
    const-string/jumbo v2, "221.148.242.107"

    const/4 v1, 0x3

    const/16 v3, 0x1c6b

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 990
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_5
    if-eqz p1, :cond_6

    .line 994
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 995
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    .line 1000
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v0, :cond_7

    .line 1002
    const/4 v10, 0x1

    .line 1003
    iput-boolean v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    .line 1007
    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    .line 1008
    or-int/lit8 v10, v10, 0x2

    .line 1011
    :cond_8
    return v10

    .line 978
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

    .line 979
    return v10

    .line 996
    .end local v8    # "isAgpsSwitchMode":I
    .end local v9    # "pm":Landroid/os/PowerManager;
    .end local v11    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_a
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 997
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 998
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    .line 999
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_7

    goto :goto_0
.end method

.method extension_getExtraConfigurationString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1299
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1338
    .local v2, "extraConfigProperty":Ljava/util/Properties;
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->-getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I

    move-result-object v4

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1435
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getCpAgpsProfile()I

    move-result v4

    if-lez v4, :cond_0

    .line 1436
    const-string/jumbo v4, "CP_AGPS_ENABLE_PROFILE"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1439
    :cond_0
    const-string/jumbo v3, ""

    .line 1441
    .local v3, "mStringExtraConfigProperty":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1442
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const-string/jumbo v4, "Extra Configuration"

    invoke-virtual {v2, v0, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1447
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v3

    .line 1340
    .end local v3    # "mStringExtraConfigProperty":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1341
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1342
    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1343
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1344
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1345
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1346
    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1347
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1348
    const-string/jumbo v4, "SUPL_LPP_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1349
    const-string/jumbo v4, "SUPL_OTDOA_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1350
    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1351
    const-string/jumbo v4, "RTI_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1352
    const-string/jumbo v4, "EE_SYNC_THRESHOLD_DAYS"

    const-string/jumbo v5, "3"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1353
    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1354
    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1355
    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1358
    :pswitch_2
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1359
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1360
    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1361
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1362
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1363
    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1364
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1365
    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1366
    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1367
    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1368
    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1371
    :pswitch_3
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1372
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1373
    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1374
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1375
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1376
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1377
    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1378
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1379
    const-string/jumbo v4, "LPP_UP_ECID_CAPABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1380
    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1381
    const-string/jumbo v4, "RTI_ENABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1382
    const-string/jumbo v4, "EE_SYNC_THRESHOLD_DAYS"

    const-string/jumbo v5, "3"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1383
    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1384
    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1385
    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1388
    :pswitch_4
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1389
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1390
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1394
    :pswitch_5
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1395
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1398
    :pswitch_6
    const-string/jumbo v4, "USE_NI_SLP_ADDRESS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1403
    :pswitch_7
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1406
    :pswitch_8
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "600"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1407
    const-string/jumbo v4, "SUPL_LOG_ENABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1408
    const-string/jumbo v4, "SUPL_LOG_PATH"

    const-string/jumbo v5, "/data/AGPSLog.txt"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1409
    const-string/jumbo v4, "SUPL_NI_GPS_ICON"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1410
    const-string/jumbo v4, "NO_DATA_STANDALONE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1411
    const-string/jumbo v4, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1414
    :pswitch_9
    const-string/jumbo v4, "SUPL_UT1_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1415
    const-string/jumbo v4, "SUPL_UT2_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1416
    const-string/jumbo v4, "SUPL_UT3_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1417
    const-string/jumbo v4, "TCP_CONNETION_TIMEOUT"

    const-string/jumbo v5, "30"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1418
    const-string/jumbo v4, "SUPL_NTT_DOCOMO"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1421
    :pswitch_a
    const-string/jumbo v4, "USE_NI_SLP_ADDRESS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1422
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1423
    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1424
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1425
    const-string/jumbo v4, "SUPL_LPP_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1426
    const-string/jumbo v4, "SUPL_OTDOA_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1444
    .restart local v3    # "mStringExtraConfigProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1445
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1338
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

    .line 851
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    .line 852
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 853
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 854
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 855
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 856
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 861
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 862
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 850
    return-void
.end method

.method extension_mBroadcastReciever(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mEnabled"    # Z

    .prologue
    .line 715
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v5, "result":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 719
    .local v6, "result_mask":I
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v8, v9, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_1

    .line 720
    :cond_0
    const-string/jumbo v8, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 721
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->setServer(Landroid/content/Intent;)V

    .line 731
    :cond_1
    :goto_0
    const-string/jumbo v8, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 732
    const/4 v6, 0x1

    .line 733
    const-string/jumbo v8, "packet_data"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_data"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 734
    const-string/jumbo v8, "packet_length"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_length"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 736
    :cond_2
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 737
    const-string/jumbo v8, "ss"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 738
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

    .line 739
    const-string/jumbo v8, "LOADED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 740
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getLppBitmask()I

    move-result v3

    .line 741
    .local v3, "mask":I
    iget v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    if-eq v3, v8, :cond_3

    .line 742
    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    .line 743
    invoke-direct {p0, p2, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    .line 747
    .end local v3    # "mask":I
    .end local v7    # "simState":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "result_mask"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 748
    return-object v5

    .line 722
    :cond_4
    const-string/jumbo v8, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 723
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "mSuplServerHost":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v9, "SUPL_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, "portString":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 726
    .local v1, "getAgpsProfile":Landroid/content/Intent;
    const-string/jumbo v8, "ServerAddr"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string/jumbo v8, "ServerPort"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
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

    .line 873
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v3, "inViewList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v1, "inUsedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_6

    .line 877
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 878
    aget v7, p2, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    aget v7, p1, v0

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    aget v7, p2, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 881
    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 882
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 884
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 885
    .local v6, "sbInView":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .local v5, "sbInUsed":Ljava/lang/StringBuilder;
    const/4 v4, 0x5

    .line 888
    .local v4, "inViewSize":I
    const/4 v2, 0x5

    .line 889
    .local v2, "inUsedSize":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 890
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 892
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 893
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 894
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_5

    .line 895
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 897
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

    .line 872
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

    .line 1040
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    .line 1041
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1042
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1043
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1044
    const/4 v1, 0x4

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 1045
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    .line 1039
    .end local v2    # "suplServerAutoConfig":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_0

    .line 1049
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1050
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v2

    .line 1051
    .restart local v2    # "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1052
    const/4 v1, 0x3

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 1053
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto :goto_0
.end method

.method public extension_reportAGpsStatus()V
    .locals 1

    .prologue
    .line 1878
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .line 1877
    return-void
.end method

.method protected extension_reportGeofenceAddStatus(II)V
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1671
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1673
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1676
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1677
    :catch_0
    move-exception v0

    .line 1678
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
    .line 1709
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1711
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1714
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1715
    :catch_0
    move-exception v0

    .line 1716
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
    .line 1690
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1692
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1695
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1688
    :cond_0
    :goto_0
    return-void

    .line 1696
    :catch_0
    move-exception v0

    .line 1697
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
    .line 1728
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1730
    .local v1, "mLocService":Lcom/samsung/android/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 1733
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1726
    :cond_0
    :goto_0
    return-void

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
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
    .line 1652
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    .line 1654
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

    .line 1657
    :try_start_0
    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    :cond_0
    :goto_0
    return-void

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
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
    .line 1630
    const-string/jumbo v4, "sec_location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v3

    .line 1632
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

    .line 1635
    :try_start_0
    invoke-interface/range {v3 .. v19}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    :cond_0
    :goto_0
    return-void

    .line 1637
    :catch_0
    move-exception v2

    .line 1638
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

    .line 1202
    const/4 v4, 0x0

    .line 1203
    .local v4, "result":Z
    const-string/jumbo v5, "set_csc_parameters"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1204
    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GnssLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;Z)V

    .line 1205
    const/4 v4, 0x1

    .line 1289
    :cond_0
    :goto_0
    return v4

    .line 1206
    :cond_1
    const-string/jumbo v5, "com.skt.intent.action.AGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1207
    const-string/jumbo v5, "opType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1208
    .local v3, "opType":Ljava/lang/String;
    const-string/jumbo v5, "cmdType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "cmdType":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1211
    const-string/jumbo v5, "msAssisted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "msBased"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1212
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1220
    :cond_3
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 1215
    :cond_4
    const-string/jumbo v5, "off"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1216
    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1217
    const-string/jumbo v5, "sys.sktgps"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1221
    .end local v0    # "cmdType":Ljava/lang/String;
    .end local v3    # "opType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "setOllehServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1222
    const-string/jumbo v5, "host"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1223
    .local v2, "hostURL":Ljava/lang/String;
    const-string/jumbo v5, "port"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1224
    .local v1, "hostPort":I
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 1225
    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    .line 1226
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    .line 1227
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

    .line 1228
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1229
    .end local v1    # "hostPort":I
    .end local v2    # "hostURL":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "setNativeServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1230
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setNativeServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 1232
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1233
    :cond_7
    const-string/jumbo v5, "activateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1234
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateGPS is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1235
    :cond_8
    const-string/jumbo v5, "deactivateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1236
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateGPS is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1237
    :cond_9
    const-string/jumbo v5, "activateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1238
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateNLP is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1239
    :cond_a
    const-string/jumbo v5, "deactivateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1240
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateNLP is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1241
    :cond_b
    const-string/jumbo v5, "activateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1242
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1244
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1245
    :cond_c
    const-string/jumbo v5, "deactivateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1246
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1248
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1249
    :cond_d
    const-string/jumbo v5, "setMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1250
    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    .line 1251
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

    .line 1252
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1253
    :cond_e
    const-string/jumbo v5, "getMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1254
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

    .line 1255
    const-string/jumbo v5, "mode"

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1256
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1257
    :cond_f
    const-string/jumbo v5, "set_use_udp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1258
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

    .line 1259
    const-string/jumbo v5, "use_udp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_11

    .line 1260
    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    if-nez v5, :cond_10

    .line 1261
    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    .line 1262
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->checkUDPSuplInit()V

    .line 1267
    :cond_10
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1265
    :cond_11
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    goto :goto_2

    .line 1268
    :cond_12
    const-string/jumbo v5, "set_dcm_iot"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1269
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

    .line 1270
    const-string/jumbo v5, "dcm_iot"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->setDcmSuplIot(Z)V

    .line 1271
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1272
    :cond_13
    const-string/jumbo v5, "request_running"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1273
    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mStarted:Z

    return v5

    .line 1274
    :cond_14
    const-string/jumbo v5, "set_lpp_support"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1275
    const-string/jumbo v5, "set_lpp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p3, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    goto/16 :goto_0

    .line 1276
    :cond_15
    const-string/jumbo v5, "setSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1277
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSecGpsConf(Landroid/os/Bundle;)V

    .line 1279
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1280
    :cond_16
    const-string/jumbo v5, "deleteSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1281
    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deleteSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->deleteSecGpsConf()V

    .line 1283
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1284
    :cond_17
    const-string/jumbo v5, "supl_hostname_to_nsflp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1286
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->sendSuplHostNameToNsflp()V

    .line 1287
    return v8
.end method

.method protected extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;Z)I
    .locals 3
    .param p1, "mPositionMode"    # I
    .param p2, "mConnMgr"    # Landroid/net/ConnectivityManager;
    .param p3, "singleShot"    # Z

    .prologue
    .line 1568
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_9

    .line 1569
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->extSelectUseGooglePositionMode(I)I

    move-result p1

    .line 1573
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    .line 1574
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extChnSelectPositionMode()I

    move-result p1

    .line 1575
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

    .line 1578
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1579
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/4 p1, 0x0

    .line 1583
    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1584
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_gnss_control(I)V

    .line 1588
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1589
    const-string/jumbo v0, "sys.sktgps"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    :cond_6
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    .line 1594
    :cond_7
    if-eqz p3, :cond_8

    .line 1595
    const/4 p1, 0x2

    .line 1596
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

    .line 1600
    :cond_8
    return p1

    .line 1568
    :cond_9
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 1573
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
    .line 1133
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSuplServerFromCSC()V

    .line 1135
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1136
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1138
    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->-getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I

    move-result-object v0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1189
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

    .line 1140
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

    .line 1143
    :pswitch_2
    const/4 v2, 0x0

    .line 1144
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    .line 1145
    .local v2, "suplServerAutoConfig":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1146
    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto :goto_0

    .line 1153
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

    .line 1157
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

    .line 1160
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

    .line 1164
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

    .line 1167
    :pswitch_7
    const/4 v5, 0x0

    .line 1168
    .local v5, "suplServerNwConfig":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v5

    .line 1169
    .local v5, "suplServerNwConfig":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 1170
    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_setAgpsServer(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 1173
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

    .line 1177
    .end local v5    # "suplServerNwConfig":Ljava/lang/String;
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    goto/16 :goto_0

    .line 1181
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

    .line 1185
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

    .line 1138
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
    .line 1021
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_0

    .line 1022
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_2

    .line 1024
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1025
    .local v2, "timestamp":J
    const-string/jumbo v1, "persist.sys.xtra_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.angryGps.XtraSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1020
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "timestamp":J
    :cond_1
    return-void

    .line 1023
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

    .line 1610
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1611
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    .line 1612
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const-string/jumbo v0, "sys.sktgps"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    .line 1616
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    .line 1617
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_1
    return-void
.end method

.method public getInitCalledByNI()Z
    .locals 1

    .prologue
    .line 1756
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    return v0
.end method

.method getWifiOnlyModel()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1747
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
    .line 161
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    .line 162
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    .line 163
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    .line 164
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 165
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    .line 167
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setGnssChipProperty()V

    .line 160
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public provideSuplFqdn(Ljava/lang/String;)V
    .locals 14
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 1809
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

    .line 1811
    if-eqz p1, :cond_0

    const-string/jumbo v10, ""

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1812
    :cond_1
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    .line 1813
    .local v4, "networks":[Landroid/net/Network;
    const/4 v9, 0x0

    .line 1814
    .local v9, "suplNetwork":Landroid/net/Network;
    if-eqz v4, :cond_4

    .line 1815
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v4

    if-ge v3, v10, :cond_4

    .line 1816
    aget-object v10, v4, v3

    if-nez v10, :cond_3

    .line 1815
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1817
    :cond_3
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v11, v4, v3

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1818
    .local v5, "ntwkInfo":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_2

    .line 1819
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

    .line 1820
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v11, v4, v3

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1821
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1822
    aget-object v9, v4, v3

    .line 1829
    .end local v3    # "i":I
    .end local v5    # "ntwkInfo":Landroid/net/NetworkInfo;
    .end local v9    # "suplNetwork":Landroid/net/Network;
    :cond_4
    if-nez v9, :cond_5

    .line 1830
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "No default network is currently active."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1833
    :cond_5
    :try_start_0
    invoke-virtual {v9, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .line 1834
    const/4 v8, 0x0

    .line 1836
    .local v8, "retAddr":Ljava/net/InetAddress;
    const/4 v1, 0x0

    .local v1, "flag_v4_set":Z
    const/4 v2, 0x0

    .line 1837
    .local v2, "flag_v6_set":Z
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    instance-of v10, v10, Ljava/net/Inet6Address;

    if-eqz v10, :cond_8

    .line 1838
    if-nez v2, :cond_6

    .line 1839
    const/4 v2, 0x1

    .line 1840
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

    .line 1841
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .line 1849
    .end local v8    # "retAddr":Ljava/net/InetAddress;
    :cond_6
    :goto_2
    const/4 v6, 0x0

    .line 1850
    .local v6, "resInetAddress":Ljava/net/InetAddress;
    if-eqz v8, :cond_9

    .line 1851
    move-object v6, v8

    .line 1855
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

    .line 1857
    if-nez v1, :cond_7

    if-eqz v2, :cond_0

    .line 1858
    :cond_7
    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1859
    const/4 v11, 0x3

    .line 1858
    invoke-virtual {v10, v11, v6}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v7

    .line 1862
    .local v7, "result":Z
    if-nez v7, :cond_a

    .line 1863
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

    .line 1867
    :goto_4
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_set_supl_host_ip(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1869
    .end local v1    # "flag_v4_set":Z
    .end local v2    # "flag_v6_set":Z
    .end local v7    # "result":Z
    :catch_0
    move-exception v0

    .line 1870
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "UnknownHostException occured"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    .line 1843
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "flag_v4_set":Z
    .restart local v2    # "flag_v6_set":Z
    .restart local v8    # "retAddr":Ljava/net/InetAddress;
    :cond_8
    if-nez v1, :cond_6

    .line 1844
    const/4 v1, 0x1

    .line 1845
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

    .line 1846
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    .local v8, "retAddr":Ljava/net/InetAddress;
    goto/16 :goto_2

    .line 1853
    .end local v8    # "retAddr":Ljava/net/InetAddress;
    .restart local v6    # "resInetAddress":Ljava/net/InetAddress;
    :cond_9
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "DNS resolve failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1865
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
    .line 1888
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

    .line 1889
    const-string/jumbo v2, ", isRefLocationReceived = "

    .line 1888
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1889
    const-string/jumbo v2, ", isRefTimeReceived = "

    .line 1888
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1889
    const-string/jumbo v2, ", isEEValid = "

    .line 1888
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    return-void
.end method

.method public reportVendorExtraAssertMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1893
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

    .line 1895
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1896
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "assert_msg"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1899
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x12c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1900
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1902
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->notifyNSFLP(Landroid/os/Message;)Z

    .line 1892
    return-void
.end method
