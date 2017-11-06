.class Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
.super Ljava/lang/Object;
.source "KeyLocks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockHolder"
.end annotation


# instance fields
.field volatile expireTime:J

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mRequestDuration:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "requestDuration"    # J

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 143
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->mRequestDuration:J

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->update()V

    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->mRequestDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->expireTime:J

    .line 156
    return-void
.end method


# virtual methods
.method expired(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->expireTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestDuration()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->mRequestDuration:J

    return-wide v0
.end method
