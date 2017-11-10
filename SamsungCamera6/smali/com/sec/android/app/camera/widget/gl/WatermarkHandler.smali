.class public Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "WatermarkHandler.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;,
        Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkHandler"


# instance fields
.field private final NORMAL_RATIO_PREVIEW_LEFT:I

.field private final NORMAL_RATIO_PREVIEW_WIDTH:I

.field private final WATERMARK_ARROW_HEIGHT:F

.field private final WATERMARK_ARROW_OFFSET:F

.field private final WATERMARK_ARROW_WIDTH:F

.field private mAngle:I

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mId:I

.field private mLastTaskExecutor:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;

.field protected mNextButton:Lcom/samsung/android/glview/GLButton;

.field private mPreviewRect:Landroid/graphics/Rect;

.field protected mPreviousButton:Lcom/samsung/android/glview/GLButton;

.field private mResourceId:I

.field private mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mScale:F

.field private mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

.field protected mWatermarkHandlerListener:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 14

    const v13, 0x7f0202d4

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v4, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const v0, 0x7f0b0377

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_WIDTH:F

    const v0, 0x7f0b0375

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    const v0, 0x7f0b0376

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    const v0, 0x7f0b013c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->NORMAL_RATIO_PREVIEW_LEFT:I

    const v0, 0x7f0b0038

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->NORMAL_RATIO_PREVIEW_WIDTH:I

    iput v10, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mAngle:I

    iput v10, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mBitmapWidth:I

    iput v10, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mBitmapHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v4, v11

    move v5, v11

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mLastTaskExecutor:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    move v3, v2

    move v6, v13

    move v7, v13

    move v8, v10

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$1;-><init>(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    const v6, 0x7f0202d5

    const v7, 0x7f0202d5

    move v3, v2

    move v8, v10

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v11}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$2;-><init>(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v12}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mId:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mResourceId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Lcom/sec/android/app/camera/widget/gl/StickerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mScale:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mAngle:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mBitmapWidth:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mBitmapWidth:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mBitmapHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mBitmapHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;III)Landroid/graphics/Point;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->getOffset(III)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getOffset(III)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    :cond_0
    div-int/lit8 v1, p2, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :goto_0
    return-object v0

    :cond_1
    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method private saveWatermarkTempFile()V
    .locals 8

    const/4 v2, 0x1

    const-string v0, "WatermarkHandler"

    const-string v1, "saveWatermarkTempFile start"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mLastTaskExecutor:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mLastTaskExecutor:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$3;-><init>(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$LatestTaskExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setWatermarkInputText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setWatermarkText(Ljava/lang/String;)Z

    return-void
.end method

.method private waitForSaveWatermarkTempFile()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WatermarkHandler"

    const-string v3, "awaitTermination of SaveWatermarkTempFileThreadPool interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public changeWatermark(I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p1}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->findEntryById(I)Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->getImageResourceId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mResourceId:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/StickerView;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->removeView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->NORMAL_RATIO_PREVIEW_LEFT:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->NORMAL_RATIO_PREVIEW_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->NORMAL_RATIO_PREVIEW_LEFT:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->NORMAL_RATIO_PREVIEW_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_WIDTH:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    iget v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->NORMAL_RATIO_PREVIEW_LEFT:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    :goto_1
    new-instance v1, Lcom/sec/android/app/camera/widget/gl/StickerView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v1, v2, p1}, Lcom/sec/android/app/camera/widget/gl/StickerView;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setonHandlerMoveListener(Lcom/sec/android/app/camera/widget/gl/StickerView$OnHandlerMoveListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/widget/gl/StickerView;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->addView(Lcom/samsung/android/glview/GLView;)V

    iput v6, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mAngle:I

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_WIDTH:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_WIDTH:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v7, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_WIDTH:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_HEIGHT:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->WATERMARK_ARROW_OFFSET:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Lcom/samsung/android/glview/GLButton;->setLeftTop(IFF)V

    goto/16 :goto_1
.end method

.method public deinitWatermarkHandler()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->hideWatermarkHandler()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->unregisterWeatherInfoReceiver(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->waitForSaveWatermarkTempFile()V

    return-void
.end method

.method public hideNextButton()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method public hideWatermarkBoundary()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->hideBoundaryRect()V

    :cond_0
    return-void
.end method

.method public hideWatermarkHandler()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->hideNextButton()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->setVisibility(I)V

    return-void
.end method

.method public initWatermarkHandler()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/camera/util/WatermarkUtil;->initTime()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->initWeather(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/WatermarkUtil;->initLocation(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public isSavingWatermarkTempFile()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mSaveWatermarkTempFileThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDelete()V
    .locals 3

    const/16 v2, 0x238c

    const-string v0, "WatermarkHandler"

    const-string v1, "onDelete"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->hideNextButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->removeView(Lcom/samsung/android/glview/GLView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    iput v2, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWatermarkId(I)V

    :cond_0
    return-void
.end method

.method public onMoveEnd(I)V
    .locals 9

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getPosition()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/widget/gl/StickerView;->getPosition()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v7, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mBitmapWidth:I

    iget v8, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mBitmapHeight:I

    invoke-direct {p0, v7, v8, p1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->getOffset(III)Landroid/graphics/Point;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mWatermarkHandlerListener:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    mul-float/2addr v7, v3

    iget v8, v2, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    if-gez v7, :cond_1

    move v4, v6

    :goto_0
    mul-float v7, v1, v3

    iget v8, v2, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v7, v7

    if-gez v7, :cond_2

    move v5, v6

    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mWatermarkHandlerListener:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;

    invoke-interface {v6, v4, v5}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;->onWatermarkPositionChange(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviewRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    mul-float/2addr v7, v3

    iget v8, v2, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    float-to-int v4, v7

    goto :goto_0

    :cond_2
    mul-float v6, v1, v3

    iget v7, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v5, v6

    goto :goto_1
.end method

.method public onResize()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->saveWatermarkTempFile()V

    return-void
.end method

.method public onRotate(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mAngle:I

    return-void
.end method

.method public setWatermarkHandlerListener(Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mWatermarkHandlerListener:Lcom/sec/android/app/camera/widget/gl/WatermarkHandler$WatermarkHandlerListener;

    return-void
.end method

.method public showNextButton()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mNextButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mPreviousButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method public showWatermarkBoundary()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mStickerView:Lcom/sec/android/app/camera/widget/gl/StickerView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/StickerView;->showBoundaryRect()V

    :cond_0
    return-void
.end method

.method public showWatermarkHandler(I)V
    .locals 4

    const-string v1, "WatermarkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showWatermarkHandler : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mId:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mScale:F

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mId:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->changeWatermark(I)V

    :cond_1
    iput v0, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mScale:F

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->showNextButton()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWatermarkInputText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->setWatermarkInputText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWatermarkInputText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/gl/WatermarkHandler;->saveWatermarkTempFile()V

    return-void
.end method
