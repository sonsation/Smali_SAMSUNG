.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;,
        Landroid/telephony/TelephonyManager$MultiSimVariants;,
        Landroid/telephony/TelephonyManager$WifiCallingChoices;
    }
.end annotation


# static fields
.field private static final synthetic -android-telephony-TelephonyManager$MultiSimVariantsSwitchesValues:[I = null

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "android.telephony.action.CONFIGURE_VOICEMAIL"

.field public static final ACTION_EMERGENCY_ASSISTANCE:Ljava/lang/String; = "android.telephony.action.EMERGENCY_ASSISTANCE"

.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_PRECISE_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_CALL_STATE"

.field public static final ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final ACTION_SHOW_VOICEMAIL_NOTIFICATION:Ljava/lang/String; = "android.telephony.action.SHOW_VOICEMAIL_NOTIFICATION"

.field public static final APPTYPE_CSIM:I = 0x4

.field public static final APPTYPE_ISIM:I = 0x5

.field public static final APPTYPE_RUIM:I = 0x3

.field public static final APPTYPE_SIM:I = 0x1

.field public static final APPTYPE_USIM:I = 0x2

.field public static final AUTHTYPE_EAP_AKA:I = 0x81

.field public static final AUTHTYPE_EAP_SIM:I = 0x80

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CAPABLE_TYPE_DOWNLOADBOOSTER:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES:I = -0x2

.field public static final CARRIER_PRIVILEGE_STATUS_HAS_ACCESS:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_NO_ACCESS:I = 0x0

.field public static final CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED:I = -0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field private static final DBG:Z

.field public static final DM_CMD_DELETE_LOG:I = 0x8

.field public static final DM_CMD_EVENT_SET:I = 0x2

.field public static final DM_CMD_HDV_ALARM_EVENT:I = 0x7

.field public static final DM_CMD_LOG_SET:I = 0x1

.field public static final DM_CMD_MEM_CHECK:I = 0x5

.field public static final DM_CMD_MEM_SET:I = 0x4

.field public static final DM_CMD_SAVE_LOG:I = 0x6

.field public static final DM_CMD_STATE_CHANGE_SET:I = 0x3

.field private static final DOD_SKT_APP_SIGNATURE:Ljava/lang/String; = "3082019b30820104a00302010202044c6b473a300d06092a864886f70d010105050030123110300e06035504031307616e64726f6964301e170d3130303831383032333634325a170d3430303831303032333634325a30123110300e06035504031307616e64726f696430819f300d06092a864886f70d010101050003818d00308189028181008e22b5c794e4621f5acf64431605f6f03301e8af027353d1952f3cd6acb5ce50a02bbc85822bf21ee5ee84410ed5c847233de58790d3309799e6e3e91eff8cb8db56ae7b64f691e3a522f78ec869b093720236152410bce1242bbe567fa9c2e1e4efdeb8feabe027d264501fe0ea65777b49b0bed6b806bd888c195394fd2a230203010001300d06092a864886f70d010105050003818100760b171ab6383e2b4170136ebb253e8226d2af2d31c3196c4914c92cea6e91072827b581a639a427fd4302842c5e2be9418d5226745d6ed6cef06904505c7a6ef51897368251a46fc9aae61fc4778ccb85432c801d64cd818f436e686753cccd4aa76e3bcfe3355a73c4bc1e5b239e453fc739b52959cd7de0e617e4072017b0"

.field private static final DOD_SKT_APP_SIGNATURE2:Ljava/lang/String; = "3082033b30820223a00302010202046949927c300d06092a864886f70d01010b0500304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e3020170d3133303731373034303731315a180f32313133303632333034303731315a304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e30820122300d06092a864886f70d01010105000382010f003082010a02820101009054ef68216a1db045aa95d5b71120701ae32b55f692ba4a033e4fd8531d7614ce0a8dc058cf2d11857f68138a3579f5f81eb7fcf6abc721e215868fd2866fae01f69967340267497410520a2cfffca58585cad43dfc5ece54de5c253a2d1e7391a09abeaca1cd2e2db7fb4d045f43ab1c4df0621b1e914322d2f1743d465021d540715b1ea7dafb9d3f25b77812f5998ad3a6befa48bb3ef46acfc50b8f093e2c42611ce1084221a28c6a26c96cb2a78c779e2edc41f859b8638b5c060ec608d92564e1ee355b6cf400888c7bd3fc6b3bd38bf4512d23153cb90a9c1b3c7c221cd15ffbd84abea143f4665bdab5fb969d1332e29499b487810c3324cf1927b10203010001a321301f301d0603551d0e041604149f6ccd79ff1fc86191fd86973cbe8ad3498752a6300d06092a864886f70d01010b05000382010100465ded5885849010ba16c05af54a55a4783db87fe46d3a2411866ca9819f7e734132c513ba370bec8bc657f5b507e8a6632e3cdcdd750b04c059f3e8ef999cd35c8ebc467351e7f16093672c267f4688640f0700d8bbf6f3340aeb447714267e8a4adb91773df43975e62b5ad24065719f3aec825b955442db1b88d6bde48ebed00431915f23991b58c1b24e7033f26f752ddd0c3a16dd4c5a2764055d5e09ae839e2c21404fdd5e90163f4e06305755700f883f11fd50a3277775b76373f6acac68a94faf3a29a798cfc8e869e786d5790e363adbd87037de537ffb2870591e3b5672bf7adaa0c86491041878d8277296fcf6089b5e8b1188c64d0d0bbd6db7"

.field public static final EMERGENCY_ASSISTANCE_ENABLED:Z = true

.field public static final EMR_DIAL_ACCOUNT:Ljava/lang/String; = "emr_dial_account"

.field public static final EXTRA_BACKGROUND_CALL_STATE:Ljava/lang/String; = "background_state"

.field public static final EXTRA_CALL_VOICEMAIL_INTENT:Ljava/lang/String; = "android.telephony.extra.CALL_VOICEMAIL_INTENT"

.field public static final EXTRA_DATA_APN:Ljava/lang/String; = "apn"

.field public static final EXTRA_DATA_APN_TYPE:Ljava/lang/String; = "apnType"

.field public static final EXTRA_DATA_CHANGE_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_DATA_FAILURE_CAUSE:Ljava/lang/String; = "failCause"

.field public static final EXTRA_DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_DATA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_DATA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"

.field public static final EXTRA_FOREGROUND_CALL_STATE:Ljava/lang/String; = "foreground_state"

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_LAUNCH_VOICEMAIL_SETTINGS_INTENT:Ljava/lang/String; = "android.telephony.extra.LAUNCH_VOICEMAIL_SETTINGS_INTENT"

.field public static final EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_COUNT"

.field public static final EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final EXTRA_RINGING_CALL_STATE:Ljava/lang/String; = "ringing_state"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final EXTRA_VOICEMAIL_NUMBER:Ljava/lang/String; = "android.telephony.extra.VOICEMAIL_NUMBER"

.field public static final EXTRA_VOIP_CALLSTATE:Ljava/lang/String; = "is_voip_callstate"

.field private static final KNIGHT_LOG_FILE_NAME:Ljava/lang/String; = "/data/log/knightBuff.tmp"

.field private static final LTE_ON_CDMA_FILE_PATH:Ljava/lang/String; = "/efs/carrier/CdmaOnly"

.field public static final MODEM_ACTIVITY_RESULT_KEY:Ljava/lang/String; = "controller_activity"

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC:I = 0x1e

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_TDLTE:I = 0x1f

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_ACTIVATION_RESULT_CANCELED:I = 0x4

.field public static final SIM_ACTIVATION_RESULT_COMPLETE:I = 0x0

.field public static final SIM_ACTIVATION_RESULT_FAILED:I = 0x3

.field public static final SIM_ACTIVATION_RESULT_IN_PROGRESS:I = 0x2

.field public static final SIM_ACTIVATION_RESULT_NOT_SUPPORTED:I = 0x1

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x8

.field public static final SIM_STATE_DETECTED:I = 0xc

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_NETWORK_SUBSET_LOCKED:I = 0xa

.field public static final SIM_STATE_NOT_READY:I = 0x6

.field public static final SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final SIM_STATE_PERSO_LOCKED:I = 0x9

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_SIM_SERVICE_PROVIDER_LOCKED:I = 0xb

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static final TAG_DM_LOGGING:Ljava/lang/String; = "DmLoggingService"

.field private static final UKNIGHT_LGT_APP_SIGNATURE:Ljava/lang/String; = "3082019d30820106a00302010202044f3193c6300d06092a864886f70d010105050030133111300f060355040a0c084c475f55706c7573301e170d3132303230373231313233385a170d3432303133303231313233385a30133111300f060355040a0c084c475f55706c757330819f300d06092a864886f70d010101050003818d0030818902818100872b7051b6c30272b6c200b809a90a4f7fa148bdb554a4b29df536018f256c624c6781006655a30eef98152781353b48da3aa739d8e0bdc2fcee10789438454bce9dcf081a3a8757ecb6f2985bcdec0b83e7ed46dc35ac36e3820442740b0b6c6e05ac17d49502708070e1137914eb26d2e63c9235efbb6d930a353c004228490203010001300d06092a864886f70d0101050500038181004157e820571e50c367497ab98c05375a7d8e40ea67ff3df8858226322faf91e5c12521266402ce9d2e946d25b0833cc7c4b39a2b28cae46e184b16f973a885fd2f607decafcb814ad326739a35d3703c140ac5bdbb18f1598f997e1ae52fcefeee88f3419db99379e63caa981a632d41a23549a0a03e843bf285ad6cdbcaa6f4"

.field private static final UKNIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.lguplus.uknight2"

.field private static final UKNIGHT_TOKEN:I = 0x177c

.field public static final VOIPCALL_STATE_IDLE:I = 0x3

.field public static final VOIPCALL_STATE_OFFHOOK:I = 0x5

.field public static final VOIPCALL_STATE_RINGING:I = 0x4

.field public static final VVM_TYPE_CVVM:Ljava/lang/String; = "vvm_type_cvvm"

.field public static final VVM_TYPE_OMTP:Ljava/lang/String; = "vvm_type_omtp"

.field public static isCDMAMessage:Z = false

.field private static isRtreFileRead:Z = false

.field public static isSelecttelecomDF:Z = false

.field private static final mDmLoggingPidFile:Ljava/lang/String; = "/data/log/dmlog_pid"

.field public static mImsLineNumber:Ljava/lang/String;

.field private static mRtreVal:Ljava/lang/String;

.field private static multiSimConfig:Ljava/lang/String;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method private static synthetic -getandroid-telephony-TelephonyManager$MultiSimVariantsSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/telephony/TelephonyManager;->-android-telephony-TelephonyManager$MultiSimVariantsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->-android-telephony-TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager$MultiSimVariants;->values()[Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/telephony/TelephonyManager;->-android-telephony-TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Landroid/telephony/TelephonyManager;->DBG:Z

    .line 142
    sput-object v3, Landroid/telephony/TelephonyManager;->mRtreVal:Ljava/lang/String;

    .line 143
    sput-boolean v1, Landroid/telephony/TelephonyManager;->isRtreFileRead:Z

    .line 180
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    sput-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    .line 197
    sput-boolean v1, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    .line 200
    sput-boolean v1, Landroid/telephony/TelephonyManager;->isCDMAMessage:Z

    .line 203
    sput-object v3, Landroid/telephony/TelephonyManager;->mImsLineNumber:Ljava/lang/String;

    .line 234
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 470
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 476
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 482
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 1447
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 1451
    const-string/jumbo v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1450
    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 1455
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    .line 136
    return-void

    :cond_0
    move v0, v1

    .line 139
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 215
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 216
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 220
    :goto_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 222
    sget-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v1, :cond_0

    .line 224
    const-string/jumbo v1, "telephony.registry"

    .line 223
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    sput-object v1, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 212
    :cond_0
    return-void

    .line 218
    :cond_1
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private ByteToInt([B)I
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 7223
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static IsCDMAmessage()Z
    .locals 1

    .prologue
    .line 6639
    sget-boolean v0, Landroid/telephony/TelephonyManager;->isCDMAMessage:Z

    return v0
.end method

.method public static appendId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "id"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 5762
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 5763
    return-object p0

    .line 5766
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5768
    .local v1, "str":Ljava/lang/StringBuilder;
    cmp-long v2, p1, v4

    if-ltz v2, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 5769
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5778
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 5771
    :cond_2
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Id is error (text : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5773
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "appendId() exception"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5774
    :catch_0
    move-exception v0

    .line 5775
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkIsSprintSimCard()Z
    .locals 3

    .prologue
    .line 1684
    const-string/jumbo v1, "gsm.sim.sprintsim"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1685
    .local v0, "sprintsim":Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1686
    const/4 v1, 0x1

    return v1

    .line 1688
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3752
    invoke-static {}, Landroid/telephony/TelephonyManager;->getOmcPath()Ljava/lang/String;

    move-result-object v1

    .line 3753
    .local v1, "omc_path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3754
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/customer.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3756
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3757
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3758
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "getCustomerPath : omc customer file can read"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/customer.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3761
    :cond_0
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "getCustomerPath : omc customer file exist but can\'t read"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    const-string/jumbo v2, "/system/csc/customer.xml"

    return-object v2

    .line 3766
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "getCustomerPath : /system/csc/customer.xml file exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    const-string/jumbo v2, "/system/csc/customer.xml"

    return-object v2
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getDefaultPhone()I
    .locals 1

    .prologue
    .line 4353
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 4346
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0
.end method

.method private getDeviceUAField()Ljava/lang/String;
    .locals 6

    .prologue
    .line 6689
    const/4 v2, 0x0

    .line 6691
    .local v2, "ua":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceUAField()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 6698
    .end local v2    # "ua":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceUAField ua:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6699
    return-object v2

    .line 6694
    .restart local v2    # "ua":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 6695
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getDeviceUAField NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6692
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 6693
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getDeviceUAField RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getFirst()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 3407
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getImsLine1Number()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8280
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    .line 8281
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "getImsLine1Number"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8286
    :goto_0
    sget-object v0, Landroid/telephony/TelephonyManager;->mImsLineNumber:Ljava/lang/String;

    return-object v0

    .line 8283
    :cond_0
    const-string/jumbo v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getImsLine1Number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager;->mImsLineNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4435
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4436
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4437
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4438
    .local v2, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    .line 4440
    :try_start_0
    aget-object v3, v2, p2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4441
    :catch_0
    move-exception v0

    .line 4446
    .end local v2    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v3, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 5915
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 5916
    :catch_0
    move-exception v1

    .line 5918
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_1
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 5919
    .local v3, "val":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5924
    move v0, v3

    .line 5925
    .local v0, "default_val":I
    const-string/jumbo v4, "mobile_data"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5926
    const-string/jumbo v4, "true"

    .line 5927
    const-string/jumbo v5, "ro.com.android.mobiledata"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5926
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5927
    const/4 v0, 0x1

    .line 5933
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 5934
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5937
    :cond_1
    return v3

    .line 5927
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5928
    :cond_3
    const-string/jumbo v4, "data_roaming"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5929
    const-string/jumbo v4, "true"

    .line 5930
    const-string/jumbo v5, "ro.com.android.dataroaming"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5929
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    .line 5930
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 5938
    .end local v0    # "default_val":I
    .end local v3    # "val":I
    :catch_1
    move-exception v2

    .line 5939
    .local v2, "exc":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v4, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 1470
    const-string/jumbo v5, ""

    .line 1472
    .local v5, "productType":Ljava/lang/String;
    const-string/jumbo v7, "telephony.lteOnCdmaDevice"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1475
    .local v0, "curVal":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_RIL_ConfigNvSim"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1474
    if-eqz v7, :cond_5

    .line 1476
    const/4 v6, -0x1

    .line 1477
    .local v6, "retVal":I
    const/4 v2, 0x0

    .line 1478
    .local v2, "in":Ljava/io/BufferedReader;
    sget-boolean v7, Landroid/telephony/TelephonyManager;->isRtreFileRead:Z

    if-nez v7, :cond_1

    .line 1480
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/efs/carrier/CdmaOnly"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/telephony/TelephonyManager;->mRtreVal:Ljava/lang/String;

    .line 1482
    const/4 v7, 0x1

    sput-boolean v7, Landroid/telephony/TelephonyManager;->isRtreFileRead:Z

    .line 1483
    const-string/jumbo v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "LTE_ON_CDMA_FILE_PATH, mRtreVal = /efs/carrier/CdmaOnly"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/telephony/TelephonyManager;->mRtreVal:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1488
    if-eqz v3, :cond_0

    .line 1489
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 1496
    .end local v3    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    sget-object v7, Landroid/telephony/TelephonyManager;->mRtreVal:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 1497
    const-string/jumbo v7, "0"

    sget-object v8, Landroid/telephony/TelephonyManager;->mRtreVal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1498
    const/4 v6, 0x1

    .line 1499
    const-string/jumbo v7, "TelephonyManager"

    const-string/jumbo v8, "RTRE True"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_2
    :goto_2
    return v6

    .line 1491
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 1492
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "TelephonyManager"

    const-string/jumbo v8, "Error in Buffer reader"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1484
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 1485
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string/jumbo v7, "TelephonyManager"

    const-string/jumbo v8, "RTRE File doesnt exist"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1488
    if-eqz v2, :cond_1

    .line 1489
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1491
    :catch_2
    move-exception v1

    .line 1492
    const-string/jumbo v7, "TelephonyManager"

    const-string/jumbo v8, "Error in Buffer reader"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1486
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1488
    :goto_4
    if-eqz v2, :cond_3

    .line 1489
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1486
    :cond_3
    :goto_5
    throw v7

    .line 1491
    :catch_3
    move-exception v1

    .line 1492
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "TelephonyManager"

    const-string/jumbo v9, "Error in Buffer reader"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1500
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    const-string/jumbo v7, "1"

    sget-object v8, Landroid/telephony/TelephonyManager;->mRtreVal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1501
    const/4 v6, 0x0

    .line 1502
    const-string/jumbo v7, "TelephonyManager"

    const-string/jumbo v8, "RTRE False"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1507
    .end local v6    # "retVal":I
    :cond_5
    move v6, v0

    .line 1508
    .restart local v6    # "retVal":I
    if-ne v0, v10, :cond_6

    .line 1509
    sget-object v7, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v8, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1510
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1511
    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1512
    sget-object v7, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1513
    const/4 v6, 0x1

    .line 1522
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_6
    :goto_6
    const-string/jumbo v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getLteOnCdmaMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " curVal="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1523
    const-string/jumbo v9, " product_type=\'"

    .line 1522
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1524
    const-string/jumbo v9, "\' lteOnCdmaProductType=\'"

    .line 1522
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1524
    sget-object v9, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    .line 1522
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1524
    const-string/jumbo v9, "\'"

    .line 1522
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    return v6

    .line 1515
    .restart local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_7
    const/4 v6, 0x0

    goto :goto_6

    .line 1518
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 1486
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1484
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 2015
    packed-switch p0, :pswitch_data_0

    .line 2038
    const/4 v0, 0x0

    return v0

    .line 2022
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2033
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 2036
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 2015
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 2062
    packed-switch p0, :pswitch_data_0

    .line 2114
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 2064
    :pswitch_1
    const-string/jumbo v0, "GPRS"

    return-object v0

    .line 2066
    :pswitch_2
    const-string/jumbo v0, "EDGE"

    return-object v0

    .line 2068
    :pswitch_3
    const-string/jumbo v0, "UMTS"

    return-object v0

    .line 2070
    :pswitch_4
    const-string/jumbo v0, "HSDPA"

    return-object v0

    .line 2072
    :pswitch_5
    const-string/jumbo v0, "HSUPA"

    return-object v0

    .line 2074
    :pswitch_6
    const-string/jumbo v0, "HSPA"

    return-object v0

    .line 2076
    :pswitch_7
    const-string/jumbo v0, "CDMA"

    return-object v0

    .line 2078
    :pswitch_8
    const-string/jumbo v0, "CDMA - EvDo rev. 0"

    return-object v0

    .line 2080
    :pswitch_9
    const-string/jumbo v0, "CDMA - EvDo rev. A"

    return-object v0

    .line 2082
    :pswitch_a
    const-string/jumbo v0, "CDMA - EvDo rev. B"

    return-object v0

    .line 2084
    :pswitch_b
    const-string/jumbo v0, "CDMA - 1xRTT"

    return-object v0

    .line 2089
    :pswitch_c
    const-string/jumbo v0, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2090
    const-string/jumbo v0, "SBM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2089
    if-eqz v0, :cond_1

    .line 2091
    :cond_0
    const-string/jumbo v0, "4G"

    return-object v0

    .line 2093
    :cond_1
    const-string/jumbo v0, "LTE"

    return-object v0

    .line 2098
    :pswitch_d
    const-string/jumbo v0, "CDMA - eHRPD"

    return-object v0

    .line 2100
    :pswitch_e
    const-string/jumbo v0, "iDEN"

    return-object v0

    .line 2102
    :pswitch_f
    const-string/jumbo v0, "HSPA+"

    return-object v0

    .line 2104
    :pswitch_10
    const-string/jumbo v0, "GSM"

    return-object v0

    .line 2106
    :pswitch_11
    const-string/jumbo v0, "TD_SCDMA"

    return-object v0

    .line 2108
    :pswitch_12
    const-string/jumbo v0, "IWLAN"

    return-object v0

    .line 2111
    :pswitch_13
    const-string/jumbo v0, "DC"

    return-object v0

    .line 2062
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_e
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method private static getOmcPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3746
    const-string/jumbo v0, "persist.sys.omc_path"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOpPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 250
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 4
    .param p0, "networkMode"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1369
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    :cond_0
    const-string/jumbo v0, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1369
    if-eqz v0, :cond_3

    .line 1371
    :cond_1
    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    .line 1372
    const/16 v0, 0x16

    if-ne p0, v0, :cond_3

    .line 1373
    :cond_2
    return v3

    .line 1377
    :cond_3
    packed-switch p0, :pswitch_data_0

    .line 1414
    return v2

    .line 1381
    :pswitch_0
    return v3

    .line 1399
    :pswitch_1
    return v2

    .line 1405
    :pswitch_2
    return v3

    .line 1408
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1409
    return v3

    .line 1411
    :cond_4
    return v2

    .line 1377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 1

    .prologue
    .line 1344
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1352
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1354
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    return v1

    .line 1356
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private getPhoneTypeFromProperty()I
    .locals 1

    .prologue
    .line 1330
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1336
    const-string/jumbo v1, "gsm.current.phone-type"

    .line 1335
    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1337
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1338
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    return v1

    .line 1340
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1423
    const-string/jumbo v1, ""

    .line 1424
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1426
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string/jumbo v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 1428
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1429
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 1430
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 1435
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1437
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v5, v6

    .line 1442
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string/jumbo v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    return-object v1

    .line 1438
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1432
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 1433
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1435
    if-eqz v5, :cond_2

    .line 1437
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1438
    :catch_2
    move-exception v4

    goto :goto_1

    .line 1434
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1435
    :goto_3
    if-eqz v5, :cond_3

    .line 1437
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1434
    :cond_3
    :goto_4
    throw v7

    .line 1438
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1434
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1432
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static getSecondary()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSubId()I
    .locals 2

    .prologue
    .line 4336
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 4337
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    return v0

    .line 4339
    :cond_0
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 3188
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 3414
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 4506
    const/4 v1, 0x0

    .line 4507
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4508
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 4509
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4510
    .local v2, "values":[Ljava/lang/String;
    if-ltz p0, :cond_0

    array-length v3, v2

    if-ge p0, v3, :cond_0

    aget-object v3, v2, p0

    if-eqz v3, :cond_0

    .line 4511
    aget-object v1, v2, p0

    .line 4514
    .end local v1    # "propVal":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static getUAField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6685
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;->getDeviceUAField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValuefromCSC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;

    .prologue
    .line 8348
    move-object/from16 v1, p1

    .line 8350
    .local v1, "CSC_PATH":Ljava/lang/String;
    move-object/from16 v2, p2

    .line 8351
    .local v2, "Tag":Ljava/lang/String;
    const/4 v11, 0x0

    .line 8352
    .local v11, "retVal":Ljava/lang/String;
    const/4 v9, 0x0

    .line 8355
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8356
    .local v7, "f":Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    move-object v9, v10

    .line 8361
    .end local v7    # "f":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    :goto_0
    if-nez v9, :cond_0

    .line 8362
    const/4 v14, 0x0

    return-object v14

    .line 8357
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v5

    .line 8358
    .local v5, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 8365
    .end local v5    # "e1":Ljava/io/FileNotFoundException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    :cond_0
    move-object v12, v9

    .line 8369
    .local v12, "stream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .line 8370
    .local v8, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 8371
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 8373
    .local v13, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v14, "UTF-8"

    invoke-interface {v13, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8374
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 8376
    .end local v11    # "retVal":Ljava/lang/String;
    .local v6, "eventType":I
    :goto_1
    const/4 v14, 0x1

    if-eq v6, v14, :cond_2

    .line 8377
    const/4 v14, 0x2

    if-ne v6, v14, :cond_1

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 8379
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 8380
    const/4 v6, 0x1

    .line 8381
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    .local v11, "retVal":Ljava/lang/String;
    goto :goto_1

    .line 8383
    .end local v11    # "retVal":Ljava/lang/String;
    :cond_1
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    goto :goto_1

    .line 8388
    .end local v6    # "eventType":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v13    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 8389
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 8392
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    if-eqz v12, :cond_3

    .line 8394
    :try_start_2
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 8400
    :cond_3
    :goto_3
    return-object v11

    .line 8386
    :catch_2
    move-exception v4

    .line 8387
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 8395
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v3

    .line 8396
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private intToByteArray(I)[B
    .locals 5
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x4

    .line 7215
    new-array v0, v4, [B

    .line 7216
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 7217
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    mul-int/lit8 v2, v3, 0x8

    .line 7218
    .local v2, "offset":I
    ushr-int v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 7216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7220
    .end local v2    # "offset":I
    :cond_0
    return-object v0
.end method

.method private isCdmaOrLteRat(I)Z
    .locals 1
    .param p1, "radioTech"    # I

    .prologue
    .line 1666
    const/4 v0, 0x0

    .line 1667
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 1680
    :goto_0
    :pswitch_0
    return v0

    .line 1675
    :pswitch_1
    const/4 v0, 0x1

    .line 1676
    goto :goto_0

    .line 1667
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isDmLoggingPID()Z
    .locals 3

    .prologue
    .line 7169
    const-string/jumbo v1, "ril.dmlog.completed"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7170
    .local v0, "dmDaemonState":Ljava/lang/String;
    const-string/jumbo v1, "portError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSelectTelecomDF()Z
    .locals 1

    .prologue
    .line 6644
    sget-boolean v0, Landroid/telephony/TelephonyManager;->isSelecttelecomDF:Z

    return v0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 4466
    const-string/jumbo v0, ""

    .line 4467
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 4468
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4470
    .local v3, "v":Ljava/lang/String;
    const v5, 0x7fffffff

    if-ne p2, v5, :cond_0

    .line 4471
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4473
    :cond_0
    if-gez p2, :cond_1

    .line 4474
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putIntAtIndex index < 0 index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4476
    :cond_1
    if-eqz v3, :cond_2

    .line 4477
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4481
    .end local v4    # "valArray":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    .line 4482
    const-string/jumbo v2, ""

    .line 4483
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_3

    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 4484
    aget-object v2, v4, v1

    .line 4486
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4481
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4489
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4492
    if-eqz v4, :cond_5

    .line 4493
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_5

    .line 4494
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4493
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4497
    :cond_5
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static semCharToGsm(CZ)I
    .locals 1
    .param p0, "c"    # C
    .param p1, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 8459
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I

    move-result v0

    return v0
.end method

.method public static semConvertEachCharacter(C)C
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 8441
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v0

    return v0
.end method

.method public static semFindGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "langTable"    # I
    .param p4, "langShiftTable"    # I

    .prologue
    .line 8480
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method public static semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 4524
    invoke-static {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static semStringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 8493
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static setImsLine1Number(Ljava/lang/String;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 8267
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    .line 8268
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "setImsLine1Number"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8273
    :goto_0
    sput-object p0, Landroid/telephony/TelephonyManager;->mImsLineNumber:Ljava/lang/String;

    .line 8266
    return-void

    .line 8270
    :cond_0
    const-string/jumbo v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsLine1Number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 4367
    const-string/jumbo v3, ""

    .line 4368
    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4369
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4371
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 4372
    const-string/jumbo p2, ""

    .line 4375
    :cond_0
    if-eqz v2, :cond_1

    .line 4376
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4379
    .end local v1    # "p":[Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4380
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: invalid phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4381
    const-string/jumbo v7, " property="

    .line 4380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4381
    const-string/jumbo v7, " value: "

    .line 4380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4381
    const-string/jumbo v7, " prop="

    .line 4380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    return-void

    .line 4385
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_4

    .line 4386
    const-string/jumbo v4, ""

    .line 4387
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 4388
    aget-object v4, v1, v0

    .line 4390
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4393
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4394
    if-eqz v1, :cond_5

    .line 4395
    add-int/lit8 v0, p0, 0x1

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 4396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4395
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4400
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_6

    .line 4401
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x5b

    if-le v5, v6, :cond_7

    .line 4402
    :cond_6
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: property to long phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4403
    const-string/jumbo v7, " property="

    .line 4402
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4403
    const-string/jumbo v7, " value: "

    .line 4402
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4403
    const-string/jumbo v7, " propVal="

    .line 4402
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    return-void

    .line 4407
    :cond_7
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: success phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4408
    const-string/jumbo v7, " property="

    .line 4407
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4408
    const-string/jumbo v7, " value: "

    .line 4407
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4408
    const-string/jumbo v7, " propVal="

    .line 4407
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4366
    return-void
.end method

.method private validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 7176
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x40

    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7184
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_7

    aget-object v2, v5, v3

    .line 7185
    .local v2, "signature":Landroid/content/pm/Signature;
    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v8, "SKT"

    aput-object v8, v7, v4

    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7186
    sget-boolean v7, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 7187
    const-string/jumbo v7, "DmLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7188
    const-string/jumbo v7, "DmLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7191
    :cond_0
    const-string/jumbo v7, "3082019b30820104a00302010202044c6b473a300d06092a864886f70d010105050030123110300e06035504031307616e64726f6964301e170d3130303831383032333634325a170d3430303831303032333634325a30123110300e06035504031307616e64726f696430819f300d06092a864886f70d010101050003818d00308189028181008e22b5c794e4621f5acf64431605f6f03301e8af027353d1952f3cd6acb5ce50a02bbc85822bf21ee5ee84410ed5c847233de58790d3309799e6e3e91eff8cb8db56ae7b64f691e3a522f78ec869b093720236152410bce1242bbe567fa9c2e1e4efdeb8feabe027d264501fe0ea65777b49b0bed6b806bd888c195394fd2a230203010001300d06092a864886f70d010105050003818100760b171ab6383e2b4170136ebb253e8226d2af2d31c3196c4914c92cea6e91072827b581a639a427fd4302842c5e2be9418d5226745d6ed6cef06904505c7a6ef51897368251a46fc9aae61fc4778ccb85432c801d64cd818f436e686753cccd4aa76e3bcfe3355a73c4bc1e5b239e453fc739b52959cd7de0e617e4072017b0"

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 7192
    const-string/jumbo v7, "3082033b30820223a00302010202046949927c300d06092a864886f70d01010b0500304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e3020170d3133303731373034303731315a180f32313133303632333034303731315a304d310b3009060355040613024b52310e300c0603550407130553656f756c31123010060355040a1309736b74656c65636f6d311a3018060355040b1311536d61727420446576696365204c61622e30820122300d06092a864886f70d01010105000382010f003082010a02820101009054ef68216a1db045aa95d5b71120701ae32b55f692ba4a033e4fd8531d7614ce0a8dc058cf2d11857f68138a3579f5f81eb7fcf6abc721e215868fd2866fae01f69967340267497410520a2cfffca58585cad43dfc5ece54de5c253a2d1e7391a09abeaca1cd2e2db7fb4d045f43ab1c4df0621b1e914322d2f1743d465021d540715b1ea7dafb9d3f25b77812f5998ad3a6befa48bb3ef46acfc50b8f093e2c42611ce1084221a28c6a26c96cb2a78c779e2edc41f859b8638b5c060ec608d92564e1ee355b6cf400888c7bd3fc6b3bd38bf4512d23153cb90a9c1b3c7c221cd15ffbd84abea143f4665bdab5fb969d1332e29499b487810c3324cf1927b10203010001a321301f301d0603551d0e041604149f6ccd79ff1fc86191fd86973cbe8ad3498752a6300d06092a864886f70d01010b05000382010100465ded5885849010ba16c05af54a55a4783db87fe46d3a2411866ca9819f7e734132c513ba370bec8bc657f5b507e8a6632e3cdcdd750b04c059f3e8ef999cd35c8ebc467351e7f16093672c267f4688640f0700d8bbf6f3340aeb447714267e8a4adb91773df43975e62b5ad24065719f3aec825b955442db1b88d6bde48ebed00431915f23991b58c1b24e7033f26f752ddd0c3a16dd4c5a2764055d5e09ae839e2c21404fdd5e90163f4e06305755700f883f11fd50a3277775b76373f6acac68a94faf3a29a798cfc8e869e786d5790e363adbd87037de537ffb2870591e3b5672bf7adaa0c86491041878d8277296fcf6089b5e8b1188c64d0d0bbd6db7"

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 7191
    if-eqz v7, :cond_6

    .line 7193
    :cond_1
    sget-boolean v3, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 7194
    const-string/jumbo v3, "DmLoggingService"

    const-string/jumbo v4, "validateAppSignatureForPackage(), - DOD SIGNATURE !!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7196
    :cond_2
    return v10

    .line 7177
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 7178
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v3, :cond_3

    .line 7179
    const-string/jumbo v3, "DmLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validateAppSignatureForPackage(), exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7181
    :cond_3
    return v4

    .line 7199
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v2    # "signature":Landroid/content/pm/Signature;
    :cond_4
    const-string/jumbo v7, "3082019d30820106a00302010202044f3193c6300d06092a864886f70d010105050030133111300f060355040a0c084c475f55706c7573301e170d3132303230373231313233385a170d3432303133303231313233385a30133111300f060355040a0c084c475f55706c757330819f300d06092a864886f70d010101050003818d0030818902818100872b7051b6c30272b6c200b809a90a4f7fa148bdb554a4b29df536018f256c624c6781006655a30eef98152781353b48da3aa739d8e0bdc2fcee10789438454bce9dcf081a3a8757ecb6f2985bcdec0b83e7ed46dc35ac36e3820442740b0b6c6e05ac17d49502708070e1137914eb26d2e63c9235efbb6d930a353c004228490203010001300d06092a864886f70d0101050500038181004157e820571e50c367497ab98c05375a7d8e40ea67ff3df8858226322faf91e5c12521266402ce9d2e946d25b0833cc7c4b39a2b28cae46e184b16f973a885fd2f607decafcb814ad326739a35d3703c140ac5bdbb18f1598f997e1ae52fcefeee88f3419db99379e63caa981a632d41a23549a0a03e843bf285ad6cdbcaa6f4"

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7200
    sget-boolean v3, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v3, :cond_5

    .line 7201
    const-string/jumbo v3, "DmLoggingService"

    const-string/jumbo v4, "validateAppSignatureForPackage(), -KNIGHT SIGNATURE !!"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7203
    :cond_5
    return v10

    .line 7184
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 7208
    .end local v2    # "signature":Landroid/content/pm/Signature;
    :cond_7
    sget-boolean v3, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v3, :cond_8

    .line 7209
    const-string/jumbo v3, "DmLoggingService"

    const-string/jumbo v5, "validateAppSignatureForPackage(), - Not SIGNATURE ."

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7211
    :cond_8
    return v4
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 4

    .prologue
    .line 5275
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5276
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5277
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5273
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5278
    :catch_0
    move-exception v0

    .line 5279
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#answerRingingCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public answerRingingCall(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 5288
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5289
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5290
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCallForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5286
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5291
    :catch_0
    move-exception v0

    .line 5292
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#answerRingingCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Ljava/lang/String;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v3, 0x0

    .line 8004
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->calculateAkaResponse([B[B)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 8007
    :catch_0
    move-exception v1

    .line 8008
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 8005
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8006
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v4, 0x0

    .line 8081
    const/4 v0, 0x0

    .line 8084
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8091
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 8092
    return-object v4

    .line 8087
    .local v0, "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 8088
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 8085
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 8086
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v4

    .line 8094
    .end local v1    # "ex":Landroid/os/RemoteException;
    .local v0, "bundle":Landroid/os/Bundle;
    :cond_0
    new-instance v3, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;

    invoke-direct {v3, p0, v0}, Landroid/telephony/TelephonyManager$GbaBootstrappingResponse;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Bundle;)V

    return-object v3
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .param p1, "nafId"    # [B

    .prologue
    const/4 v3, 0x0

    .line 8101
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->calculateNafExternalKey([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 8104
    :catch_0
    move-exception v1

    .line 8105
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 8102
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8103
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public call(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 5225
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5226
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5227
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5223
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5228
    :catch_0
    move-exception v0

    .line 5229
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#call"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 5212
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5213
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5214
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5210
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5215
    :catch_0
    move-exception v0

    .line 5216
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#call"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public canChangeDtmfToneLength()Z
    .locals 5

    .prologue
    .line 5835
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5836
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5837
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5841
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5842
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5844
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 5839
    :catch_1
    move-exception v0

    .line 5840
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 5120
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5121
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5122
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5125
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5126
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackage NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5128
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 5123
    :catch_1
    move-exception v0

    .line 5124
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackage RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 5135
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5136
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5137
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5140
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5141
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackageAnyPhone NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5143
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 5138
    :catch_1
    move-exception v0

    .line 5139
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackageAnyPhone RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public closeLockChannel(I)Z
    .locals 5
    .param p1, "channel"    # I

    .prologue
    .line 7856
    const/4 v2, 0x0

    .line 7858
    .local v2, "result":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v4

    invoke-interface {v3, v4, p1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 7864
    .end local v2    # "result":Z
    :goto_0
    return v2

    .line 7861
    .restart local v2    # "result":Z
    :catch_0
    move-exception v1

    .line 7862
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "closeLockChannel(), NullPointerException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7859
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 7860
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "closeLockChannel(), RemoteException"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 348
    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public dial(ILjava/lang/String;)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 5199
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5200
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5201
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->dialForSubscriber(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5197
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5202
    :catch_0
    move-exception v0

    .line 5203
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#dial"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 5186
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5187
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5188
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5184
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5189
    :catch_0
    move-exception v0

    .line 5190
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#dial"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 4

    .prologue
    .line 5668
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5669
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5670
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5671
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5672
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5674
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1175
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->disableLocationUpdates(I)V

    .line 1174
    return-void
.end method

.method public disableLocationUpdates(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1181
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1182
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1183
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1179
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 1184
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1185
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 4

    .prologue
    .line 5655
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5656
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5657
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5658
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5659
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5661
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1141
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->enableLocationUpdates(I)V

    .line 1140
    return-void
.end method

.method public enableLocationUpdates(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1157
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1158
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1159
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1155
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1161
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableVideoCalling(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 5807
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5808
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5809
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5805
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5810
    :catch_0
    move-exception v0

    .line 5811
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#enableVideoCalling"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public endCall()Z
    .locals 5

    .prologue
    .line 5238
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    .line 5239
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "endCall"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/telephony/Rlog;->dumpCallStack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5243
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5244
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 5245
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5246
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5247
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#endCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public endCall(I)Z
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 5256
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v2, :cond_0

    .line 5257
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "endCall(subId)"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/telephony/Rlog;->dumpCallStack(Ljava/lang/String;Ljava/lang/String;I)V

    .line 5261
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5262
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 5263
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->endCallForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5264
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5265
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#endCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5267
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public factoryReset(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 6367
    :try_start_0
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "factoryReset: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6368
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6369
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 6370
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->factoryReset(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6365
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 6371
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public feliCaUimLock(I[ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "changestate"    # I
    .param p2, "cmd"    # [I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 7715
    const/4 v8, 0x0

    .line 7716
    .local v8, "result":Ljava/lang/String;
    const/4 v6, 0x0

    .line 7717
    .local v6, "resAPDU":I
    const/4 v7, -0x1

    .line 7718
    .local v7, "resType":I
    const/4 v2, 0x1

    .line 7719
    .local v2, "RESP_EF_LOCK_LOCK_USER":I
    const/4 v3, 0x2

    .line 7720
    .local v3, "RESP_EF_LOCK_UNLOCK_USER":I
    const/4 v0, 0x0

    .line 7721
    .local v0, "EF_LOCK_OFF":I
    const/4 v1, 0x1

    .line 7722
    .local v1, "EF_LOCK_ON":I
    const/4 v5, 0x0

    .line 7723
    .local v5, "mEFLockUser":I
    const/4 v4, 0x0

    .line 7726
    .local v4, "mEFLockRemote":I
    return-object v8
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 3706
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAllCellInfo : Caller (PID / UID / TID): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3710
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3711
    return-object v6

    .line 3712
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3715
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3716
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v6

    .line 3713
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3714
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v6
.end method

.method public getBtid()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8029
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8030
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 8031
    return-object v3

    .line 8032
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getBtid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 8035
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 8036
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 8033
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8034
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCallState()I
    .locals 4

    .prologue
    .line 3229
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 3230
    .local v1, "telecom":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 3231
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3233
    .end local v1    # "telecom":Lcom/android/internal/telecom/ITelecomService;
    :catch_0
    move-exception v0

    .line 3234
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelecomService#getCallState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3236
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getCallState(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 3247
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 3248
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCallStateForSlot(I)I

    move-result v1

    return v1
.end method

.method public getCallStateForSlot(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3258
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3259
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3260
    return v3

    .line 3261
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSlot(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3265
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3267
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 3262
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3264
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5149
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 5156
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5157
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5158
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 5161
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5162
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCarrierPackageNamesForIntentAndPhone NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5164
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v5

    .line 5159
    :catch_1
    move-exception v0

    .line 5160
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCarrierPackageNamesForIntentAndPhone RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 3468
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 3480
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3481
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3482
    return v4

    .line 3483
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3487
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3488
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 3484
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3486
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 3503
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 3518
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3519
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3520
    return v4

    .line 3521
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3525
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3526
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 3522
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3524
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3539
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 3552
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3553
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3554
    return-object v4

    .line 3555
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3559
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3560
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 3556
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3558
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getCdmaMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5077
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 5084
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5085
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 5086
    return-object v3

    .line 5087
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 5090
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5091
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 5088
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5089
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5098
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 5105
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5106
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 5107
    return-object v3

    .line 5108
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 5111
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5112
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 5109
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5110
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1064
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation : Caller (PID / UID / TID): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1068
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v4, :cond_0

    .line 1069
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because telephony is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-object v8

    .line 1072
    :cond_0
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1073
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1074
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because bundle is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return-object v8

    .line 1077
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1078
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1079
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because CellLocation is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    return-object v8

    .line 1082
    :cond_2
    return-object v1

    .line 1086
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .line 1087
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to NullPointerException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-object v8

    .line 1083
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1084
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    return-object v8
.end method

.method public getCellLocationBySubId(I)Landroid/telephony/CellLocation;
    .locals 9
    .param p1, "subId"    # I

    .prologue
    const/4 v8, 0x0

    .line 1106
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1107
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v4, :cond_0

    .line 1108
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because telephony is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    return-object v8

    .line 1111
    :cond_0
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/ITelephony;->getCellLocationBySubId(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1112
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1113
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because bundle is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return-object v8

    .line 1116
    :cond_1
    invoke-static {v0, p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 1117
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1118
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because CellLocation is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    return-object v8

    .line 1121
    :cond_2
    return-object v1

    .line 1125
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .line 1126
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to NullPointerException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-object v8

    .line 1122
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 1123
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    return-object v8
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 4784
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4785
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4786
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4789
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4790
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCellNetworkScanResults NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4792
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v5

    .line 4787
    :catch_1
    move-exception v0

    .line 4788
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCellNetworkScanResults RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2937
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2951
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2952
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2953
    return-object v3

    .line 2954
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2957
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2959
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2955
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2956
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCurrentPhoneType()I
    .locals 1

    .prologue
    .line 1236
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1252
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1255
    const/4 v0, 0x0

    .line 1260
    .local v0, "phoneId":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v1

    return v1

    .line 1257
    .end local v0    # "phoneId":I
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .restart local v0    # "phoneId":I
    goto :goto_0
.end method

.method public getCurrentPhoneTypeForSlot(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 1270
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1271
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1272
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSlot(I)I

    move-result v3

    return v3

    .line 1275
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1281
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1284
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v3

    return v3

    .line 1277
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1280
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v3

    return v3
.end method

.method public getDataActivity()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3310
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3311
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3312
    return v3

    .line 3313
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3317
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3319
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 3314
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3316
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 5740
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getDataEnabled(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    .line 5746
    const/4 v2, 0x0

    .line 5748
    .local v2, "retVal":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 5749
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 5750
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 5755
    .end local v2    # "retVal":Z
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 5751
    .restart local v2    # "retVal":Z
    :catch_0
    move-exception v0

    .line 5752
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "Error calling ITelephony#getDataEnabled"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5753
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 1929
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1946
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1947
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1948
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1951
    :cond_0
    return v4

    .line 1956
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1958
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1953
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1955
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getDataState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3349
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3350
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3351
    return v3

    .line 3352
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3356
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3357
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 3353
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3355
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDataState(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3374
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3375
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3376
    return v3

    .line 3377
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateSimSlot(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3381
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3382
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 3378
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3380
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDefaultSim()I
    .locals 1

    .prologue
    .line 4358
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 911
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 912
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 913
    return-object v4

    .line 914
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 917
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 918
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 915
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 916
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 934
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 935
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 936
    return-object v4

    .line 937
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 940
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 941
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 938
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 939
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 868
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 884
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 885
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    return-object v5

    .line 887
    :cond_0
    const-string/jumbo v3, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 889
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 890
    const-string/jumbo v3, "gsm.version.baseband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 894
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 897
    :catch_0
    move-exception v1

    .line 898
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v5

    .line 895
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 896
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v5
.end method

.method public getDisable2g()I
    .locals 4

    .prologue
    .line 8409
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8410
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 8411
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDisable2g()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 8412
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 8413
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getDisable2g"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8415
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, -0x1

    return v2
.end method

.method public getEuimid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 8322
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getEuimid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 8323
    :catch_0
    move-exception v0

    .line 8324
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "error calling itelephony#getEuimid"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8325
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFeliCaUimLockStatus(I)I
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 7793
    const/4 v0, 0x0

    .line 7796
    .local v0, "result":I
    return v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2643
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2644
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2645
    return-object v4

    .line 2646
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2649
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2651
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2647
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2648
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2667
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2668
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2669
    return-object v4

    .line 2670
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2673
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2675
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2671
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2672
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "authType"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4678
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 4679
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 4680
    return-object v3

    .line 4681
    :cond_0
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(IIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4684
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 4686
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 4682
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4683
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appType"    # I
    .param p2, "authType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 4656
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 966
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 967
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    return-object v4

    .line 970
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 973
    :catch_0
    move-exception v1

    .line 974
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 971
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 972
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getImsRegisteredFeature()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6490
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 6491
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 6492
    return v3

    .line 6493
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImsRegisteredFeature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 6496
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 6498
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 6494
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 6495
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getIsimAid()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8057
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8058
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 8059
    return-object v3

    .line 8060
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimAid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 8063
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 8064
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 8061
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8062
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4609
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 4610
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 4611
    return-object v3

    .line 4612
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4615
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 4617
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 4613
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4614
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3112
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3113
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3114
    return-object v3

    .line 3115
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3118
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3120
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3116
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3117
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimDomain(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3131
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3132
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3133
    return-object v3

    .line 3134
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomainForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3137
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3139
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3135
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3136
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3074
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3075
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3076
    return-object v3

    .line 3077
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3080
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3082
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3078
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3079
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpi(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3093
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3094
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3095
    return-object v3

    .line 3096
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpiForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3099
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3101
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3097
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3098
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3151
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3152
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3153
    return-object v3

    .line 3154
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3157
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3159
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3155
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3156
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpu(I)[Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3171
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3172
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3173
    return-object v3

    .line 3174
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpuForSubscriber(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3177
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3179
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3175
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3176
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4567
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 4568
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 4569
    return-object v3

    .line 4570
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4573
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 4575
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 4571
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4572
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4587
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 4588
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 4589
    return-object v3

    .line 4590
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4593
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 4595
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 4591
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4592
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getKeyLifetime()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8043
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8044
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 8045
    return-object v3

    .line 8046
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getKeyLifetime()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 8049
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 8050
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 8047
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8048
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getLGUplusKnightInfo()Ljava/util/HashMap;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 7023
    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "LGT"

    aput-object v6, v5, v9

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7025
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7023
    if-eqz v5, :cond_1

    .line 7026
    :cond_0
    return-object v8

    .line 7029
    :cond_1
    const/4 v3, 0x0

    .line 7030
    .local v3, "mLGUplusKnightInfo":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 7032
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getMobileQualityInformation()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 7039
    .local v3, "mLGUplusKnightInfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 7041
    .local v0, "Values":[Ljava/lang/String;
    :try_start_1
    const-string/jumbo v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 7046
    .local v0, "Values":[Ljava/lang/String;
    const-string/jumbo v5, "getLGUplusKnightInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7048
    const-string/jumbo v5, "IMSI"

    aget-object v6, v0, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7049
    const-string/jumbo v5, "GUTI"

    aget-object v6, v0, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7050
    const-string/jumbo v5, "IP"

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7051
    const-string/jumbo v5, "Antenna Bar"

    const/4 v6, 0x3

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7052
    const-string/jumbo v5, "NV Mode"

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7053
    const-string/jumbo v5, "Service State"

    const/4 v6, 0x5

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7054
    const-string/jumbo v5, "LAC"

    const/4 v6, 0x6

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7055
    const-string/jumbo v5, "TAC"

    const/4 v6, 0x7

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7056
    const-string/jumbo v5, "Band"

    const/16 v6, 0x8

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7057
    const-string/jumbo v5, "Bandwidth"

    const/16 v6, 0x9

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7058
    const-string/jumbo v5, "PCI"

    const/16 v6, 0xa

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7059
    const-string/jumbo v5, "TX"

    const/16 v6, 0xb

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7060
    const-string/jumbo v5, "RSSI"

    const/16 v6, 0xc

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7061
    const-string/jumbo v5, "RSRP"

    const/16 v6, 0xd

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7062
    const-string/jumbo v5, "RSRQ"

    const/16 v6, 0xe

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7063
    const-string/jumbo v5, "SINR"

    const/16 v6, 0xf

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7064
    const-string/jumbo v5, "EARFCN downlink"

    const/16 v6, 0x10

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7065
    const-string/jumbo v5, "EARFCN uplink"

    const/16 v6, 0x11

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7066
    const-string/jumbo v5, "EMM cause"

    const/16 v6, 0x12

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7067
    const-string/jumbo v5, "EMM state"

    const/16 v6, 0x13

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7068
    const-string/jumbo v5, "EMM connection state"

    const/16 v6, 0x14

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7069
    const-string/jumbo v5, "Default Bearer count"

    const/16 v6, 0x15

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7070
    const-string/jumbo v5, "Dedicated Bearer count"

    const/16 v6, 0x16

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7072
    return-object v4

    .line 7033
    .end local v0    # "Values":[Ljava/lang/String;
    .local v3, "mLGUplusKnightInfo":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 7034
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMobileQualityInformation() - Exception occured : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7035
    return-object v8

    .line 7042
    .end local v2    # "ex":Landroid/os/RemoteException;
    .local v0, "Values":[Ljava/lang/String;
    .local v3, "mLGUplusKnightInfo":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 7043
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getLGUplusKnightInfo() - Values is not valid"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7044
    return-object v8
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2799
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2814
    const/4 v0, 0x0

    .line 2816
    .local v0, "alphaTag":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2817
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 2819
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2818
    invoke-interface {v4, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 2823
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2824
    return-object v0

    .line 2827
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    .line 2828
    .local v3, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v3, :cond_2

    .line 2829
    return-object v6

    .line 2830
    :cond_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5

    .line 2833
    .end local v3    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v2

    .line 2835
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v6

    .line 2831
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2832
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v6

    .line 2820
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "alphaTag":Ljava/lang/String;
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2821
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2704
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2722
    const/4 v3, 0x0

    .line 2724
    .local v3, "number":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2725
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 2726
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 2730
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 2731
    return-object v3

    .line 2734
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2735
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_2

    .line 2736
    return-object v6

    .line 2737
    :cond_2
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5

    .line 2740
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2742
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v6

    .line 2738
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2739
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v6

    .line 2727
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "number":Ljava/lang/String;
    :catch_2
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2728
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6379
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6380
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 6381
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getLocaleFromDefaultSim()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 6383
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 6385
    :cond_0
    return-object v2
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2523
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 2542
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2543
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2544
    return v4

    .line 2545
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2549
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2551
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 2546
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2548
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1020
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid(I)Ljava/lang/String;
    .locals 6
    .param p1, "slotId"    # I

    .prologue
    const/4 v5, 0x0

    .line 1033
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1035
    .local v3, "subId":[I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 1036
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 1037
    return-object v5

    .line 1038
    :cond_0
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMeidForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 1041
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 1042
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v5

    .line 1039
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1040
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v5
.end method

.method public getMergedSubscriberIds()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2849
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2850
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2851
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 2852
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2855
    :cond_0
    :goto_0
    return-object v4

    .line 2853
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3845
    const-string/jumbo v3, "http://wap.samsungmobile.com/uaprof/SAMSUNGUAPROF.xml"

    .line 3846
    .local v3, "sUaProfUrl":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 3854
    .local v0, "cscFeature":Lcom/samsung/android/feature/SemCscFeature;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getCustomerPath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "MessageUaProfUrl"

    invoke-direct {p0, v6, v7}, Landroid/telephony/TelephonyManager;->getValuefromCSC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3856
    .local v2, "mmsUap_url":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3857
    move-object v3, v2

    .line 3861
    :cond_0
    const-string/jumbo v6, "CscFeature_Message_UaProfUrl"

    invoke-virtual {v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3863
    .local v1, "cscUapUrl":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 3864
    move-object v3, v1

    .line 3869
    :cond_1
    const-string/jumbo v6, "CscFeature_RIL_MmsUapBuildid"

    invoke-virtual {v0, v6, v9}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 3868
    if-eqz v6, :cond_4

    .line 3870
    const-string/jumbo v6, "ATT"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 3871
    const-string/jumbo v6, "ro.cdma.home.operator.alpha"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3872
    .local v4, "sellerID":Ljava/lang/String;
    const-string/jumbo v6, "ro.build.version.incremental"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3874
    .local v5, "version":Ljava/lang/String;
    const-string/jumbo v6, "Sprint"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3875
    const-string/jumbo v4, "SPRINT"

    .line 3887
    :cond_2
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_3

    .line 3888
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3890
    :cond_3
    const/4 v6, 0x5

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3891
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3892
    const-string/jumbo v7, "/"

    .line 3891
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3892
    const-string/jumbo v7, ".rdf"

    .line 3891
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3899
    .end local v4    # "sellerID":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :cond_4
    :goto_1
    if-eqz v3, :cond_b

    .line 3900
    return-object v3

    .line 3877
    .restart local v4    # "sellerID":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "Virgin"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "Virgin Mobile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3878
    :cond_6
    const-string/jumbo v4, "VIRGIN"

    goto :goto_0

    .line 3879
    :cond_7
    const-string/jumbo v6, "Boost"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "Boost Mobile"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3880
    :cond_8
    const-string/jumbo v4, "BOOST"

    goto :goto_0

    .line 3881
    :cond_9
    const-string/jumbo v6, "Samsung"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3882
    const-string/jumbo v4, "MVNO"

    goto/16 :goto_0

    .line 3894
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".rdf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 3903
    .end local v4    # "sellerID":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :cond_b
    iget-object v6, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v6, :cond_c

    return-object v8

    .line 3904
    :cond_c
    iget-object v6, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 3905
    const v7, 0x1040054

    .line 3904
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 3778
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SAMSUNG-ANDROID-MMS/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3782
    .local v4, "sUserAgent":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getCustomerPath()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "MessageUserAgent"

    invoke-direct {p0, v8, v9}, Landroid/telephony/TelephonyManager;->getValuefromCSC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3784
    .local v2, "mmsUa":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3785
    move-object v4, v2

    .line 3789
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 3790
    .local v0, "cscFeature":Lcom/samsung/android/feature/SemCscFeature;
    const-string/jumbo v8, "CscFeature_Message_UserAgent"

    invoke-virtual {v0, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3791
    .local v1, "cscUa":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 3792
    move-object v4, v1

    .line 3796
    :cond_1
    const-string/jumbo v8, "CscFeature_RIL_MmsUapBuildid"

    invoke-virtual {v0, v8, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 3795
    if-eqz v8, :cond_2

    .line 3797
    const-string/jumbo v8, "ro.cdma.home.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3798
    .local v5, "sellerID":Ljava/lang/String;
    const-string/jumbo v8, "ro.build.version.incremental"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3799
    .local v7, "version":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3801
    .local v3, "model":Ljava/lang/String;
    const-string/jumbo v8, "USAATTUserAgent"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3802
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Mozilla/5.0 SMM-MMS/1.2.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3829
    .end local v3    # "model":Ljava/lang/String;
    .end local v5    # "sellerID":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v4, :cond_a

    .line 3830
    return-object v4

    .line 3804
    .restart local v3    # "model":Ljava/lang/String;
    .restart local v5    # "sellerID":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "Sprint"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3806
    const-string/jumbo v5, "SPRINT"

    .line 3807
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SAMSUNG_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3823
    :goto_1
    const/4 v8, 0x5

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3824
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 3810
    :cond_4
    move-object v6, v5

    .line 3811
    .local v6, "sellerPrefix":Ljava/lang/String;
    const-string/jumbo v8, "Virgin"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "Virgin Mobile"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3812
    :cond_5
    const-string/jumbo v6, "VMUB"

    .line 3813
    const-string/jumbo v5, "VIRGIN"

    .line 3821
    :cond_6
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3814
    :cond_7
    const-string/jumbo v8, "Boost"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string/jumbo v8, "Boost Mobile"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3815
    :cond_8
    const-string/jumbo v6, "BST"

    .line 3816
    const-string/jumbo v5, "BOOST"

    goto :goto_2

    .line 3817
    :cond_9
    const-string/jumbo v8, "Samsung"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3818
    const-string/jumbo v6, "Wholesale"

    .line 3819
    const-string/jumbo v5, "MVNO"

    goto :goto_2

    .line 3833
    .end local v3    # "model":Ljava/lang/String;
    .end local v5    # "sellerID":Ljava/lang/String;
    .end local v6    # "sellerPrefix":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v8, :cond_b

    return-object v10

    .line 3834
    :cond_b
    iget-object v8, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 3835
    const v9, 0x1040053

    .line 3834
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public getMobileQualityInfo()Ljava/util/HashMap;
    .locals 11

    .prologue
    .line 6759
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "SKT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const-string/jumbo v9, "KTT"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6760
    const/4 v8, 0x0

    return-object v8

    .line 6763
    :cond_0
    const/4 v6, 0x0

    .line 6764
    .local v6, "mMobileInfo":Ljava/lang/String;
    const/4 v5, 0x0

    .line 6765
    .local v5, "mMobileIP":Ljava/lang/String;
    const/4 v0, 0x0

    .line 6766
    .local v0, "Values":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 6769
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/ITelephony;->getMobileQualityInformation()Ljava/lang/String;

    move-result-object v6

    .line 6770
    .local v6, "mMobileInfo":Ljava/lang/String;
    const-string/jumbo v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6777
    .local v0, "Values":[Ljava/lang/String;
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v8

    const-string/jumbo v9, "MOBILE"

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/ITelephony;->getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 6784
    .local v5, "mMobileIP":Ljava/lang/String;
    sget-boolean v8, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v8, :cond_1

    .line 6785
    const-string/jumbo v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mMobileInfo["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] length("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6786
    const-string/jumbo v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mMobileIP["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6789
    :cond_1
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "KTT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 6790
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, v0

    if-ge v3, v8, :cond_8

    .line 6791
    const/4 v4, 0x0

    .line 6792
    .local v4, "mElements":[Ljava/lang/String;
    aget-object v8, v0, v3

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 6793
    .local v4, "mElements":[Ljava/lang/String;
    const-string/jumbo v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMobileQualityInfo mElements["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    const/4 v8, 0x1

    aget-object v8, v4, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 6795
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6807
    :goto_1
    if-nez v3, :cond_2

    const-string/jumbo v8, "LTE"

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6808
    const-string/jumbo v8, "TelephonyManager"

    const-string/jumbo v9, "getMobileQualityInfo callType VOLTE"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6809
    iget-object v8, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "voicecall_type"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 6810
    .local v1, "callType":I
    if-nez v1, :cond_7

    .line 6811
    const/4 v1, 0x1

    .line 6815
    :goto_2
    const-string/jumbo v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMobileQualityInfo callType["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6816
    const-string/jumbo v8, "VOLTE"

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6790
    .end local v1    # "callType":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 6771
    .end local v3    # "i":I
    .end local v4    # "mElements":[Ljava/lang/String;
    .end local v6    # "mMobileInfo":Ljava/lang/String;
    .local v0, "Values":[Ljava/lang/String;
    .local v5, "mMobileIP":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 6772
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMobileQualityInformation() - RemoteException occured : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6773
    const/4 v8, 0x0

    return-object v8

    .line 6778
    .end local v2    # "ex":Landroid/os/RemoteException;
    .local v0, "Values":[Ljava/lang/String;
    .restart local v6    # "mMobileInfo":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 6779
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string/jumbo v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getIpAddressFromLinkProp() - RemoteException occured : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6780
    const/4 v8, 0x0

    return-object v8

    .line 6797
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "mElements":[Ljava/lang/String;
    .local v5, "mMobileIP":Ljava/lang/String;
    :cond_3
    const-string/jumbo v8, "1"

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6798
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 6799
    :cond_4
    const-string/jumbo v8, "2"

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 6800
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 6801
    :cond_5
    const-string/jumbo v8, "3"

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6802
    const/4 v8, 0x0

    aget-object v8, v4, v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 6804
    :cond_6
    const-string/jumbo v8, "TelephonyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getMobileQualityInfo Wrong Type["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 6813
    .restart local v1    # "callType":I
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 6820
    .end local v1    # "callType":I
    .end local v4    # "mElements":[Ljava/lang/String;
    :cond_8
    return-object v7

    .line 6823
    .end local v3    # "i":I
    :cond_9
    const/4 v8, 0x0

    aget-object v8, v0, v8

    const-string/jumbo v9, "WCDMA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 6824
    const-string/jumbo v8, "network_mode"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6825
    const-string/jumbo v8, "mcc"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6826
    const-string/jumbo v8, "mnc"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6827
    const-string/jumbo v8, "downlink_channel"

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6828
    const-string/jumbo v8, "uplink_channel"

    const/4 v9, 0x4

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6829
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "KTT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 6830
    const-string/jumbo v8, "cell_id"

    const/4 v9, 0x5

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6834
    :goto_3
    const-string/jumbo v8, "rssi"

    const/4 v9, 0x6

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6835
    const/4 v8, 0x7

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 6836
    const-string/jumbo v8, "tx_power"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6840
    :goto_4
    const-string/jumbo v8, "ul_interference"

    const/16 v9, 0x8

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6841
    const-string/jumbo v8, "activeset_psc"

    const/16 v9, 0x9

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6842
    const-string/jumbo v8, "activeset_rscp"

    const/16 v9, 0xa

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6843
    const-string/jumbo v8, "activeset_ecio"

    const/16 v9, 0xb

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6844
    const/16 v8, 0xc

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 6845
    const-string/jumbo v8, "neighborset_psc"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6849
    :goto_5
    const/16 v8, 0xd

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 6850
    const-string/jumbo v8, "neighborset_rscp"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6854
    :goto_6
    const/16 v8, 0xe

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 6855
    const-string/jumbo v8, "neighborset_ecio"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6859
    :goto_7
    const-string/jumbo v8, "cqi"

    const/16 v9, 0xf

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6860
    const/16 v8, 0x10

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 6861
    const-string/jumbo v8, "bler"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6866
    :goto_8
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "KTT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 6867
    array-length v8, v0

    const/16 v9, 0x11

    if-le v8, v9, :cond_a

    .line 6868
    const-string/jumbo v8, "etc"

    const/16 v9, 0x11

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6986
    :cond_a
    :goto_9
    return-object v7

    .line 6832
    :cond_b
    const-string/jumbo v8, "cell_id"

    const/4 v9, 0x5

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 6838
    :cond_c
    const-string/jumbo v8, "tx_power"

    const/4 v9, 0x7

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 6847
    :cond_d
    const-string/jumbo v8, "neighborset_psc"

    const/16 v9, 0xc

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 6852
    :cond_e
    const-string/jumbo v8, "neighborset_rscp"

    const/16 v9, 0xd

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 6857
    :cond_f
    const-string/jumbo v8, "neighborset_ecio"

    const/16 v9, 0xe

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 6863
    :cond_10
    const-string/jumbo v8, "bler"

    const/16 v9, 0x10

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 6872
    :cond_11
    const-string/jumbo v8, "network_mode"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6873
    const-string/jumbo v8, "mcc"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6874
    const-string/jumbo v8, "mnc"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6875
    const-string/jumbo v8, "tac"

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6876
    const-string/jumbo v8, "earfcn_downlink"

    const/4 v9, 0x4

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6877
    const-string/jumbo v8, "earfcn_uplink"

    const/4 v9, 0x5

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6878
    const-string/jumbo v8, "band"

    const/4 v9, 0x6

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6879
    const-string/jumbo v8, "bandwidth"

    const/4 v9, 0x7

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6880
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "KTT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 6881
    const-string/jumbo v8, "cell_id"

    const/16 v9, 0x8

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6885
    :goto_a
    const-string/jumbo v8, "pci"

    const/16 v9, 0x9

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6886
    const-string/jumbo v8, "rssi"

    const/16 v9, 0xa

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6887
    const-string/jumbo v8, "rsrp"

    const/16 v9, 0xb

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6888
    const-string/jumbo v8, "rsrq"

    const/16 v9, 0xc

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6889
    const/16 v8, 0xd

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 6890
    const-string/jumbo v8, "tx_power"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6894
    :goto_b
    const-string/jumbo v8, "sinr"

    const/16 v9, 0xe

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6895
    const-string/jumbo v8, "rrc"

    const/16 v9, 0xf

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6897
    const-string/jumbo v8, "ip"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6898
    const-string/jumbo v8, "cqi"

    const/16 v9, 0x11

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6900
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "SKT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    array-length v8, v0

    const/16 v9, 0x21

    if-lt v8, v9, :cond_15

    .line 6901
    const-string/jumbo v8, "ri"

    const/16 v9, 0x12

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6902
    const-string/jumbo v8, "ca"

    const/16 v9, 0x13

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6903
    const-string/jumbo v8, "s_pci"

    const/16 v9, 0x14

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6904
    const-string/jumbo v8, "s_freq"

    const/16 v9, 0x15

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6905
    const-string/jumbo v8, "s_bandwidth"

    const/16 v9, 0x16

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6906
    const-string/jumbo v8, "s_rsrp"

    const/16 v9, 0x17

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6907
    const-string/jumbo v8, "s_rsrq"

    const/16 v9, 0x18

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6908
    const-string/jumbo v8, "s_sinr"

    const/16 v9, 0x19

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6909
    const-string/jumbo v8, "s2_ca"

    const/16 v9, 0x1a

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6910
    const-string/jumbo v8, "s2_pci"

    const/16 v9, 0x1b

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6911
    const-string/jumbo v8, "s2_freq"

    const/16 v9, 0x1c

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6912
    const-string/jumbo v8, "s2_bandwidth"

    const/16 v9, 0x1d

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6913
    const-string/jumbo v8, "s2_rsrp"

    const/16 v9, 0x1e

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6914
    const-string/jumbo v8, "s2_rsrq"

    const/16 v9, 0x1f

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6915
    const-string/jumbo v8, "s2_sinr"

    const/16 v9, 0x20

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6938
    :cond_12
    :goto_c
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "SKT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    array-length v8, v0

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_a

    .line 6939
    const/16 v8, 0x21

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 6940
    const-string/jumbo v8, "neighborset_pci"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6944
    :goto_d
    const/16 v8, 0x22

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 6945
    const-string/jumbo v8, "neighborset_rsrp"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6949
    :goto_e
    const/16 v8, 0x23

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 6950
    const-string/jumbo v8, "neighborset_rsrq"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6954
    :goto_f
    const/16 v8, 0x24

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 6955
    const-string/jumbo v8, "neighborset_pci_2"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6959
    :goto_10
    const/16 v8, 0x25

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 6960
    const-string/jumbo v8, "neighborset_rsrp_2"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6964
    :goto_11
    const/16 v8, 0x26

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 6965
    const-string/jumbo v8, "neighborset_rsrq_2"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6969
    :goto_12
    const/16 v8, 0x27

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 6970
    const-string/jumbo v8, "neighborset_pci_3"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6974
    :goto_13
    const/16 v8, 0x28

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 6975
    const-string/jumbo v8, "neighborset_rsrp_3"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6979
    :goto_14
    const/16 v8, 0x29

    aget-object v8, v0, v8

    const-string/jumbo v9, "--"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 6980
    const-string/jumbo v8, "neighborset_rsrq_3"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 6883
    :cond_13
    const-string/jumbo v8, "cell_id"

    const/16 v9, 0x8

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 6892
    :cond_14
    const-string/jumbo v8, "tx_power"

    const/16 v9, 0xd

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 6916
    :cond_15
    const/4 v8, 0x0

    aget-object v8, v0, v8

    const-string/jumbo v9, "LTE-A"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 6917
    const-string/jumbo v8, "network_mode"

    const-string/jumbo v9, "LTE"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6918
    const-string/jumbo v8, "ri"

    const/16 v9, 0x12

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6919
    const-string/jumbo v8, "ca"

    const/16 v9, 0x13

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6920
    const-string/jumbo v8, "s_pci"

    const/16 v9, 0x14

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6921
    const-string/jumbo v8, "s_freq"

    const/16 v9, 0x15

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6922
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "KTT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 6923
    array-length v8, v0

    const/16 v9, 0x16

    if-le v8, v9, :cond_12

    .line 6924
    const-string/jumbo v8, "etc"

    const/16 v9, 0x16

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 6928
    :cond_16
    const-string/jumbo v8, "ri"

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6929
    const-string/jumbo v8, "ca"

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6930
    const-string/jumbo v8, "s_pci"

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6931
    const-string/jumbo v8, "s_freq"

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, -0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6932
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "KTT"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 6933
    array-length v8, v0

    const/16 v9, 0x12

    if-le v8, v9, :cond_12

    .line 6934
    const-string/jumbo v8, "etc"

    const/16 v9, 0x12

    aget-object v9, v0, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 6942
    :cond_17
    const-string/jumbo v8, "neighborset_pci"

    const/16 v9, 0x21

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 6947
    :cond_18
    const-string/jumbo v8, "neighborset_rsrp"

    const/16 v9, 0x22

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 6952
    :cond_19
    const-string/jumbo v8, "neighborset_rsrq"

    const/16 v9, 0x23

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f

    .line 6957
    :cond_1a
    const-string/jumbo v8, "neighborset_pci_2"

    const/16 v9, 0x24

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_10

    .line 6962
    :cond_1b
    const-string/jumbo v8, "neighborset_rsrp_2"

    const/16 v9, 0x25

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 6967
    :cond_1c
    const-string/jumbo v8, "neighborset_rsrq_2"

    const/16 v9, 0x26

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_12

    .line 6972
    :cond_1d
    const-string/jumbo v8, "neighborset_pci_3"

    const/16 v9, 0x27

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 6977
    :cond_1e
    const-string/jumbo v8, "neighborset_rsrp_3"

    const/16 v9, 0x28

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 6982
    :cond_1f
    const-string/jumbo v8, "neighborset_rsrq_3"

    const/16 v9, 0x29

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9
.end method

.method public getMobileQualityInformation()Ljava/util/HashMap;
    .locals 2

    .prologue
    .line 6743
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "getMobileQualityInformation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6744
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMobileQualityInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMobileQualityInformation2()Ljava/util/HashMap;
    .locals 2

    .prologue
    .line 6751
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "getMobileQualityInformation2"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6752
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMobileQualityInfo()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2868
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2883
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2884
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2885
    return-object v4

    .line 2886
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2889
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2891
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2887
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2888
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 2

    .prologue
    .line 279
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string/jumbo v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 282
    :cond_0
    const-string/jumbo v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 284
    :cond_1
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 287
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1
.end method

.method public getMultiSimForegroundPhoneId()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8147
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMultiSimForegroundPhoneId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 8150
    :catch_0
    move-exception v1

    .line 8151
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 8148
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8149
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getMultiSimLastRejectIncomingCallPhoneId()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8125
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getMultiSimLastRejectIncomingCallPhoneId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 8128
    :catch_0
    move-exception v1

    .line 8129
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 8126
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8127
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 984
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNai(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNai(I)Ljava/lang/String;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x0

    .line 994
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 996
    .local v4, "subId":[I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 997
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 998
    return-object v8

    .line 999
    :cond_0
    const/4 v5, 0x0

    aget v5, v4, v5

    iget-object v6, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/android/internal/telephony/IPhoneSubInfo;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1000
    .local v3, "nai":Ljava/lang/String;
    const-string/jumbo v5, "TelephonyManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1001
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Nai = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :cond_1
    return-object v3

    .line 1006
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v3    # "nai":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1007
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v8

    .line 1004
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1005
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v8
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1203
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1204
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 1205
    return-object v4

    .line 1206
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1209
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1210
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 1207
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1208
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1726
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1741
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1742
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1758
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1759
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "INVALID_PHONE_INDEX ==> DEFAULT_PHONE_INDEX"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/4 p1, 0x0

    .line 1763
    :cond_0
    const-string/jumbo v0, "gsm.operator.iso-country"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1599
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1614
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1615
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperatorForPhone(I)Ljava/lang/String;
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1646
    const-string/jumbo v1, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1647
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1649
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->checkIsSprintSimCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->isCdmaOrLteRat(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1656
    :cond_0
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "getNetworkOperator network value"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string/jumbo v1, "gsm.operator.numeric.real"

    const-string/jumbo v2, ""

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1650
    :cond_1
    const-string/jumbo v1, "ro.cdma.home.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1651
    .local v0, "homeOperatorNumeric":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 1652
    const-string/jumbo v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNetworkOperator sprint sim + cdma home/lte home = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    return-object v0

    .line 1661
    .end local v0    # "homeOperatorNumeric":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "gsm.operator.numeric"

    const-string/jumbo v2, ""

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1542
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x2

    .line 1556
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 1557
    .local v2, "phoneId":I
    const-string/jumbo v4, "gsm.operator.numeric"

    const-string/jumbo v5, ""

    invoke-static {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1558
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string/jumbo v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1560
    .local v3, "simOperatorNumeric":Ljava/lang/String;
    const-string/jumbo v4, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1561
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1562
    const-string/jumbo v4, "ro.cdma.home.operator.alpha"

    const-string/jumbo v5, ""

    invoke-static {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1563
    .local v0, "homeOperatorAlpha":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 1565
    const-string/jumbo v4, "Chameleon"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1566
    const-string/jumbo v0, "Samsung"

    .line 1567
    return-object v0

    .line 1573
    .end local v0    # "homeOperatorAlpha":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "gsm.operator.numeric.real"

    invoke-static {v2, v4, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1574
    const-string/jumbo v4, "44020"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1575
    const-string/jumbo v4, "SoftBank"

    return-object v4

    .line 1579
    :cond_1
    const-string/jumbo v4, "IUS"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "MNX"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1580
    :cond_2
    const-string/jumbo v4, "334090"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "334090"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1581
    const-string/jumbo v4, "AT&T"

    return-object v4

    .line 1583
    :cond_3
    const-string/jumbo v4, "334050"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "334050"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "Unefon"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1584
    const-string/jumbo v4, "UNEFON"

    return-object v4

    .line 1588
    :cond_4
    const-string/jumbo v4, "gsm.operator.alpha"

    const-string/jumbo v5, ""

    invoke-static {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getNetworkType()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1821
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1822
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1823
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1826
    :cond_0
    return v3

    .line 1831
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1833
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1828
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1830
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1868
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1869
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1870
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1873
    :cond_0
    return v4

    .line 1878
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1880
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1875
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1877
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2050
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOtaSpNumberSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 6145
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6146
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 6159
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6161
    const-string/jumbo v0, "ro.cdma.otaspnumschema"

    .line 6160
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6164
    :cond_0
    return-object p2
.end method

.method public getPackagesWithCarrierPrivileges()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5170
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5171
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5172
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivileges()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 5176
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5177
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPackagesWithCarrierPrivileges NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5179
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v3

    .line 5174
    :catch_1
    move-exception v0

    .line 5175
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPackagesWithCarrierPrivileges RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4698
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4699
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 4700
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    return-object v2

    .line 4701
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 4702
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4703
    .local v0, "e":Landroid/os/RemoteException;
    new-array v2, v3, [Ljava/lang/String;

    return-object v2
.end method

.method public getPhoneCount()I
    .locals 4

    .prologue
    .line 299
    const/4 v1, 0x1

    .line 300
    .local v1, "phoneCount":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->-getandroid-telephony-TelephonyManager$MultiSimVariantsSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 333
    :goto_0
    return v1

    .line 303
    :pswitch_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 307
    :cond_1
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    .line 308
    const/4 v1, 0x1

    goto :goto_0

    .line 311
    :cond_2
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 312
    const-string/jumbo v3, "connectivity"

    .line 311
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 313
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_3

    .line 314
    const/4 v1, 0x1

    goto :goto_0

    .line 316
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 317
    const/4 v1, 0x1

    goto :goto_0

    .line 319
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 327
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :pswitch_1
    const/4 v1, 0x2

    .line 328
    goto :goto_0

    .line 330
    :pswitch_2
    const/4 v1, 0x3

    .line 331
    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getPhoneType()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1315
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1316
    return v3

    .line 1319
    :cond_0
    const/4 v0, 0x0

    .line 1320
    .local v0, "product":Ljava/lang/String;
    const-string/jumbo v1, "ro.product.name"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1321
    .local v0, "product":Ljava/lang/String;
    const-string/jumbo v1, ".*ldu.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1322
    return v3

    .line 1326
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    return v1
.end method

.method public getPreferredNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 4735
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4736
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4737
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4740
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4741
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPreferredNetworkType NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4743
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, -0x1

    return v3

    .line 4738
    :catch_1
    move-exception v0

    .line 4739
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPreferredNetworkType RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPsismsc()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8196
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8197
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 8198
    return-object v3

    .line 8199
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getPsismsc()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 8202
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 8203
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 8200
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8201
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getRand()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8015
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8016
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 8017
    return-object v3

    .line 8018
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getRand()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 8021
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 8022
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 8019
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8020
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getServiceState()I
    .locals 4

    .prologue
    .line 6572
    const/4 v2, 0x0

    .line 6574
    .local v2, "state":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 6578
    :goto_0
    return v2

    .line 6575
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 6576
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getServiceState(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 6585
    const/4 v2, 0x0

    .line 6587
    .local v2, "state":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getServiceStateUsingSubId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 6591
    :goto_0
    return v2

    .line 6588
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 6589
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 6415
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6416
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 6417
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 6419
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 6420
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getServiceStateForSubscriber"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6422
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getSimCount()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4531
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4532
    const/4 v0, 0x2

    return v0

    .line 4535
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 4536
    const-string/jumbo v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSimCount(): persist.radio.multisim.config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4537
    const-string/jumbo v2, "persist.radio.multisim.config"

    const-string/jumbo v3, "NULL"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    :cond_1
    return v4
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2450
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2460
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2461
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimCountryIsoForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 2471
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    const-string/jumbo v1, ""

    .line 2470
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2303
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 2318
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2398
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2400
    const-string/jumbo v0, "Verizon"

    return-object v0

    .line 2402
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2416
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2417
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNameForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 2443
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    const-string/jumbo v1, ""

    .line 2442
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2348
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 2349
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2350
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 2351
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2352
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 2353
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2354
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 2358
    :cond_0
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumeric(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 2373
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2374
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 2387
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string/jumbo v1, ""

    .line 2386
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2482
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2496
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2497
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2498
    return-object v4

    .line 2499
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2502
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2504
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2500
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2501
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getSimState()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2229
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    .line 2232
    .local v2, "slotIdx":I
    if-gez v2, :cond_2

    .line 2235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2236
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 2237
    .local v1, "simState":I
    if-eq v1, v7, :cond_0

    .line 2238
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimState: default sim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sim state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2239
    const-string/jumbo v5, "slotIdx="

    .line 2238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2239
    const-string/jumbo v5, " is "

    .line 2238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2239
    const-string/jumbo v5, ", return state as unknown"

    .line 2238
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    return v6

    .line 2235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2243
    .end local v1    # "simState":I
    :cond_1
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimState: default sim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", all SIMs absent, return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2244
    const-string/jumbo v5, "state as absent"

    .line 2243
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    return v7

    .line 2247
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    return v3
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "slotIdx"    # I

    .prologue
    .line 2267
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIdx(I)I

    move-result v0

    .line 2268
    .local v0, "simState":I
    return v0
.end method

.method public getSimTrayCount()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4547
    const/4 v1, 0x0

    .line 4549
    .local v1, "revision":I
    :try_start_0
    const-string/jumbo v2, "ro.revision"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 4550
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const-string/jumbo v2, "ro.multisim.simslotcount"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-le v2, v5, :cond_0

    .line 4551
    return v5

    .line 4553
    :catch_0
    move-exception v0

    .line 4554
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSimTrayCount() Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_0
    return v5
.end method

.method public getSmsReceiveCapable(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    .line 6176
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6177
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsReceiveCapableForPhone(IZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 6190
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6192
    const-string/jumbo v0, "telephony.sms.receive"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 6191
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 6195
    :cond_0
    return p2
.end method

.method public getSmsSendCapable(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    .line 6207
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6208
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsSendCapableForPhone(IZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 6221
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6223
    const-string/jumbo v0, "telephony.sms.send"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 6222
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 6226
    :cond_0
    return p2
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6470
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 6471
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 6472
    return-object v3

    .line 6473
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSponImsi()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 6476
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 6478
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 6474
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 6475
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 3
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    .line 6348
    const/4 v1, -0x1

    .line 6350
    .local v1, "retval":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 6351
    .local v2, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 6352
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6357
    .end local v2    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 6354
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2569
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2585
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2586
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2587
    return-object v4

    .line 2588
    :cond_0
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2591
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2593
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2589
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2590
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getSubscriberIdDm(I)Ljava/lang/String;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 2607
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberIdDm(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdDm(II)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    .prologue
    const/4 v3, 0x0

    .line 2621
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2622
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2623
    return-object v3

    .line 2624
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdDm(II)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2627
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2629
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2625
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2626
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getTetherApnRequired()I
    .locals 5

    .prologue
    .line 4895
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4896
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4897
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getTetherApnRequired()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4900
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4901
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "hasMatchedTetherApnSetting NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4903
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x2

    return v3

    .line 4898
    :catch_1
    move-exception v0

    .line 4899
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "hasMatchedTetherApnSetting RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3040
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 3055
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3056
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3057
    return-object v4

    .line 3058
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3061
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3063
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 3059
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3060
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2902
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2916
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2917
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2918
    return-object v4

    .line 2919
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2922
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2924
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2920
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2921
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 3007
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3020
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3021
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3022
    return v3

    .line 3023
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3026
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3028
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 3024
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3025
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1970
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1983
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1984
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1985
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1988
    :cond_0
    return v4

    .line 1993
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1995
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1990
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1992
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v4, 0x0

    .line 6435
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6436
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 6437
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 6439
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 6440
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getVoicemailRingtoneUri"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6442
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 5535
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5536
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5537
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5538
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5539
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5541
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 5548
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5549
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5550
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5551
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5552
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5554
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public hasCall(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 6511
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 6512
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 6513
    return v3

    .line 6514
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->hasCall(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 6517
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 6518
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 6515
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 6516
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public hasCarrierPrivileges()Z
    .locals 1

    .prologue
    .line 4929
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPrivileges(I)Z
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4945
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4946
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 4949
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 4955
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4956
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v5, "hasCarrierPrivileges NPE"

    invoke-static {v3, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4958
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    return v4

    .line 4953
    :catch_1
    move-exception v0

    .line 4954
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v5, "hasCarrierPrivileges RemoteException"

    invoke-static {v3, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 2177
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2190
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2191
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2192
    return v3

    .line 2193
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2197
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2199
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2194
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2196
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public hasIsim()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8175
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8176
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 8177
    return v3

    .line 8178
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->hasIsim()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 8181
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 8182
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 8179
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8180
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 1
    .param p1, "channel"    # I

    .prologue
    .line 3978
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(II)Z

    move-result v0

    return v0
.end method

.method public iccCloseLogicalChannel(II)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "channel"    # I

    .prologue
    .line 3998
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3999
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4000
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 4001
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4004
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4002
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .locals 10
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;

    .prologue
    .line 4169
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4170
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 4171
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 4172
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v8

    .line 4175
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 4173
    :catch_1
    move-exception v9

    .local v9, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 8
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 4146
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3940
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3941
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3942
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 3943
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3946
    :cond_0
    :goto_0
    return-object v3

    .line 3944
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "AID"    # Ljava/lang/String;
    .param p3, "p2"    # B

    .prologue
    const/4 v3, 0x0

    .line 3955
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3956
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3957
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannelWithP2(ILjava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 3958
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3961
    :cond_0
    :goto_0
    return-object v3

    .line 3959
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 1
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 3921
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "subId"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 4119
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4120
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 4121
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 4123
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v8

    .line 4126
    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    return-object v1

    .line 4124
    :catch_1
    move-exception v9

    .local v9, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 4091
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;

    .prologue
    .line 4060
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 4061
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 4062
    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 4064
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v9

    .line 4067
    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    return-object v1

    .line 4065
    :catch_1
    move-exception v10

    .local v10, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 4030
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 4
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    .prologue
    .line 5794
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5795
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5796
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 5797
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5800
    :cond_0
    :goto_0
    const/4 v3, -0x1

    return v3

    .line 5798
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 8311
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isApnTypeAvailable(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 8312
    :catch_0
    move-exception v0

    .line 8313
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelephony#isApnTypeAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8315
    const/4 v1, 0x0

    return v1
.end method

.method public isDataConnectivityPossible()Z
    .locals 4

    .prologue
    .line 5681
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5682
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5683
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5684
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5685
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isDataConnectivityPossible"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5687
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isExtraCapable(I)Z
    .locals 4
    .param p1, "capableType"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3645
    if-ne p1, v2, :cond_2

    .line 3647
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 3648
    const-string/jumbo v1, "CscFeature_RIL_DisableSmartBonding"

    .line 3647
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3649
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "isExtraCapable(Download Booster) : all features are enabled"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    const-string/jumbo v0, "XAS"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3651
    const-string/jumbo v0, "312530"

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3652
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "isExtraCapable(Download Booster) : blocked for Sprint Prepaid"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    return v3

    .line 3656
    :cond_0
    return v2

    .line 3659
    :cond_1
    return v2

    .line 3662
    :cond_2
    return v3
.end method

.method public isGbaSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7973
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 7974
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 7975
    return v3

    .line 7976
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isGbaSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 7979
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 7980
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 7977
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 7978
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 5

    .prologue
    .line 5893
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5894
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5895
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5899
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5900
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5902
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 5897
    :catch_1
    move-exception v0

    .line 5898
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 4

    .prologue
    .line 5367
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5368
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5369
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5370
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5371
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isIdle"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5373
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isIdle(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 5381
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5382
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5383
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5384
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5385
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isIdle"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5387
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isImsRegistered()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5950
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5951
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 5952
    return v3

    .line 5953
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5956
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5957
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5954
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5955
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 353
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 1699
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1712
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1714
    .local v0, "phoneId":I
    const-string/jumbo v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    .line 1713
    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isOffhook()Z
    .locals 4

    .prologue
    .line 5311
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5312
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5313
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5314
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5315
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isOffhook"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5317
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isOffhook(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 5325
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5326
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5327
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhookForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5328
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5329
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isOffhook"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5331
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRadioOn()Z
    .locals 4

    .prologue
    .line 5395
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5396
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5397
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5398
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5399
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isRadioOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5401
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRadioOn(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 5409
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5410
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5411
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5412
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5413
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isRadioOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5415
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRinging()Z
    .locals 4

    .prologue
    .line 5339
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5340
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5341
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5342
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5343
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isRinging"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5345
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRinging(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 5353
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5354
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5355
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->isRingingForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5356
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5357
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isRinging"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5359
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isSimFDNEnabled()Z
    .locals 1

    .prologue
    .line 6655
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isSimFDNEnabledForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public isSimFDNEnabledForSubscriber(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 6669
    const/4 v0, 0x0

    .line 6671
    .local v0, "enabled":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->isSimFDNEnabledForSubscriber(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6675
    :goto_0
    return v0

    .line 6672
    :catch_0
    move-exception v1

    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 6673
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSmoveripSupported()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 8218
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8219
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 8220
    return v3

    .line 8221
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->isSmoveripSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 8224
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 8225
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 8222
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8223
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isSmsCapable()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3594
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    return v9

    .line 3600
    :cond_0
    const/4 v2, 0x0

    .line 3601
    .local v2, "isCdmaTablet":Z
    const/4 v1, 0x0

    .line 3602
    .local v1, "isAtt":Z
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3603
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    .line 3606
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string/jumbo v5, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3609
    :cond_2
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "ATT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3610
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "US ATT Tablet Model"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3612
    .local v0, "am":Landroid/app/ActivityManager;
    if-nez v0, :cond_5

    .line 3613
    return v8

    .line 3603
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 3607
    :cond_4
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "US CDMA Tablet Model"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    return v8

    .line 3615
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :cond_5
    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 3616
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3617
    return v8

    .line 3619
    :cond_6
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3620
    .local v4, "topActivity":Landroid/content/ComponentName;
    if-nez v4, :cond_7

    .line 3621
    return v8

    .line 3623
    :cond_7
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getTopPackageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3624
    const-string/jumbo v5, "com.android.vending"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3625
    return v9

    .line 3627
    :cond_8
    return v8

    .line 3629
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v4    # "topActivity":Landroid/content/ComponentName;
    :cond_9
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 3630
    const v6, 0x112005f

    .line 3629
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    return v5
.end method

.method public isTtyModeSupported()Z
    .locals 5

    .prologue
    .line 5873
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5874
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5875
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isTtyModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5879
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5880
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#isTtyModeSupported"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5882
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 5877
    :catch_1
    move-exception v0

    .line 5878
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#isTtyModeSupported"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVideoCall()Z
    .locals 7

    .prologue
    .line 8238
    const/4 v2, 0x0

    .line 8240
    .local v2, "retVal":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 8241
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 8242
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isVideoCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 8247
    .end local v2    # "retVal":Z
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isVideoCall: retVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8248
    return v2

    .line 8243
    .restart local v2    # "retVal":Z
    :catch_0
    move-exception v0

    .line 8244
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "Error calling ITelephony#isVideoCall"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8245
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isVideoCallingEnabled()Z
    .locals 4

    .prologue
    .line 5819
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5820
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5821
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5822
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5823
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isVideoCallingEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5825
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isVideoTelephonyAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5981
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5984
    :catch_0
    move-exception v1

    .line 5985
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5982
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5983
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 3579
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3580
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3581
    const v1, 0x112005c

    .line 3580
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 4
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 6454
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6455
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 6456
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 6458
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 6459
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6461
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isVolteAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5967
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVolteAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5970
    :catch_0
    move-exception v1

    .line 5971
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5968
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5969
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isWifiCallingAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5995
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5998
    :catch_0
    move-exception v1

    .line 5999
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 5996
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5997
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isWorldPhone()Z
    .locals 5

    .prologue
    .line 5854
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 5855
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 5856
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5860
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5861
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5863
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 5858
    :catch_1
    move-exception v0

    .line 5859
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#isWorldPhone"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 9
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 3447
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 3449
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 3450
    .local v8, "notifyNow":Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget v1, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3451
    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v4, p2

    .line 3450
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3446
    .end local v8    # "notifyNow":Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 3449
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3452
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_1

    .line 3454
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .local v7, "ex":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 4

    .prologue
    .line 5694
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5695
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5696
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5697
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5698
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5700
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 5
    .param p1, "itemID"    # I

    .prologue
    .line 4238
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4239
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4240
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4243
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4244
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvReadItem NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4246
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    return-object v3

    .line 4241
    :catch_1
    move-exception v0

    .line 4242
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvReadItem RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public nvResetConfig(I)Z
    .locals 5
    .param p1, "resetType"    # I

    .prologue
    .line 4318
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4319
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4320
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvResetConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4323
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4324
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvResetConfig NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4326
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4321
    :catch_1
    move-exception v0

    .line 4322
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvResetConfig RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 5
    .param p1, "preferredRoamingList"    # [B

    .prologue
    .line 4291
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4292
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4293
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4296
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4297
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteCdmaPrl NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4299
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4294
    :catch_1
    move-exception v0

    .line 4295
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteCdmaPrl RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 5
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 4265
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4266
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4267
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4270
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4271
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteItem NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4273
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4268
    :catch_1
    move-exception v0

    .line 4269
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteItem RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public oem_ssa_alarm_event([B)[B
    .locals 11
    .param p1, "setCmd"    # [B

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 7630
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7629
    if-nez v5, :cond_0

    .line 7631
    return-object v9

    .line 7634
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7635
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7636
    return-object v9

    .line 7639
    :cond_1
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7640
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 7641
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_alarm_event(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7644
    :cond_2
    if-eqz v0, :cond_7

    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Landroid/telephony/TelephonyManager;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7648
    const/4 v3, 0x0

    .line 7649
    .local v3, "ret":[I
    const/4 v4, 0x0

    .line 7651
    .local v4, "retByte":[B
    if-nez p1, :cond_4

    .line 7652
    new-array p1, v10, [B

    .line 7653
    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SHANNON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 7654
    :cond_3
    aput-byte v8, p1, v8

    .line 7660
    :cond_4
    :goto_0
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_5

    .line 7661
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_alarm_event(), [0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", len :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7665
    :cond_5
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 7672
    .local v3, "ret":[I
    if-eqz v3, :cond_a

    .line 7673
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_6

    .line 7674
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_alarm_event(), ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7676
    :cond_6
    const/4 v5, 0x2

    new-array v4, v5, [B

    .line 7677
    .local v4, "retByte":[B
    aget v5, v3, v8

    if-nez v5, :cond_9

    .line 7678
    aput-byte v8, v4, v8

    .line 7686
    .end local v4    # "retByte":[B
    :goto_1
    return-object v4

    .line 7645
    .end local v3    # "ret":[I
    :cond_7
    return-object v9

    .line 7656
    .local v3, "ret":[I
    .local v4, "retByte":[B
    :cond_8
    const/4 v5, -0x1

    aput-byte v5, p1, v8

    goto :goto_0

    .line 7668
    :catch_0
    move-exception v2

    .line 7669
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v9

    .line 7666
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 7667
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v9

    .line 7680
    .end local v1    # "ex":Landroid/os/RemoteException;
    .local v3, "ret":[I
    .local v4, "retByte":[B
    :cond_9
    aput-byte v10, v4, v8

    goto :goto_1

    .line 7683
    .local v4, "retByte":[B
    :cond_a
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "oem_ssa_alarm_event(), ret = null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7684
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public oem_ssa_check_mem()[I
    .locals 1

    .prologue
    .line 7708
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->uknight_mem_check()[I

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_get_data()[B
    .locals 1

    .prologue
    .line 7694
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->uknight_get_data()[B

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_hdv_alarm_event([B)[B
    .locals 11
    .param p1, "setCmd"    # [B

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 7886
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7885
    if-nez v5, :cond_0

    .line 7887
    return-object v8

    .line 7889
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7890
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7891
    return-object v8

    .line 7894
    :cond_1
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7895
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 7896
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_hdv_alarm_event(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7899
    :cond_2
    if-eqz v0, :cond_6

    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Landroid/telephony/TelephonyManager;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7903
    const/4 v3, 0x0

    .line 7904
    .local v3, "ret":[I
    const/4 v4, 0x0

    .line 7906
    .local v4, "retByte":[B
    if-nez p1, :cond_3

    .line 7907
    new-array p1, v10, [B

    .line 7908
    const/4 v5, -0x1

    aput-byte v5, p1, v9

    .line 7911
    :cond_3
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_4

    .line 7912
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_hdv_alarm_event(), [0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, p1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", len :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7916
    :cond_4
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 7923
    .local v3, "ret":[I
    if-eqz v3, :cond_8

    .line 7924
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_5

    .line 7925
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "oem_ssa_hdv_alarm_event(), ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7927
    :cond_5
    const/4 v5, 0x2

    new-array v4, v5, [B

    .line 7928
    .local v4, "retByte":[B
    aget v5, v3, v9

    if-nez v5, :cond_7

    .line 7929
    aput-byte v9, v4, v9

    .line 7937
    .end local v4    # "retByte":[B
    :goto_0
    return-object v4

    .line 7900
    .end local v3    # "ret":[I
    :cond_6
    return-object v8

    .line 7919
    .local v3, "ret":[I
    .local v4, "retByte":[B
    :catch_0
    move-exception v2

    .line 7920
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v8

    .line 7917
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 7918
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v8

    .line 7931
    .end local v1    # "ex":Landroid/os/RemoteException;
    .local v3, "ret":[I
    .local v4, "retByte":[B
    :cond_7
    aput-byte v10, v4, v9

    goto :goto_0

    .line 7934
    .local v4, "retByte":[B
    :cond_8
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "oem_ssa_hdv_alarm_event(), ret = null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7935
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public oem_ssa_set_event([B)[B
    .locals 2
    .param p1, "setCmd"    # [B

    .prologue
    .line 7618
    sget-boolean v0, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 7619
    const-string/jumbo v0, "DmLoggingService"

    const-string/jumbo v1, "oem_ssa_set_event() +"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7621
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->uknight_event_set([B)[B

    move-result-object v0

    return-object v0
.end method

.method public oem_ssa_set_log([B)[B
    .locals 2
    .param p1, "maskCode"    # [B

    .prologue
    .line 7606
    const-string/jumbo v0, "ril.modem.board"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SHANNON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ril.modem.board"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7610
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->uknight_log_set([B)[B

    move-result-object v0

    return-object v0

    .line 7607
    :cond_1
    const-string/jumbo v0, "DmLoggingService"

    const-string/jumbo v1, "oem_ssa_set_log( ) - NULL!! "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7608
    const/4 v0, 0x0

    return-object v0
.end method

.method public oem_ssa_set_log([B[B)[B
    .locals 5
    .param p1, "startCode"    # [B
    .param p2, "maskCode"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 7589
    const-string/jumbo v1, "ril.modem.board"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SHANNON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ril.modem.board"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7590
    :cond_0
    const-string/jumbo v1, "DmLoggingService"

    const-string/jumbo v2, "oem_ssa_set_log( , ) - NULL!! "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7591
    return-object v4

    .line 7593
    :cond_1
    const/4 v0, 0x0

    .line 7594
    .local v0, "setCmd":[B
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 7595
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 7596
    .local v0, "setCmd":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 7597
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 7599
    .end local v0    # "setCmd":[B
    :cond_2
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->uknight_log_set([B)[B

    move-result-object v1

    return-object v1
.end method

.method public oem_ssa_set_mem(I)Z
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 7701
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->uknight_mem_set(I)Z

    move-result v0

    return v0
.end method

.method public openLockChannel(Ljava/lang/String;)I
    .locals 6
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 7840
    const/4 v0, -0x1

    .line 7842
    .local v0, "channel":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v5

    invoke-interface {v4, v5, p1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v3

    .line 7843
    .local v3, "mOpen":Landroid/telephony/IccOpenLogicalChannelResponse;
    if-eqz v3, :cond_0

    .line 7844
    invoke-virtual {v3}, Landroid/telephony/IccOpenLogicalChannelResponse;->getChannel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 7851
    .end local v3    # "mOpen":Landroid/telephony/IccOpenLogicalChannelResponse;
    :cond_0
    :goto_0
    return v0

    .line 7848
    :catch_0
    move-exception v2

    .line 7849
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "openLockChannel(), NullPointerException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7846
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 7847
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "openLockChannel(), RemoteException"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "result"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v4, 0x0

    .line 6397
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 6398
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 6399
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6400
    return-void

    .line 6402
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 6403
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getModemActivityInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6405
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 6395
    return-void
.end method

.method public semGetCallState(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 3281
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public semGetCurrentPhoneType(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public semGetDataEnabled()Z
    .locals 1

    .prologue
    .line 8504
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public semGetDataEnabled(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 8516
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method public semGetDataServiceState()I
    .locals 4

    .prologue
    .line 6613
    const/4 v2, 0x0

    .line 6615
    .local v2, "state":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getDataServiceState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 6619
    :goto_0
    return v2

    .line 6616
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 6617
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public semGetDataServiceState(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 6628
    const/4 v2, 0x0

    .line 6630
    .local v2, "state":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDataServiceStateUsingSubId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 6634
    :goto_0
    return v2

    .line 6631
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 6632
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public semGetDataState(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 3400
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v0

    return v0
.end method

.method public semGetNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1631
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetNetworkType(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1899
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public semGetSdnAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7950
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getSdnAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 7954
    :catch_0
    move-exception v1

    .line 7956
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 7951
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 7953
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public semGetServiceState(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 6604
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v0

    return v0
.end method

.method public semGetSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 2335
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSimOperatorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 2433
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSimState(I)I
    .locals 1
    .param p1, "slotIdx"    # I

    .prologue
    .line 2290
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public semHandlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 5569
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public semHasIccCard(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 2212
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public semIsDataRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6531
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 6534
    :catch_0
    move-exception v1

    .line 6535
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 6532
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 6533
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public semIsDataRoamingEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 6546
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataRoamingEnabledUsingSubID(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 6549
    :catch_0
    move-exception v1

    .line 6550
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 6547
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 6548
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public semIsIccLocked()Z
    .locals 2

    .prologue
    .line 8572
    const-string/jumbo v0, "gsm.facilitylock.state"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public semIsInEmergencyCallbackMode()Z
    .locals 2

    .prologue
    .line 8582
    const-string/jumbo v0, "ril.cdma.inecmmode"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public semIsInternationalRoaming()Z
    .locals 6

    .prologue
    .line 8553
    const/4 v2, 0x0

    .line 8555
    .local v2, "retVal":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 8556
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 8557
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->IsInternationalRoaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 8562
    .end local v2    # "retVal":Z
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 8558
    .restart local v2    # "retVal":Z
    :catch_0
    move-exception v0

    .line 8559
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "Error calling ITelephony#semIsInternationalRoaming"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8560
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public semIsSimFdnEnabled()Z
    .locals 1

    .prologue
    .line 6664
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSimFDNEnabled()Z

    move-result v0

    return v0
.end method

.method public semIsVideoCall()Z
    .locals 1

    .prologue
    .line 8258
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v0

    return v0
.end method

.method public semNeedsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 5712
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public semPrepareEmergencyCall(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 8594
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 8595
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "semPrepareEmergencyCall()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8597
    if-eqz v1, :cond_1

    .line 8599
    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 8600
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 8599
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->prepareEmergencyCall(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8593
    :cond_1
    :goto_0
    return-void

    .line 8601
    :catch_0
    move-exception v0

    .line 8602
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelecomService#semPrepareEmergencyCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public semSetDataEnabled(IZ)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 8539
    invoke-virtual {p0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 8538
    return-void
.end method

.method public semSetDataEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 8527
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 8526
    return-void
.end method

.method public semSetDataRoamingEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 6561
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6559
    :goto_0
    return-void

    .line 6562
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 6563
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 4214
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4215
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4216
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 4217
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4220
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    return-object v3

    .line 4218
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 4193
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAirplaneMode(Ljava/lang/String;Z)I
    .locals 6
    .param p1, "passcode"    # Ljava/lang/String;
    .param p2, "mode"    # Z

    .prologue
    .line 6726
    const/4 v2, 0x0

    .line 6727
    .local v2, "ret_val":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setAirplaneMode(Ljava/lang/String;Z)I

    move-result v2

    .line 6729
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAirplaneMode ret_val:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6730
    return v2

    .line 6733
    :catch_0
    move-exception v1

    .line 6734
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setAirplaneMode NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6736
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    const/4 v3, -0x1

    return v3

    .line 6731
    :catch_1
    move-exception v0

    .line 6732
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setAirplaneMode RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBasebandVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 6090
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6091
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    .line 6089
    return-void
.end method

.method public setBasebandVersionForPhone(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 6102
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gsm.version.baseband"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6104
    if-nez p1, :cond_1

    const-string/jumbo v1, ""

    .line 6103
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6105
    .local v0, "prop":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6101
    .end local v0    # "prop":Ljava/lang/String;
    :cond_0
    return-void

    .line 6104
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setCellInfoListRate(I)V
    .locals 3
    .param p1, "rateInMillis"    # I

    .prologue
    .line 3734
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3735
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3736
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3732
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 3737
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3738
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setDataEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 5727
    :try_start_0
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDataEnabled: enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " CallingPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5730
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5731
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5723
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5732
    :catch_0
    move-exception v0

    .line 5733
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setDataEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 5718
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 5717
    return-void
.end method

.method public setDataNetworkType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 6325
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6326
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 6324
    return-void
.end method

.method public setDataNetworkTypeForPhone(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .prologue
    .line 6336
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6338
    const-string/jumbo v0, "gsm.network.type"

    .line 6339
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 6337
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6335
    :cond_0
    return-void
.end method

.method public setDisable2g(I)Z
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 8423
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 8424
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 8425
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setDisable2g(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 8428
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 8429
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setDisable2g NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8431
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 8426
    :catch_1
    move-exception v0

    .line 8427
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setDisable2g RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEPSLOCI([B)V
    .locals 3
    .param p1, "newEpsloci"    # [B

    .prologue
    .line 8160
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setEPSLOCI([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8158
    return-void

    .line 8163
    :catch_0
    move-exception v1

    .line 8164
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-void

    .line 8161
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8162
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .prologue
    .line 8071
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8069
    :goto_0
    return-void

    .line 8072
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 8074
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setImsRegistrationState(Z)V
    .locals 2
    .param p1, "registered"    # Z

    .prologue
    .line 4715
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4716
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4717
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4713
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4718
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 2780
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2781
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2782
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 2783
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2786
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 2784
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2760
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMultiSimForegroundPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 8136
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimForegroundPhoneId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8134
    return-void

    .line 8139
    :catch_0
    move-exception v1

    .line 8140
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-void

    .line 8137
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8138
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public setMultiSimLastRejectIncomingCallPhoneId(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 8114
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimLastRejectIncomingCallPhoneId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8112
    return-void

    .line 8117
    :catch_0
    move-exception v1

    .line 8118
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-void

    .line 8115
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8116
    .local v0, "ex":Landroid/os/RemoteException;
    return-void
.end method

.method public setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "passcode"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "band"    # I

    .prologue
    .line 6708
    const/4 v2, 0x0

    .line 6709
    .local v2, "ret_val":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 6711
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNetworkBand ret_val:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6712
    return v2

    .line 6715
    :catch_0
    move-exception v1

    .line 6716
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkBand NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6718
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :goto_0
    const/4 v3, -0x1

    return v3

    .line 6713
    :catch_1
    move-exception v0

    .line 6714
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkBand RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNetworkCountryIso(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 6301
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6302
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 6300
    return-void
.end method

.method public setNetworkCountryIsoForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 6313
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6315
    const-string/jumbo v0, "gsm.operator.iso-country"

    .line 6314
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6312
    :cond_0
    return-void
.end method

.method public setNetworkOperatorName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6235
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6236
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 6234
    return-void
.end method

.method public setNetworkOperatorNameForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 6246
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6247
    const-string/jumbo v0, "gsm.operator.alpha"

    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6245
    :cond_0
    return-void
.end method

.method public setNetworkOperatorNumeric(Ljava/lang/String;)V
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 6257
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6258
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 6256
    return-void
.end method

.method public setNetworkOperatorNumericForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 6268
    const-string/jumbo v0, "gsm.operator.numeric"

    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6267
    return-void
.end method

.method public setNetworkRoaming(Z)V
    .locals 1
    .param p1, "isRoaming"    # Z

    .prologue
    .line 6277
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6278
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 6276
    return-void
.end method

.method public setNetworkRoamingForPhone(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .prologue
    .line 6288
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6289
    const-string/jumbo v1, "gsm.operator.isroaming"

    .line 6290
    if-eqz p2, :cond_1

    const-string/jumbo v0, "true"

    .line 6289
    :goto_0
    invoke-static {p1, v1, v0}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6287
    :cond_0
    return-void

    .line 6290
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 4758
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4759
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4760
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4756
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4763
    :catch_0
    move-exception v1

    .line 4764
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeAutomatic NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4761
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4762
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeAutomatic RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "persistSelection"    # Z

    .prologue
    .line 4809
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4810
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4811
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4814
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4815
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeManual NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4817
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4812
    :catch_1
    move-exception v0

    .line 4813
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeManual RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOperatorBrandOverride(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "brand"    # Ljava/lang/String;

    .prologue
    .line 4997
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4998
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4999
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 5002
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 5003
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setOperatorBrandOverride NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5005
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 5000
    :catch_1
    move-exception v0

    .line 5001
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setOperatorBrandOverride RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 4976
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPcoValue(I)V
    .locals 3
    .param p1, "newPco"    # I

    .prologue
    .line 8298
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 8299
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v2, :cond_0

    .line 8300
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->setPcoValue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8296
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_0
    :goto_0
    return-void

    .line 8301
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 8302
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setPhoneType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 6117
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6118
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 6116
    return-void
.end method

.method public setPhoneType(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .prologue
    .line 6130
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6132
    const-string/jumbo v0, "gsm.current.phone-type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 6131
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6129
    :cond_0
    return-void
.end method

.method public setPreferredNetworkType(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 4835
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4836
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4837
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4840
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4841
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4843
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4838
    :catch_1
    move-exception v0

    .line 4839
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPreferredNetworkTypeToGlobal()Z
    .locals 1

    .prologue
    .line 4856
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeToGlobal(I)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkTypeToGlobal(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 4871
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4872
    const-string/jumbo v1, "persist.ril.radiocapa.tdscdma"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4873
    .local v0, "supportTdscdma":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4874
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "setPreferredNetworkTypeToGlobal - Use extended global mode network type for TDSCDMA"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4875
    const/16 v1, 0x16

    invoke-virtual {p0, p1, v1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v1

    return v1

    .line 4880
    .end local v0    # "supportTdscdma":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreferredNetworkTypeToGlobal (subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4882
    const/16 v1, 0xa

    invoke-virtual {p0, p1, v1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v1

    return v1
.end method

.method public setRadio(IZ)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 5616
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5617
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5618
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5619
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5620
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setRadio"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5622
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setRadio(Z)Z
    .locals 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 5602
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5603
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5604
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5605
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5606
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setRadio"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5608
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setRadioPower(Z)Z
    .locals 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 5630
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5631
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5632
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5633
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5634
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setRadioPower"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5636
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5058
    .local p2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 5059
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 5060
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5064
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v7

    .line 5065
    .local v7, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "setRoamingOverride NPE"

    invoke-static {v1, v2, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5067
    .end local v7    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 5062
    :catch_1
    move-exception v6

    .line 5063
    .local v6, "ex":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "setRoamingOverride RemoteException"

    invoke-static {v1, v2, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5030
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public setSimCountryIso(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 6049
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6050
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 6048
    return-void
.end method

.method public setSimCountryIsoForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 6060
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    .line 6059
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6058
    return-void
.end method

.method public setSimOperatorName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 6029
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6030
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 6028
    return-void
.end method

.method public setSimOperatorNameForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 6040
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    .line 6039
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6038
    return-void
.end method

.method public setSimOperatorNumeric(Ljava/lang/String;)V
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 6009
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6010
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 6008
    return-void
.end method

.method public setSimOperatorNumericForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 6020
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    .line 6019
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6018
    return-void
.end method

.method public setSimState(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 6069
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 6070
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 6068
    return-void
.end method

.method public setSimStateForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 6080
    const-string/jumbo v0, "gsm.sim.state"

    .line 6079
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 6078
    return-void
.end method

.method public setUimRemoteLockStatus(I)I
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 7817
    const/4 v0, 0x0

    .line 7820
    .local v0, "result":I
    return v0
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 2989
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2990
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2991
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 2992
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2995
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 2993
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2973
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 5301
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5299
    :goto_0
    return-void

    .line 5302
    :catch_0
    move-exception v0

    .line 5303
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startMobileQualityInformation()V
    .locals 2

    .prologue
    .line 6993
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "block startMobileQualityInformation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6992
    return-void
.end method

.method public stopMobileQualityInformation()V
    .locals 2

    .prologue
    .line 7008
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "block stopMobileQualityInformation"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7007
    return-void
.end method

.method public supplyPin(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 5437
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5438
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5439
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5440
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5441
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPin"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5443
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 5423
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5424
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5425
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5426
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5427
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPin"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5429
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public supplyPinReportResult(ILjava/lang/String;)[I
    .locals 4
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 5493
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5494
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5495
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5496
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5497
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5499
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 5479
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5480
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5481
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5482
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5483
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5485
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method public supplyPuk(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 5465
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5466
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5467
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5468
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5469
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPuk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 5451
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5452
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5453
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 5454
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5455
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPuk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5457
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public supplyPukReportResult(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 4
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 5521
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5522
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5523
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5524
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5525
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#]"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5527
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 5507
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5508
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5509
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5510
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5511
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#]"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5513
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method public toggleRadioOnOff()V
    .locals 4

    .prologue
    .line 5576
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5577
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5578
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5574
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5579
    :catch_0
    move-exception v0

    .line 5580
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public toggleRadioOnOff(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 5589
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5590
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5591
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOffForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5587
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5592
    :catch_0
    move-exception v0

    .line 5593
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public transmitLockChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 7869
    const/4 v11, 0x0

    .line 7871
    .local v11, "response":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move v2, p3

    move v3, p1

    move v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 7877
    .end local v11    # "response":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 7874
    .restart local v11    # "response":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 7875
    .local v10, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "transmitLockChannel(), NullPointerException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7872
    .end local v10    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    .line 7873
    .local v9, "ex":Landroid/os/RemoteException;
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "transmitLockChannel(), RemoteException"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public uknight_event_set([B)[B
    .locals 12
    .param p1, "setCmd"    # [B

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 7292
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7291
    if-nez v5, :cond_0

    .line 7293
    return-object v9

    .line 7296
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7297
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7298
    return-object v9

    .line 7301
    :cond_1
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7302
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 7303
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "event_set(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7306
    :cond_2
    const/4 v3, 0x0

    .line 7307
    .local v3, "ret":[I
    new-array v4, v11, [B

    .line 7309
    .local v4, "retByte":[B
    if-eqz v0, :cond_6

    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Landroid/telephony/TelephonyManager;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7313
    if-nez p1, :cond_4

    .line 7314
    new-array p1, v10, [B

    .line 7315
    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SHANNON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7316
    :cond_3
    aput-byte v8, p1, v8

    .line 7323
    :cond_4
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 7330
    .local v3, "ret":[I
    if-eqz v3, :cond_9

    .line 7331
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_5

    .line 7332
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "event_set(), ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7334
    :cond_5
    aget v5, v3, v8

    if-nez v5, :cond_8

    .line 7335
    aput-byte v8, v4, v8

    .line 7343
    .end local v4    # "retByte":[B
    :goto_1
    return-object v4

    .line 7310
    .local v3, "ret":[I
    .restart local v4    # "retByte":[B
    :cond_6
    return-object v9

    .line 7318
    :cond_7
    const/4 v5, -0x1

    aput-byte v5, p1, v8

    goto :goto_0

    .line 7326
    :catch_0
    move-exception v2

    .line 7327
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v9

    .line 7324
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 7325
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v9

    .line 7337
    .end local v1    # "ex":Landroid/os/RemoteException;
    .local v3, "ret":[I
    :cond_8
    aput-byte v10, v4, v8

    goto :goto_1

    .line 7340
    :cond_9
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "event_set(), ret = null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7341
    const/4 v4, 0x0

    .local v4, "retByte":[B
    goto :goto_1
.end method

.method public uknight_get_data()[B
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 7460
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v11

    const-string/jumbo v12, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 7459
    if-nez v11, :cond_0

    .line 7461
    return-object v14

    .line 7464
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->isDmLoggingPID()Z

    move-result v11

    if-nez v11, :cond_1

    .line 7465
    const-string/jumbo v11, "DmLoggingService"

    const-string/jumbo v12, "ps not initialized!"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7466
    return-object v14

    .line 7469
    :cond_1
    iget-object v11, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 7470
    .local v1, "client":Ljava/lang/String;
    sget-boolean v11, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v11, :cond_2

    if-eqz v1, :cond_2

    .line 7471
    const-string/jumbo v11, "DmLoggingService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "uknight_get_data(), client -"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7474
    :cond_2
    if-eqz v1, :cond_3

    iget-object v11, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11, v1}, Landroid/telephony/TelephonyManager;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 7479
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7486
    const/4 v9, 0x0

    .line 7487
    .local v9, "fileIS":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 7489
    .local v2, "dmBuf":[B
    :try_start_1
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/data/log/knightBuff.tmp"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7491
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 7492
    const-string/jumbo v11, "DmLoggingService"

    const-string/jumbo v12, "uknight_get_data(), log not exist! "

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7493
    return-object v14

    .line 7475
    .end local v2    # "dmBuf":[B
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    :cond_3
    return-object v14

    .line 7482
    :catch_0
    move-exception v7

    .line 7483
    .local v7, "ex":Ljava/lang/NullPointerException;
    return-object v14

    .line 7480
    .end local v7    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 7481
    .local v6, "ex":Landroid/os/RemoteException;
    return-object v14

    .line 7496
    .end local v6    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "dmBuf":[B
    .restart local v8    # "file":Ljava/io/File;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v0, v12

    .line 7497
    .local v0, "bufSize":I
    if-lez v0, :cond_5

    .line 7498
    new-instance v10, Ljava/io/FileInputStream;

    const-string/jumbo v11, "/data/log/knightBuff.tmp"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7499
    .local v10, "fileIS":Ljava/io/FileInputStream;
    :try_start_2
    new-array v2, v0, [B

    .line 7500
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .local v2, "dmBuf":[B
    invoke-virtual {v10, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 7502
    sget-boolean v11, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v11, :cond_8

    .line 7503
    const-string/jumbo v11, "DmLoggingService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "uknight_get_data(), buff size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v9, v10

    .line 7522
    .end local v2    # "dmBuf":[B
    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    :cond_5
    :goto_0
    if-eqz v9, :cond_6

    .line 7524
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 7533
    .end local v0    # "bufSize":I
    .end local v8    # "file":Ljava/io/File;
    :cond_6
    :goto_1
    :try_start_4
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_b

    .line 7539
    :goto_2
    return-object v2

    .line 7525
    .restart local v0    # "bufSize":I
    .restart local v8    # "file":Ljava/io/File;
    :catch_2
    move-exception v4

    .line 7526
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 7527
    .end local v0    # "bufSize":I
    .end local v8    # "file":Ljava/io/File;
    :goto_3
    const/4 v2, 0x0

    .local v2, "dmBuf":[B
    goto :goto_1

    .line 7516
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 7518
    .end local v2    # "dmBuf":[B
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 7519
    const-string/jumbo v11, "DmLoggingService"

    const-string/jumbo v12, "Exception"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 7520
    const/4 v2, 0x0

    .line 7522
    .restart local v2    # "dmBuf":[B
    if-eqz v9, :cond_6

    .line 7524
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 7525
    :catch_4
    move-exception v4

    .line 7526
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 7511
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    .line 7513
    .end local v2    # "dmBuf":[B
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 7514
    const-string/jumbo v11, "DmLoggingService"

    const-string/jumbo v12, "IOException"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 7515
    const/4 v2, 0x0

    .line 7522
    .restart local v2    # "dmBuf":[B
    if-eqz v9, :cond_6

    .line 7524
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 7525
    :catch_6
    move-exception v4

    .line 7526
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 7507
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    :catch_7
    move-exception v3

    .line 7508
    .end local v2    # "dmBuf":[B
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 7509
    const-string/jumbo v11, "DmLoggingService"

    const-string/jumbo v12, "FileNotFoundException"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 7510
    const/4 v2, 0x0

    .line 7522
    .restart local v2    # "dmBuf":[B
    if-eqz v9, :cond_6

    .line 7524
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_1

    .line 7525
    :catch_8
    move-exception v4

    .line 7526
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 7521
    .end local v2    # "dmBuf":[B
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 7522
    :goto_7
    if-eqz v9, :cond_7

    .line 7524
    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 7521
    :cond_7
    :goto_8
    throw v11

    .line 7525
    :catch_9
    move-exception v4

    .line 7526
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 7527
    const/4 v2, 0x0

    .restart local v2    # "dmBuf":[B
    goto :goto_8

    .line 7534
    .end local v2    # "dmBuf":[B
    .end local v4    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    .restart local v6    # "ex":Landroid/os/RemoteException;
    goto :goto_2

    .line 7535
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_b
    move-exception v7

    .restart local v7    # "ex":Ljava/lang/NullPointerException;
    goto :goto_2

    .line 7521
    .end local v7    # "ex":Ljava/lang/NullPointerException;
    .restart local v0    # "bufSize":I
    .restart local v8    # "file":Ljava/io/File;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .local v9, "fileIS":Ljava/io/FileInputStream;
    goto :goto_7

    .line 7507
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    :catch_c
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_6

    .line 7511
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    :catch_d
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_5

    .line 7516
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    :catch_e
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "fileIS":Ljava/io/FileInputStream;
    .local v2, "dmBuf":[B
    .restart local v10    # "fileIS":Ljava/io/FileInputStream;
    :cond_8
    move-object v9, v10

    .end local v10    # "fileIS":Ljava/io/FileInputStream;
    .restart local v9    # "fileIS":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public uknight_log_set([B)[B
    .locals 11
    .param p1, "setCmd"    # [B

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 7232
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7231
    if-nez v5, :cond_0

    .line 7233
    return-object v9

    .line 7236
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7237
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7238
    return-object v9

    .line 7241
    :cond_1
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7242
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 7243
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "log_set(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7246
    :cond_2
    const/4 v3, 0x0

    .line 7247
    .local v3, "ret":[I
    const/4 v5, 0x2

    new-array v4, v5, [B

    .line 7249
    .local v4, "retByte":[B
    if-eqz v0, :cond_6

    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Landroid/telephony/TelephonyManager;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 7253
    if-nez p1, :cond_4

    .line 7254
    new-array p1, v10, [B

    .line 7255
    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SHANNON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "ril.modem.board"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "SS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7256
    :cond_3
    aput-byte v8, p1, v8

    .line 7263
    :cond_4
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6, p1}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 7270
    .local v3, "ret":[I
    if-eqz v3, :cond_9

    .line 7271
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_5

    .line 7272
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "log_set(), ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7274
    :cond_5
    aget v5, v3, v8

    if-nez v5, :cond_8

    .line 7275
    aput-byte v8, v4, v8

    .line 7283
    .end local v4    # "retByte":[B
    :goto_1
    return-object v4

    .line 7250
    .local v3, "ret":[I
    .restart local v4    # "retByte":[B
    :cond_6
    return-object v9

    .line 7258
    :cond_7
    const/4 v5, -0x1

    aput-byte v5, p1, v8

    goto :goto_0

    .line 7266
    :catch_0
    move-exception v2

    .line 7267
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v9

    .line 7264
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 7265
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v9

    .line 7277
    .end local v1    # "ex":Landroid/os/RemoteException;
    .local v3, "ret":[I
    :cond_8
    aput-byte v10, v4, v8

    goto :goto_1

    .line 7280
    :cond_9
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "log_set(), ret = null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7281
    const/4 v4, 0x0

    .local v4, "retByte":[B
    goto :goto_1
.end method

.method public uknight_mem_check()[I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 7548
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 7547
    if-nez v4, :cond_0

    .line 7549
    return-object v7

    .line 7552
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->isDmLoggingPID()Z

    move-result v4

    if-nez v4, :cond_1

    .line 7553
    const-string/jumbo v4, "DmLoggingService"

    const-string/jumbo v5, "ps not initialized!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7554
    return-object v7

    .line 7557
    :cond_1
    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7558
    .local v0, "client":Ljava/lang/String;
    sget-boolean v4, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 7559
    const-string/jumbo v4, "DmLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uknight_mem_check(), client -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7562
    :cond_2
    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v0}, Landroid/telephony/TelephonyManager;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7566
    const/4 v3, 0x0

    .line 7568
    .local v3, "ret":[I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I

    move-result-object v3

    .line 7569
    .local v3, "ret":[I
    sget-boolean v4, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v4, :cond_3

    .line 7570
    if-eqz v3, :cond_5

    .line 7571
    const-string/jumbo v4, "DmLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "uknight_mem_check(), ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7581
    :cond_3
    :goto_0
    return-object v3

    .line 7563
    .end local v3    # "ret":[I
    :cond_4
    return-object v7

    .line 7573
    .restart local v3    # "ret":[I
    :cond_5
    const-string/jumbo v4, "DmLoggingService"

    const-string/jumbo v5, "uknight_mem_check(), ret = null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 7576
    .end local v3    # "ret":[I
    :catch_0
    move-exception v1

    .line 7577
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v7

    .line 7578
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 7579
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v7
.end method

.method public uknight_mem_set(I)Z
    .locals 10
    .param p1, "percent"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7406
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7405
    if-nez v5, :cond_0

    .line 7407
    return v8

    .line 7410
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7411
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7412
    return v8

    .line 7415
    :cond_1
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7416
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 7417
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uknight_mem_set(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7420
    :cond_2
    if-eqz v0, :cond_4

    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Landroid/telephony/TelephonyManager;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7424
    const/4 v3, 0x0

    .line 7425
    .local v3, "ret":[I
    new-array v4, v9, [B

    .line 7427
    .local v4, "setCmd":[B
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 7428
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uknight_mem_set(), percent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7431
    :cond_3
    int-to-byte v5, p1

    aput-byte v5, v4, v8

    .line 7433
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v5, v6, v4}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 7440
    .local v3, "ret":[I
    if-nez v3, :cond_5

    .line 7441
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "uknight_mem_set(), ret = null!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7442
    return v8

    .line 7421
    .end local v3    # "ret":[I
    .end local v4    # "setCmd":[B
    :cond_4
    return v8

    .line 7436
    .local v3, "ret":[I
    .restart local v4    # "setCmd":[B
    :catch_0
    move-exception v2

    .line 7437
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v8

    .line 7434
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 7435
    .local v1, "ex":Landroid/os/RemoteException;
    return v8

    .line 7444
    .end local v1    # "ex":Landroid/os/RemoteException;
    .local v3, "ret":[I
    :cond_5
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_6

    .line 7445
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uknight_mem_set(), ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7447
    :cond_6
    aget v5, v3, v8

    if-nez v5, :cond_7

    .line 7448
    return v9

    .line 7450
    :cond_7
    return v8
.end method

.method public uknight_state_change_set(I)Z
    .locals 10
    .param p1, "eventCode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7352
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_RIL_DmLoggingService"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7351
    if-nez v5, :cond_0

    .line 7353
    return v8

    .line 7356
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->isDmLoggingPID()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7357
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "ps not initialized!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7358
    return v8

    .line 7361
    :cond_1
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 7362
    .local v0, "client":Ljava/lang/String;
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    .line 7363
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state_change_set(), client -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7366
    :cond_2
    if-eqz v0, :cond_4

    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v0}, Landroid/telephony/TelephonyManager;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7370
    const/4 v3, 0x0

    .line 7371
    .local v3, "ret":[I
    const/4 v4, 0x0

    .line 7373
    .local v4, "setCmd":[B
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 7374
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state_change_set(), eventCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7377
    :cond_3
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->intToByteArray(I)[B

    move-result-object v4

    .line 7379
    .local v4, "setCmd":[B
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6, v4}, Lcom/android/internal/telephony/ITelephony;->setDmCmd(I[B)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 7386
    .local v3, "ret":[I
    if-nez v3, :cond_5

    .line 7387
    const-string/jumbo v5, "DmLoggingService"

    const-string/jumbo v6, "state_change_set(), ret = null!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7388
    return v8

    .line 7367
    .end local v3    # "ret":[I
    .end local v4    # "setCmd":[B
    :cond_4
    return v8

    .line 7382
    .local v3, "ret":[I
    .restart local v4    # "setCmd":[B
    :catch_0
    move-exception v2

    .line 7383
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v8

    .line 7380
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 7381
    .local v1, "ex":Landroid/os/RemoteException;
    return v8

    .line 7390
    .end local v1    # "ex":Landroid/os/RemoteException;
    .local v3, "ret":[I
    :cond_5
    sget-boolean v5, Landroid/telephony/TelephonyManager;->DBG:Z

    if-eqz v5, :cond_6

    .line 7391
    const-string/jumbo v5, "DmLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state_change_set(), ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7393
    :cond_6
    aget v5, v3, v8

    if-nez v5, :cond_7

    .line 7394
    return v9

    .line 7396
    :cond_7
    return v8
.end method

.method public updateServiceLocation()V
    .locals 4

    .prologue
    .line 5643
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5644
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5645
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5641
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5646
    :catch_0
    move-exception v0

    .line 5647
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#updateServiceLocation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public validateMsisdn()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 8333
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 8334
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 8335
    return v3

    .line 8336
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->validateMsisdn()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 8339
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 8340
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 8337
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 8338
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method
