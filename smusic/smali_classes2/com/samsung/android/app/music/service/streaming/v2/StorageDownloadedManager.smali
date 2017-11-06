.class public final Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;
.super Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;
.source "StorageDownloadedManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;,
        Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$StorageFile;,
        Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LIFECYCLE:Ljava/lang/String; = "LifeCycle: "

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final MILK:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;

.field private static final PREFIX_HTTP:Ljava/lang/String; = "http"

.field private static final SUB_TAG:Ljava/lang/String; = "StorageManager> "

.field private static volatile sStorageDownloadedManager:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;-><init>(Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$1;)V

    sput-object v0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->MILK:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->existFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->sStorageDownloadedManager:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->sStorageDownloadedManager:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->sStorageDownloadedManager:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->sStorageDownloadedManager:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static existFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    .line 130
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method private findFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 4
    .param p1, "FileRequest"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->getDownloadedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v2

    .line 97
    :cond_1
    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    new-instance v2, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$DcfFile;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    new-instance v2, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$StorageFile;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$StorageFile;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDownloadedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "streamingId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 112
    const-string v2, "1"

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseFullSong(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    :goto_0
    return-object v1

    .line 116
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->parseCp(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "cp":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    sget-object v1, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->MILK:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p1}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;->access$100(Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager$Milk;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public static obtainInstance()Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->sStorageDownloadedManager:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call createInstance method first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->sStorageDownloadedManager:Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;

    return-object v0
.end method

.method private static printInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method private printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StorageManager> LifeCycle: [id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "prefix":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%-50s | %-20s | %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "log":Ljava/lang/String;
    const-string v2, "SMUSIC-SV-PlayerServer"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "SMUSIC-SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method


# virtual methods
.method protected request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 4
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->findFile(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v0

    .line 84
    .local v0, "file":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->id:Ljava/lang/String;

    const-string v2, "find!"

    const-string v3, ""

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/streaming/v2/StorageDownloadedManager;->printLifeCycleLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-object v0
.end method
