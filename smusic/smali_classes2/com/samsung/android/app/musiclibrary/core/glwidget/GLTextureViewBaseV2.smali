.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
.super Landroid/view/TextureView;
.source "GLTextureViewBaseV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;
    }
.end annotation


# static fields
.field private static final ABNORMAL_SIZE:I = 0xff0000

.field static final BEFORE_RENDER_GO_SLEEP:J = 0xfaL

.field public static final DEBUG:Z = false

.field private static final KEEP_RENDERING_THREAD:Z = true

.field private static final LEGACY_RESIZE:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_ON_ANIMATION:I = 0x67

.field private static final MSG_RUNNABLE:I = 0x68

.field private static final MSG_SURFACE_AVAILABLE:I = 0x64

.field private static final MSG_SURFACE_DESTROYED:I = 0x66

.field private static final MSG_SURFACE_SIZE_CHANGED:I = 0x65

.field private static final USE_RENDERING_THREAD_FOR_ANIMATION:Z = true

.field private static final sRenderingThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

.field private final mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLastFrameDuration:J

.field private final mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mRenderCycle:Ljava/lang/Runnable;

.field private final mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRenderingLogPrefix:Ljava/lang/String;

.field private volatile mRenderingThread:Ljava/lang/Thread;

.field private volatile mRenderingThreadId:J

.field final mRenderingThreadLock:Ljava/lang/Object;

.field private volatile mRunning:Z

.field private volatile mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

.field private final mThreadName:Ljava/lang/String;

.field private volatile mTouched:Z

.field private final sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 60
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sRenderingThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LEGACY_RESIZE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "threadName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    .line 82
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    const/4 v1, -0x1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mLastFrameDuration:J

    .line 102
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    .line 106
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Initial:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 114
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    .line 166
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderCycle:Ljava/lang/Runnable;

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 263
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mThreadName:Ljava/lang/String;

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->ensureRenderingThread()V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 252
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    .line 82
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    const/4 v1, -0x1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    const-wide/16 v0, 0x8

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mLastFrameDuration:J

    .line 102
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    .line 106
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Initial:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 114
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    .line 166
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderCycle:Ljava/lang/Runnable;

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 254
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mThreadName:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->ensureRenderingThread()V

    .line 258
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sendEvent(ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mLastFrameDuration:J

    return-wide v0
.end method

.method private ensureRenderingThread()V
    .locals 5

    .prologue
    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 542
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 544
    const-string v0, "%s[RT:%d] "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mThreadName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sRenderingThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 545
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 544
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    .line 546
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "startRenderingThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    .line 548
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderCycle:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    .line 549
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 550
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    .line 552
    :cond_0
    monitor-exit v1

    .line 554
    :cond_1
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isTextureAvailable()Z
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Available:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextureDestroyed()Z
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Destroyed:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEvent(ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "event"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    .prologue
    .line 436
    iput p1, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 438
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->ensureRenderingThread()V

    .line 439
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->notifyRenderingThread()V

    .line 440
    return-void
.end method


# virtual methods
.method public getRenderingThreadId()J
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    return-wide v0
.end method

.method handleRenderingEvent(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V
    .locals 6
    .param p1, "event"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    .prologue
    const/16 v5, 0x68

    .line 373
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    const/16 v3, 0x67

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    if-eq v2, v5, :cond_0

    .line 374
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "handleEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    packed-switch v2, :pswitch_data_0

    .line 405
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V

    .line 406
    return-void

    .line 378
    :pswitch_0
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->width:I

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->height:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 381
    :pswitch_1
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->width:I

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->height:I

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleTextureSizeChange(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 384
    :pswitch_2
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleTextureDestroyed(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 389
    :pswitch_3
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    if-eqz v2, :cond_1

    .line 392
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 393
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->peekEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v1

    .line 396
    .local v1, "runnableEvent":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    :goto_1
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->msg:I

    if-ne v2, v5, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->receiveEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v1

    .line 398
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    .end local v0    # "r":Ljava/lang/Runnable;
    check-cast v0, Ljava/lang/Runnable;

    .line 399
    .restart local v0    # "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 400
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->recycle(Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;)V

    .line 401
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->peekEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v1

    goto :goto_1

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method handleRequestRender()V
    .locals 6

    .prologue
    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 410
    .local v2, "startTime":J
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 415
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onDrawFrame(Landroid/opengl/GLSurfaceView$Renderer;)V
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mLastFrameDuration:J

    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method handleTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->init(Landroid/graphics/SurfaceTexture;)V

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Available:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->checkGLCurrent()V

    .line 355
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceCreated(Landroid/opengl/GLSurfaceView$Renderer;II)V

    .line 357
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceSizeChanged(Landroid/opengl/GLSurfaceView$Renderer;II)V
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_1
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method handleTextureDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceDestroyed(Landroid/opengl/GLSurfaceView$Renderer;)V
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :cond_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method handleTextureSizeChange(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 317
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LEGACY_RESIZE:Z

    if-eqz v1, :cond_1

    .line 318
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    const-string v2, "LEGACY_RESIZE"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceDestroyed(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 320
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->init(Landroid/graphics/SurfaceTexture;)V

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;->Available:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTextureState:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$SurfaceTextureState;

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->checkGLCurrent()V

    .line 326
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceCreated(Landroid/opengl/GLSurfaceView$Renderer;II)V

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->glCore:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->onSurfaceSizeChanged(Landroid/opengl/GLSurfaceView$Renderer;II)V
    :try_end_0
    .catch Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_2
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->isTextureAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    :goto_0
    :pswitch_0
    return-void

    .line 276
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    goto :goto_0

    .line 280
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mTouched:Z

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public inAnimationThread(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 493
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 494
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 506
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 497
    const/16 v0, 0x68

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->obtainEvent(Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sendEvent(ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-super {p0, p1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 504
    :cond_2
    invoke-super {p0, p1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method notifyRenderingThread()V
    .locals 2

    .prologue
    .line 576
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 578
    monitor-exit v1

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method obtainEvent(Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, -0x1

    .line 459
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->obtainEvent(Ljava/lang/Object;II)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v0

    return-object v0
.end method

.method obtainEvent(Ljava/lang/Object;II)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 451
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sEventsPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    .line 452
    .local v0, "res":Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->obj:Ljava/lang/Object;

    .line 453
    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->width:I

    .line 454
    iput p3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;->height:I

    .line 455
    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0xff0000

    const/4 v7, 0x0

    .line 514
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 515
    .local v3, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 523
    .local v1, "heightSize":I
    if-lt v3, v8, :cond_0

    .line 524
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 525
    .local v2, "widthMode":I
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLTextureViewBase onMeasure size is abnormal! So regarding it as negative. widthMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " widthSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 530
    .end local v2    # "widthMode":I
    :cond_0
    if-lt v1, v8, :cond_1

    .line 531
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 532
    .local v0, "heightMode":I
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLTextureViewBase onMeasure size is abnormal! So regarding it as negative. heightMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " heightSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 537
    .end local v0    # "heightMode":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 538
    return-void
.end method

.method peekEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    return-object v0
.end method

.method public postOnAnimationInAnimationThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 479
    const/16 v0, 0x67

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->obtainEvent(Ljava/lang/Object;)Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sendEvent(ILcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-super {p0, p1}, Landroid/view/TextureView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method receiveEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    return-object v0
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->notifyRenderingThread()V

    .line 468
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 0
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 510
    return-void
.end method

.method protected stopRenderingThread()V
    .locals 4

    .prologue
    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 561
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->sRenderingThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 563
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "stopRenderingThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRunning:Z

    .line 565
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThread:Ljava/lang/Thread;

    .line 567
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadId:J

    .line 568
    monitor-exit v1

    .line 573
    :cond_0
    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
