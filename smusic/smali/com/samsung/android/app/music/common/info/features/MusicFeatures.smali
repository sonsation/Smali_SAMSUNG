.class public Lcom/samsung/android/app/music/common/info/features/MusicFeatures;
.super Ljava/lang/Object;
.source "MusicFeatures.java"


# static fields
.field private static final DLNA_DMS_SUPPORT_BRAND:Ljava/lang/String; = "vzw"

.field private static final DLNA_DMS_SUPPORT_PRODUCTS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final QUICKCONNECT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.qconnect"

.field private static final TAG:Ljava/lang/String;

.field private static sIsDlnaDmsSupported:Ljava/lang/Boolean;

.field private static sIsQuickConnectAudioPathSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->LOG_TAG:Ljava/lang/String;

    .line 23
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "jfvelte"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ja3g"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "jftdd"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "jflte"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "jsglte"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ks01lte"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "jalte"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "jfwifi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "jactivelte"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "jgedlte"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "kccat6"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "s5neolte"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "klte"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "k3g"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "kvolte"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "s5velte"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "kwifi"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lentislte"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "kactivelte"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "ha3g"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hl3g"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hlte"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "hllte"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "htdlte"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "frescolte"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "trlte"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "trelte"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "trhplte"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "tre3g"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "tblte"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "tbelte"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "tre3calte"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "zero"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "zen"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "noble"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->DLNA_DMS_SUPPORT_PRODUCTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDlnaDmsSupported()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-object v2, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->sIsDlnaDmsSupported:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 44
    sget-object v1, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->sIsDlnaDmsSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 54
    .local v0, "product":Ljava/lang/String;
    :goto_0
    return v1

    .line 46
    .end local v0    # "product":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->sIsDlnaDmsSupported:Ljava/lang/Boolean;

    .line 47
    sget-object v2, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->DLNA_DMS_SUPPORT_PRODUCTS:[Ljava/lang/String;

    array-length v3, v2

    .restart local v0    # "product":Ljava/lang/String;
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 48
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v5, "vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->sIsDlnaDmsSupported:Ljava/lang/Boolean;

    .line 54
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->sIsDlnaDmsSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 47
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isQuickConnectAudioPathSupported(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v3, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->sIsQuickConnectAudioPathSupported:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 67
    sget-object v3, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->sIsQuickConnectAudioPathSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 82
    :goto_0
    return v3

    .line 69
    :cond_0
    const/4 v2, 0x0

    .line 71
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->QUICKCONNECT_CONFIG_PACKAGE_NAME:Ljava/lang/String;

    .line 72
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    const-string v1, "com.samsung.android.qconnect"

    .line 76
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 81
    :goto_1
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->sIsQuickConnectAudioPathSupported:Ljava/lang/Boolean;

    .line 82
    sget-object v3, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->sIsQuickConnectAudioPathSupported:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/samsung/android/app/music/common/info/features/MusicFeatures;->LOG_TAG:Ljava/lang/String;

    const-string v4, "isSupportQuickConnectAudioPath() - NameNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static isSupportForceUpdate()Z
    .locals 2

    .prologue
    .line 90
    const-string v0, "KOREA"

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->COUNTRY_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportMelon(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method
