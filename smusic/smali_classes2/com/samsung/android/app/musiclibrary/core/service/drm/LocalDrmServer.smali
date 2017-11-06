.class public final Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;
.super Ljava/lang/Object;
.source "LocalDrmServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field public static final MILK_FILE_FORMAT:Ljava/lang/String; = ".mdrm"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final FINALIZE_GUARDIAN:Ljava/lang/Object;

.field private final mClientId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceKey:Ljava/lang/String;

.field private final mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

.field private volatile mIsAlive:Z

.field private final mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSdCardPathPreFix:Ljava/lang/String;

.field private final mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "deviceKey"    # Ljava/lang/String;
    .param p4, "controller"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    .line 50
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->FINALIZE_GUARDIAN:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mClientId:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDeviceKey:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    .line 70
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Local drm server created : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->closeInternal(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->getSdCardPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private closeInternal(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 1
    .param p1, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 220
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 223
    :cond_0
    return-void
.end method

.method private getSdCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mSdCardPathPreFix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mSdCardPathPreFix:Ljava/lang/String;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mSdCardPathPreFix:Ljava/lang/String;

    return-object v0
.end method

.method public static hasError(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Z
    .locals 1
    .param p0, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getFd()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAutoTimeChecked(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 86
    :try_start_0
    const-string v4, "phone"

    .line 87
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 88
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 89
    .local v1, "phoneType":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 95
    .end local v1    # "phoneType":I
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return v3

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    const-string v5, "isAutoTimeChecked : "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isDrmFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mdrm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killServerInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mIsAlive:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mIsAlive:Z

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->closeAll()V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->stopServer()V

    .line 146
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    const-string v1, "killServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized acquireServer()V
    .locals 3

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 107
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mIsAlive:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mClientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDeviceKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->startServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mIsAlive:Z

    .line 112
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startServer : Ref : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 1
    .param p1, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 217
    :goto_0
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)[B
    .locals 2
    .param p1, "content"    # Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 203
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-nez v0, :cond_0

    .line 204
    new-array v0, v1, [B

    .line 209
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->hasError(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-array v0, v1, [B

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->getLyrics(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mIsAlive:Z

    return v0
.end method

.method public declared-synchronized killServer()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->killServerInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    :cond_0
    const/16 v4, -0x19

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 199
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v2

    .line 173
    :cond_2
    :try_start_1
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mIsAlive:Z

    if-nez v4, :cond_3

    .line 174
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    const-string v5, "Server is killed!, Can\'t open file!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v4, -0x19

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v2

    goto :goto_0

    .line 177
    :cond_3
    const-wide/16 v0, 0x0

    .line 181
    .local v0, "base":J
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-virtual {v4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->get(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v2

    .line 182
    .local v2, "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    if-nez v2, :cond_1

    .line 186
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isAutoTimeChecked(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 187
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    const-string v5, "Auto time is not checked-103"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/16 v4, -0x67

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/drm/InvalidDrmContent;->obtain(I)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v2

    goto :goto_0

    .line 190
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mDrmController:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;

    invoke-interface {v4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;->open(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object v2

    .line 191
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v3

    .line 192
    .local v3, "error":I
    if-gez v3, :cond_5

    .line 193
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Open error occurs : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mTable:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;

    invoke-virtual {v4, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer$ContentsTable;->put(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v0    # "base":J
    .end local v2    # "content":Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .end local v3    # "error":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized unacquireServer()V
    .locals 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/service/drm/DrmConstants;->FEATURE_ON:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 120
    .local v0, "refCount":I
    if-gez v0, :cond_2

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->mRefCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "refCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 123
    .restart local v0    # "refCount":I
    :cond_2
    if-gtz v0, :cond_0

    .line 126
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->killServer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
