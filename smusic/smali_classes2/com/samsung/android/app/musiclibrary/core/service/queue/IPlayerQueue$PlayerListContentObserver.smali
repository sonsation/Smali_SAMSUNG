.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;
.super Landroid/database/ContentObserver;
.source "IPlayerQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerListContentObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SV-List"

.field private static final UPDATE_THROTTLE:I = 0x7d0


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastLoadCompleteTime:J

.field private mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;

.field private final mUpdateNotifier:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field private mWaiting:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 353
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mLastLoadCompleteTime:J

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mWaiting:Z

    .line 392
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mUpdateNotifier:Ljava/lang/Runnable;

    .line 369
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mHandler:Landroid/os/Handler;

    .line 370
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mLastLoadCompleteTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;
    .param p1, "x1"    # J

    .prologue
    .line 348
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mLastLoadCompleteTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mWaiting:Z

    return p1
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v6, 0x7d0

    .line 379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 380
    .local v0, "now":J
    const-string v2, "SV-List"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange ! now : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Uri :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mLastLoadCompleteTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 382
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mWaiting:Z

    if-nez v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mUpdateNotifier:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mLastLoadCompleteTime:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 384
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mWaiting:Z

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mUri:Landroid/net/Uri;

    .line 389
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mUpdateNotifier:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method setContentChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerListContentObserver$OnContentChangeListener;

    .line 375
    return-void
.end method
