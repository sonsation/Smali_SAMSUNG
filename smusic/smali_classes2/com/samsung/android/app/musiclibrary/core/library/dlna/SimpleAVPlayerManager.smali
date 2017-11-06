.class public Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
.super Ljava/lang/Object;
.source "SimpleAVPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Dlna"

.field private static final TAG:Ljava/lang/String; = "SV-Dlna"


# instance fields
.field private mAVPlayerCurrentPosition:J

.field private final mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

.field private mAVPlayerState:I

.field private mDoNotUpdateProgress:Z

.field private final mDrmChecker:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

.field private mDuration:J

.field private final mInfoRequestHandler:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;

.field private mItem:Lcom/samsung/android/allshare/Item;

.field private mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

.field private final mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;

.field private mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

.field private mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

.field private final mSECAVPlayerStateListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

.field private mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simpleAVPlayer"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDoNotUpdateProgress:Z

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerCurrentPosition:J

    .line 352
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 458
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSECAVPlayerStateListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 538
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;

    .line 71
    new-instance v0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDrmChecker:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSECAVPlayerStateListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setSmartAVPlayerEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setOnDeviceErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;)V

    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;

    invoke-direct {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mInfoRequestHandler:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;

    .line 77
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimpleAVPlayerManager simpleAVPlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDoNotUpdateProgress:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDoNotUpdateProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .prologue
    .line 30
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
    .param p1, "x1"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onPlayResponseReceivedError(Lcom/samsung/android/allshare/ERROR;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mInfoRequestHandler:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/allshare/Item;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mItem:Lcom/samsung/android/allshare/Item;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
    .param p1, "x1"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->handleError(Lcom/samsung/android/allshare/ERROR;)V

    return-void
.end method

.method private getItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/allshare/Item;
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 134
    const-string v2, "content://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    new-instance v0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v0, "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v1

    .line 159
    .end local v0    # "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    .local v1, "item":Lcom/samsung/android/allshare/Item;
    :goto_0
    return-object v1

    .line 137
    .end local v1    # "item":Lcom/samsung/android/allshare/Item;
    :cond_0
    const-string v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    new-instance v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;

    .line 140
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2, p3}, Lcom/samsung/android/allshare/Item$WebContentBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 141
    .local v0, "builder":Lcom/samsung/android/allshare/Item$WebContentBuilder;
    if-eqz p2, :cond_1

    .line 142
    invoke-virtual {v0, p2}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    .line 144
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v1

    .line 145
    .restart local v1    # "item":Lcom/samsung/android/allshare/Item;
    goto :goto_0

    .line 146
    .end local v0    # "builder":Lcom/samsung/android/allshare/Item$WebContentBuilder;
    .end local v1    # "item":Lcom/samsung/android/allshare/Item;
    :cond_2
    const-string v2, "file%3A"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    :cond_3
    :goto_1
    new-instance v0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v0, "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    if-eqz p2, :cond_4

    .line 155
    invoke-virtual {v0, p2}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    .line 157
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v1

    .restart local v1    # "item":Lcom/samsung/android/allshare/Item;
    goto :goto_0

    .line 150
    .end local v0    # "builder":Lcom/samsung/android/allshare/Item$LocalContentBuilder;
    .end local v1    # "item":Lcom/samsung/android/allshare/Item;
    :cond_5
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "mnt":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 345
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 346
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    .line 348
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 349
    return-void
.end method

.method private onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 297
    const-string v0, "SMUSIC-SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOnErrorListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 303
    :cond_0
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 304
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onError(I)V

    goto :goto_0

    .line 306
    :cond_2
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onError(I)V

    goto :goto_0

    .line 308
    :cond_4
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onError(I)V

    goto :goto_0

    .line 311
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onError(I)V

    goto :goto_0
.end method

.method private onPlayResponseReceivedError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3
    .param p1, "err"    # Lcom/samsung/android/allshare/ERROR;

    .prologue
    .line 316
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayResponseReceivedError error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOnErrorListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 323
    :cond_0
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 324
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onPlayResponseReceivedError(I)V

    goto :goto_0

    .line 326
    :cond_2
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onPlayResponseReceivedError(I)V

    goto :goto_0

    .line 329
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onPlayResponseReceivedError(I)V

    goto :goto_0
.end method

.method private onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 334
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOnStateChangedListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;->onStateChanged(I)V

    .line 339
    :cond_0
    return-void
.end method

.method private start(Lcom/samsung/android/allshare/Item;J)Z
    .locals 8
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;
    .param p2, "msec"    # J

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x0

    .line 163
    const-string v3, "SV-Dlna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msec"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    if-nez v3, :cond_0

    .line 166
    const-string v3, "SMUSIC-SV-Dlna"

    const-string v4, "mSimpleAVPlayer is null. Please check your routine."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return v2

    .line 169
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    if-ne v3, v6, :cond_1

    .line 172
    const-string v3, "SMUSIC-SV-Dlna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nextItem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    :cond_1
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 176
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    .line 177
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerCurrentPosition:J

    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mItem:Lcom/samsung/android/allshare/Item;

    .line 180
    new-instance v1, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v1}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 181
    .local v1, "contentInfoBuilder":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    .line 182
    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v0

    .line 184
    .local v0, "contentInfo":Lcom/samsung/android/allshare/media/ContentInfo;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    .line 185
    iput v6, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 186
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    .line 187
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerCurrentPosition:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    return-wide v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 224
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 226
    const-string v0, "SMUSIC-SV-Dlna"

    const-string v1, "Current state is paused so ignore this."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->pause()V

    goto :goto_0
.end method

.method public play(Landroid/net/Uri;J)Z
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "msec"    # J

    .prologue
    .line 106
    new-instance v0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->start(Lcom/samsung/android/allshare/Item;J)Z

    move-result v0

    return v0
.end method

.method public play(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "seed"    # Ljava/lang/String;
    .param p2, "msec"    # J

    .prologue
    .line 116
    invoke-static {p1}, Lcom/samsung/android/allshare/extension/ItemExtractor;->create(Ljava/lang/String;)Lcom/samsung/android/allshare/Item;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->start(Lcom/samsung/android/allshare/Item;J)Z

    move-result v0

    return v0
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "msec"    # J

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/allshare/Item;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->start(Lcom/samsung/android/allshare/Item;J)Z

    move-result v0

    return v0
.end method

.method public releaseSecAVPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    const-string v0, "SV-Dlna"

    const-string/jumbo v1, "releaseSecAVPlayer is called."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 86
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setSmartAVPlayerEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setOnDeviceErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;)V

    .line 91
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mInfoRequestHandler:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;->removeRequest()V

    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerCurrentPosition:J

    .line 96
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mItem:Lcom/samsung/android/allshare/Item;

    .line 97
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 236
    const-string v2, "SV-Dlna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resume state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 238
    const-string v2, "SMUSIC-SV-Dlna"

    const-string v3, "Current state is playing so ignore this."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    return-void

    .line 241
    :cond_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 245
    const-wide/16 v0, 0x0

    .line 246
    .local v0, "position":J
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerCurrentPosition:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 247
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerCurrentPosition:J

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mItem:Lcom/samsung/android/allshare/Item;

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->start(Lcom/samsung/android/allshare/Item;J)Z

    goto :goto_0

    .line 251
    .end local v0    # "position":J
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->resume()V

    goto :goto_0
.end method

.method public seek(J)V
    .locals 5
    .param p1, "msec"    # J

    .prologue
    .line 214
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seek targetTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDoNotUpdateProgress:Z

    .line 216
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerCurrentPosition:J

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->seek(J)V

    .line 218
    return-void
.end method

.method public setOnCompletionListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    .line 614
    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    .line 634
    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    .line 583
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 195
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->stop()V

    .line 201
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 202
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    .line 204
    :cond_1
    return-void
.end method

.method public supportSeekOnPausedState()Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->isSeekableOnPaused()Z

    move-result v0

    return v0
.end method
