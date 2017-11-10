.class public Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
.super Ljava/lang/Object;
.source "SecEffectThumbnailProcessor.java"


# static fields
.field public static final EFFECT_NORMAL:I = 0x0

.field public static final STRING_NO_EFFECT:Ljava/lang/String; = "com.samsung.android.provider.filterprovider.libnoeffect.so"

.field public static final STRING_SMART_FILTER:Ljava/lang/String; = "com.samsung.android.provider.filterprovider.libsmartfilter.so"

.field private static sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;


# instance fields
.field public mIsFrontCamera:Z

.field private mIsInitialized:Z

.field private mNativeContext:J

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureHeight:I

.field private mTextureWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "secimaging"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsFrontCamera:Z

    iput-boolean v1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput v1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureWidth:I

    iput v1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureHeight:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
    .locals 2

    const-class v1, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    invoke-direct {v0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;-><init>()V

    sput-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    :cond_0
    sget-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native native_draw([F[F[FF)V
.end method

.method private static final native native_init()V
.end method

.method private native native_initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native native_initialize(I)V
.end method

.method private native native_release()V
.end method

.method private native native_setEffect(I)V
.end method

.method private native native_setEffect_parameter(Ljava/lang/String;)V
.end method

.method private native native_setPreviewData(II[B)V
.end method

.method private native native_setSurfaceTexture(Ljava/lang/Object;II)V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v1, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->sEffectThumbnailProcessor:Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized draw([F[F[FF)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_draw([F[F[FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_initExternalEffect(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_initialize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFrontCamera()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsFrontCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_release()V

    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEffect(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setEffect(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEffectParameter(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setEffect_parameter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setFrontCamera(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsFrontCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreviewData(II[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mIsInitialized:Z

    :cond_0
    iget v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureWidth:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureHeight:I

    if-eq v0, p2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iput p1, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureWidth:I

    iput p2, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mTextureHeight:I

    iget-object v0, p0, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setSurfaceTexture(Ljava/lang/Object;II)V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/secimaging/SecEffectThumbnailProcessor;->native_setPreviewData(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
