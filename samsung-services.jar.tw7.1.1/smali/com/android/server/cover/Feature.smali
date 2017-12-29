.class final Lcom/android/server/cover/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final FEATURE_COVER_CLEARCOVER:Ljava/lang/String; = "com.sec.feature.cover.clearcover"

.field private static final FEATURE_COVER_NEONCOVER:Ljava/lang/String; = "com.sec.feature.cover.neoncover"

.field private static final FEATURE_COVER_NFC_AUTHENTICATION:Ljava/lang/String; = "com.sec.feature.cover.nfc_authentication"

.field private static final FEATURE_COVER_NFC_LED_COVER:Ljava/lang/String; = "com.sec.feature.cover.nfcledcover"

.field private static final FEATURE_COVER_SMARTCOVER:Ljava/lang/String; = "com.sec.feature.cover.smartcover"

.field private static final FEATURE_COVER_SVIEWCOVER:Ljava/lang/String; = "com.sec.feature.cover.sviewcover"

.field private static final NFC_LED_COVER_FEATURE_LEVEL:Ljava/lang/String; = "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

.field static final NFC_LED_COVER_LEVEL_DREAM:I = 0x1e

.field static final NFC_LED_COVER_LEVEL_GRACE:I = 0x14

.field static final NFC_LED_COVER_LEVEL_GREAT:I = 0x28

.field static final NFC_LED_COVER_LEVEL_HERO:I = 0xa

.field private static sDeviceTypeProperty:Ljava/lang/String;

.field private static sHardwareProperty:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/cover/Feature;

.field private static sIsClearCoverSystemFeatureEnabled:Z

.field private static sIsDeviceSupportDetectCover:Z

.field private static sIsDeviceSupportQueried:Z

.field private static sIsDeviceSupportVerityCover:Z

.field private static sIsNfcAuthSystemFeatureEnabled:Z

.field private static sIsSmartCoverSystemFeatureEnabled:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportLEDCover:Z

.field private static sIsSupportLEDCoverLSI:Z

.field private static sIsSupportLEDCoverQCOM:Z

.field private static sIsSupportNeonCover:Z

.field private static sIsSupportNfcLedCover:Z

.field private static sIsSupportSViewCover:Z

.field private static sIsSupportWindowCover:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sSupportNfcLedCoverLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    sput-object v1, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    .line 42
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 43
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportWindowCover:Z

    .line 44
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    .line 45
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    .line 46
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    .line 47
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    .line 48
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    .line 49
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNeonCover:Z

    .line 51
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 52
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    .line 53
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 54
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 55
    sput v0, Lcom/android/server/cover/Feature;->sSupportNfcLedCoverLevel:I

    .line 77
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSmartCoverSystemFeatureEnabled:Z

    .line 78
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 79
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsClearCoverSystemFeatureEnabled:Z

    .line 81
    sput-object v1, Lcom/android/server/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 82
    sput-object v1, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-direct {p0}, Lcom/android/server/cover/Feature;->getSystemProperties()V

    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/cover/Feature;->updateSystemFeature(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0}, Lcom/android/server/cover/Feature;->updateDeviceSupportFeature()V

    .line 91
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v0, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/server/cover/Feature;

    invoke-direct {v0, p0}, Lcom/android/server/cover/Feature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    .line 88
    :cond_0
    sget-object v0, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    return-object v0
.end method

.method private getSystemProperties()V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/android/server/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 132
    :cond_0
    sget-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 133
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    .line 128
    :cond_1
    return-void
.end method

.method private updateDeviceSupportFeature()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportQueried:Z

    if-nez v0, :cond_0

    .line 116
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    .line 116
    :goto_0
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    .line 118
    const-string v0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 120
    const-string v0, "/sys/class/sec/expander/expgpio"

    .line 119
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    .line 122
    const-string v0, "/sys/class/sec/ledcover/cover_pwr"

    .line 121
    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    .line 123
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    :goto_1
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    .line 124
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 114
    :cond_0
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 123
    goto :goto_1
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    sget-boolean v1, Lcom/android/server/cover/Feature;->sIsSystemFeatureQueried:Z

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    .line 101
    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportWindowCover:Z

    .line 102
    const-string v1, "com.sec.feature.cover.sviewcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    .line 103
    const-string v1, "com.sec.feature.cover.smartcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSmartCoverSystemFeatureEnabled:Z

    .line 104
    const-string v1, "com.sec.feature.cover.clearcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsClearCoverSystemFeatureEnabled:Z

    .line 105
    const-string v1, "com.sec.feature.cover.nfc_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    .line 106
    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportNfcLedCover:Z

    .line 107
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NFC_LED_COVER_LEVEL"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/cover/Feature;->sSupportNfcLedCoverLevel:I

    .line 108
    const-string v1, "com.sec.feature.cover.neoncover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportNeonCover:Z

    .line 110
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 97
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 210
    const-string v0, " Current Feature state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    const-string v0, "  sIsDeviceSupportVerityCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 212
    const-string v0, "  sIsDeviceSupportDetectCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 213
    const-string v0, "  sIsSupportWindowCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportWindowCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 214
    const-string v0, "  sIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 215
    const-string v0, "  sIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 216
    const-string v0, "  sIsSupportLEDCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 217
    const-string v0, "  sIsSupportLEDCoverQCOM="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 218
    const-string v0, "  sIsSupportLEDCoverLSI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 219
    const-string v0, "  sIsSupportNfcLedCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNfcLedCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 220
    const-string v0, "  sIsNfcAuthSystemFeatureEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 221
    const-string v0, "  sIsSupportNeonCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNeonCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 222
    const-string v0, "  sSupportNfcLedCoverLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/cover/Feature;->sSupportNfcLedCoverLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 223
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method getSupportNfcLedCoverLevel()I
    .locals 1

    .prologue
    .line 206
    sget v0, Lcom/android/server/cover/Feature;->sSupportNfcLedCoverLevel:I

    return v0
.end method

.method isChinaModel()Z
    .locals 2

    .prologue
    .line 198
    const-string v0, "CHINA"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isMobileKeyboardFeatureEnabled()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method isNfcAuthEnabled()Z
    .locals 1

    .prologue
    .line 166
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    return v0
.end method

.method isRuggedizedFeatureEnabled()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method isSupportClearCover()Z
    .locals 1

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsClearCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportDetectCover()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    return v0
.end method

.method isSupportFlipCover()Z
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    return v0
.end method

.method isSupportLEDCover()Z
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    return v0
.end method

.method isSupportLEDCoverLSI()Z
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    return v0
.end method

.method isSupportLEDCoverQCOM()Z
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    return v0
.end method

.method isSupportNeonCover()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNeonCover:Z

    return v0
.end method

.method isSupportNfcLedCover()Z
    .locals 1

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportNfcLedCover:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsNfcAuthSystemFeatureEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSupportSViewCover()Z
    .locals 1

    .prologue
    .line 154
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    return v0
.end method

.method isSupportSmartCover()Z
    .locals 1

    .prologue
    .line 158
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSmartCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportVerifyCover()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    return v0
.end method

.method isSupportWindowCover()Z
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportWindowCover:Z

    return v0
.end method

.method isTablet()Z
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
