.class public Lcom/samsung/android/app/SemDualAppManager;
.super Ljava/lang/Object;
.source "SemDualAppManager.java"


# static fields
.field private static final BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String; = "com.bbm"

.field static final DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

.field private static final FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.orca"

.field private static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"

.field private static final HIKE_PACKAGE_NAME:Ljava/lang/String; = "com.bsb.hike"

.field private static final ICQ_PACKAGE_NAME:Ljava/lang/String; = "com.icq.mobile.client"

.field private static final KAKAOTALK_PACKAGE_NAME:Ljava/lang/String; = "com.kakao.talk"

.field private static final LINE_PACKAGE_NAME:Ljava/lang/String; = "jp.naver.line.android"

.field public static final MAX_DUALAPP_ID:I = 0x63

.field public static final MIN_DUALAPP_ID:I = 0x5f

.field private static final QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqqi"

.field private static final SKYPE_PACKAGE_NAME:Ljava/lang/String; = "com.skype.raider"

.field private static final TAG:Ljava/lang/String; = "SemDualAppManager"

.field private static final TELEGRAM_PACKAGE_NAME:Ljava/lang/String; = "org.telegram.messenger"

.field private static final VIBER_PACKAGE_NAME:Ljava/lang/String; = "com.viber.voip"

.field private static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static final WHATSAPP_PACKAGE_NAME:Ljava/lang/String; = "com.whatsapp"

.field private static final YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String; = "com.yahoo.mobile.client.android.im"

.field private static final ZALO_PACKAGE_NAME:Ljava/lang/String; = "com.zing.zalo"

.field private static mService:Lcom/samsung/android/app/ISemDualAppManager;

.field private static sDAInstance:Lcom/samsung/android/app/SemDualAppManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    .line 29
    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    .line 68
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "com.facebook.katana"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.whatsapp"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.facebook.orca"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "com.tencent.mobileqq"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mobileqqi"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mm"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "com.skype.raider"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.viber.voip"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "jp.naver.line.android"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "com.bbm"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "org.telegram.messenger"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.kakao.talk"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "com.bsb.hike"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.icq.mobile.client"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.yahoo.mobile.client.android.im"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.zing.zalo"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 68
    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllInstalledWhitelistedPackages()Ljava/util/List;
    .locals 2
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
    .line 214
    const-string/jumbo v0, "SemDualAppManager"

    const-string/jumbo v1, "This device doesn\'t support DA. getAllInstalledWhitelistedPackages returns null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAllWhitelistedPackages()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    const-string/jumbo v0, "SemDualAppManager"

    const-string/jumbo v1, "This device doesn\'t support DA. getAllWhitelistedPackages Returns null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDualAppProfileId()I
    .locals 3

    .prologue
    .line 189
    const/16 v0, -0x2710

    .line 191
    .local v0, "id":I
    const-string/jumbo v1, "SemDualAppManager"

    const-string/jumbo v2, "This device doesn\'t support DA. getDualAppProfileId Returns UserHandle.USER_NULL"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return v0
.end method

.method private static getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "SemDualAppManager"

    const-string/jumbo v1, "This device doesn\'t support DA. getDualAppService Returns null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v0, :cond_1

    .line 101
    const-class v1, Lcom/samsung/android/app/SemDualAppManager;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/samsung/android/app/SemDualAppManager;

    invoke-direct {v0}, Lcom/samsung/android/app/SemDualAppManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    .line 104
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    iput-object p0, v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 109
    :cond_1
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDualAppId(I)Z
    .locals 2
    .param p0, "userId"    # I

    .prologue
    .line 163
    const-string/jumbo v0, "SemDualAppManager"

    const-string/jumbo v1, "This device doesn\'t support DA. isDualAppId Returns false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public static isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "whitelisted":Z
    const-string/jumbo v1, "SemDualAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInstalledWhitelistedPackage. package Name = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string/jumbo v1, "SemDualAppManager"

    const-string/jumbo v2, "This device doesn\'t support DA. isInstalledWhitelistedPackage returns false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v1, 0x0

    return v1
.end method

.method public static updateDualAppData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 282
    const-string/jumbo v0, "SemDualAppManager"

    const-string/jumbo v1, "This device doesn\'t support DA. updateDualAppData returns null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public isSupported()Z
    .locals 2

    .prologue
    .line 151
    const-string/jumbo v0, "SemDualAppManager"

    const-string/jumbo v1, "This device doesn\'t support DA. Return false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitelistedPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string/jumbo v0, "SemDualAppManager"

    const-string/jumbo v1, "This device doesn\'t support DA. isWhitelistedPackage returns false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    return v0
.end method
