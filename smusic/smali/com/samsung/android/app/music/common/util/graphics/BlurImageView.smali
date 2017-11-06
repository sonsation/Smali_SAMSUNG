.class public Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;
.super Landroid/widget/ImageView;
.source "BlurImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;
    }
.end annotation


# static fields
.field private static final CROSS_FADE_DURATION:J = 0x1f4L

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

.field private mCrossFade:Landroid/animation/AnimatorSet;

.field private final mCurMatrix:Landroid/graphics/Matrix;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFullScreenCrop:Z

.field private final mInvalidateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mIsNext:Z

.field private mNextAlpha:I

.field private mNextBitmap:Landroid/graphics/Bitmap;

.field private final mNextMatrix:Landroid/graphics/Matrix;

.field private mOnCrossFadeCompletedListener:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;

.field private mPrevBitmap:Landroid/graphics/Bitmap;

.field private final mPrevMatrix:Landroid/graphics/Matrix;

.field private final mPrevNextBitmapPaint:Landroid/graphics/Paint;

.field private final sBlurredImages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevNextBitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->sBlurredImages:Landroid/util/LruCache;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCurMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextMatrix:Landroid/graphics/Matrix;

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;-><init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mInvalidateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 72
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mFullScreenCrop:Z

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->init(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevNextBitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->sBlurredImages:Landroid/util/LruCache;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCurMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextMatrix:Landroid/graphics/Matrix;

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;-><init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mInvalidateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 72
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mFullScreenCrop:Z

    .line 89
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->init(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevNextBitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->sBlurredImages:Landroid/util/LruCache;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCurMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextMatrix:Landroid/graphics/Matrix;

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;-><init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mInvalidateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 72
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mFullScreenCrop:Z

    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevNextBitmapPaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->sBlurredImages:Landroid/util/LruCache;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCurMatrix:Landroid/graphics/Matrix;

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextMatrix:Landroid/graphics/Matrix;

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$1;-><init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mInvalidateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 72
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mFullScreenCrop:Z

    .line 99
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->init(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCrossFade:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mOnCrossFadeCompletedListener:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;

    return-object v0
.end method

.method private assignBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 206
    :cond_1
    :goto_0
    return-object v0

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->sBlurredImages:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 202
    .local v0, "res":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 203
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->blurRenderScript(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->sBlurredImages:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private blurRenderScript(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "smallBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 296
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 298
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 299
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 301
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "matrix"    # Landroid/graphics/Matrix;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 315
    if-eqz p2, :cond_0

    .line 316
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 318
    :cond_0
    return-void
.end method

.method private getAlpha(F)I
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 324
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 105
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDisplay:Landroid/view/Display;

    .line 106
    return-void
.end method

.method private isBitmapChange()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 285
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mIsNext:Z

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 286
    goto :goto_0

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private isNextPrevBitmapsAssigned()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 247
    if-nez p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 252
    .local v1, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 256
    .local v0, "drawableHeight":I
    iget-boolean v7, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mFullScreenCrop:Z

    if-eqz v7, :cond_1

    .line 257
    iget-object v7, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 258
    iget-object v7, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 259
    .local v6, "viewWidth":I
    iget-object v7, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 266
    .local v5, "viewHeight":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "dx":F
    const/4 v3, 0x0

    .line 268
    .local v3, "dy":F
    mul-int v7, v1, v5

    mul-int v8, v6, v0

    if-le v7, v8, :cond_2

    .line 269
    int-to-float v7, v5

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 270
    .local v4, "scale":F
    int-to-float v7, v6

    int-to-float v8, v1

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float v2, v7, v9

    .line 276
    :goto_2
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 277
    add-float v7, v2, v9

    float-to-int v7, v7

    int-to-float v7, v7

    add-float v8, v3, v9

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 261
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "scale":F
    .end local v5    # "viewHeight":I
    .end local v6    # "viewWidth":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->getMeasuredWidth()I

    move-result v6

    .line 262
    .restart local v6    # "viewWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->getMeasuredHeight()I

    move-result v5

    .restart local v5    # "viewHeight":I
    goto :goto_1

    .line 272
    .restart local v2    # "dx":F
    .restart local v3    # "dy":F
    :cond_2
    int-to-float v7, v6

    int-to-float v8, v1

    div-float v4, v7, v8

    .line 273
    .restart local v4    # "scale":F
    int-to-float v7, v5

    int-to-float v8, v0

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float v3, v7, v9

    goto :goto_2
.end method


# virtual methods
.method public crossFadeTo(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const-wide/16 v4, 0xfa

    const/4 v3, 0x2

    .line 129
    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 130
    .local v1, "fadeOut":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mInvalidateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 131
    new-instance v2, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$2;-><init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 144
    .local v0, "fadeIn":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mInvalidateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 145
    new-instance v2, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$3;-><init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCrossFade:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCrossFade:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 154
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCrossFade:Landroid/animation/AnimatorSet;

    .line 155
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCrossFade:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 156
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCrossFade:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$4;-><init>(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCrossFade:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 174
    return-void

    .line 129
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 143
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 306
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    if-eqz v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 308
    .local v0, "gen":Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBlurGenerator:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    .line 309
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->release()V

    .line 311
    .end local v0    # "gen":Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 312
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->isNextPrevBitmapsAssigned()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->isBitmapChange()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevBitmap:Landroid/graphics/Bitmap;

    .line 224
    .local v0, "second":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevMatrix:Landroid/graphics/Matrix;

    .line 225
    .local v1, "secondMatrix":Landroid/graphics/Matrix;
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mIsNext:Z

    if-eqz v2, :cond_0

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextBitmap:Landroid/graphics/Bitmap;

    .line 227
    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextMatrix:Landroid/graphics/Matrix;

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevNextBitmapPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevNextBitmapPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Draw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDraw alpha: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mAlpha:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nextAlpha: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextAlpha:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " alpha sum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mAlpha:I

    iget v5, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextAlpha:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isHardware: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v0    # "second":Landroid/graphics/Bitmap;
    .end local v1    # "secondMatrix":Landroid/graphics/Matrix;
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->updateMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 244
    return-void
.end method

.method public setBlurredImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBlurredImageBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->updateMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 117
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 189
    sget-object v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->blurRenderScript(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 191
    return-void
.end method

.method public setFraction(F)V
    .locals 5
    .param p1, "fraction"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 210
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    add-float v0, v2, v4

    .line 211
    .local v0, "mainAlpha":F
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v1, v2, v4

    .line 212
    .local v1, "nextAlpha":F
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->getAlpha(F)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mAlpha:I

    .line 213
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->getAlpha(F)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextAlpha:I

    .line 214
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mIsNext:Z

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Fraction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFraction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsNext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mIsNext:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->invalidate()V

    .line 217
    return-void

    .line 214
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 122
    sget-object v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImageBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->assignBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mCurMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->updateMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    return-void
.end method

.method public setNextImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 177
    sget-object v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNextImageBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->assignBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextBitmap:Landroid/graphics/Bitmap;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mNextMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->updateMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 180
    return-void
.end method

.method public setOnCrossFadeCompletedListener(Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mOnCrossFadeCompletedListener:Lcom/samsung/android/app/music/common/util/graphics/BlurImageView$OnCrossFadeCompleted;

    .line 195
    return-void
.end method

.method public setPrevImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 183
    sget-object v0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPrevImageBitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->assignBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevBitmap:Landroid/graphics/Bitmap;

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->mPrevMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/graphics/BlurImageView;->updateMatrix(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 186
    return-void
.end method
