.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;
.super Ljava/lang/Object;
.source "ServiceTimer.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private final mCallbackRunnable:Ljava/lang/Runnable;

.field private volatile mDelay:I

.field private volatile mFireTime:J

.field private final mName:Ljava/lang/String;

.field private final mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delay"    # I
    .param p3, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mName:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mDelay:I

    .line 57
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mCallback:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mFireTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mCallbackRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->getDelay()I

    move-result v0

    return v0
.end method

.method private getDelay()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mDelay:I

    return v0
.end method


# virtual methods
.method public schedule()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mDelay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mFireTime:J

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mCallbackRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mDelay:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->postDelayed(Ljava/lang/Runnable;I)V

    .line 76
    :cond_0
    return-void
.end method

.method public schedule(I)V
    .locals 0
    .param p1, "delta"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->mDelay:I

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->schedule()V

    .line 81
    return-void
.end method
