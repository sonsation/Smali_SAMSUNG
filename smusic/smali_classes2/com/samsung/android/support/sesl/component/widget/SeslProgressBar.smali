.class public Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
.super Landroid/view/View;
.source "SeslProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;,
        Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;,
        Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;,
        Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;,
        Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;,
        Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SeekBarMode;
    }
.end annotation


# static fields
.field private static final IS_BASE_SDK_VERSION:Z

.field private static final MAX_LEVEL:I = 0x2710

.field public static final MODE_DUAL_COLOR:I = 0x2

.field public static final MODE_SPLIT:I = 0x4

.field public static final MODE_STANDARD:I = 0x0

.field public static final MODE_VERTICAL:I = 0x3

.field public static final MODE_WARNING:I = 0x1

.field private static final PROGRESS_ANIM_DURATION:I = 0x50

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityEventSender:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;

.field private mAggregatedIsVisible:Z

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field protected mCurrentMode:I

.field protected mDensity:F

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field private mMin:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;

.field mSampleWidth:I

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J

.field private mVisualProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    .line 214
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 317
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 318
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 325
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 243
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSampleWidth:I

    .line 257
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMirrorForRtl:Z

    .line 261
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 301
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentMode:I

    .line 2245
    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;

    const-string/jumbo v7, "visual_progress"

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    .line 327
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mUiThreadId:J

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->initProgressBar()V

    .line 330
    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 333
    .local v0, "a":Landroid/content/res/TypedArray;
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mNoInvalidate:Z

    .line 335
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progressDrawable:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 337
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 341
    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 342
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_0
    :goto_0
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_indeterminateDuration:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mDuration:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mDuration:I

    .line 350
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_minWidth:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMinWidth:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMinWidth:I

    .line 351
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_maxWidth:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxWidth:I

    .line 352
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_minHeight:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMinHeight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMinHeight:I

    .line 353
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_maxHeight:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxHeight:I

    .line 355
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_indeterminateBehavior:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mBehavior:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mBehavior:I

    .line 357
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_interpolator:I

    const v7, 0x10a000b

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 360
    .local v3, "resID":I
    if-lez v3, :cond_1

    .line 361
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 364
    :cond_1
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_max:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setMax(I)V

    .line 366
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progress:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgress(I)V

    .line 368
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_secondaryProgress:I

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setSecondaryProgress(I)V

    .line 371
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_indeterminateDrawable:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 373
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 374
    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 375
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 381
    :cond_2
    :goto_1
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_indeterminateOnly:I

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    .line 384
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mNoInvalidate:Z

    .line 386
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-nez v6, :cond_3

    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_indeterminate:I

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setIndeterminate(Z)V

    .line 389
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_mirrorForRtl:I

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMirrorForRtl:Z

    .line 392
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progressTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 393
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v4, :cond_5

    .line 394
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 396
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progressTintMode:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 398
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 401
    :cond_6
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progressTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 402
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v4, :cond_7

    .line 403
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 405
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progressTint:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 407
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 410
    :cond_8
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 411
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v4, :cond_9

    .line 412
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 414
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progressBackgroundTintMode:I

    .line 415
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 414
    invoke-static {v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 416
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 419
    :cond_a
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 420
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v4, :cond_b

    .line 421
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 423
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 425
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 428
    :cond_c
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 429
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v4, :cond_d

    .line 430
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 432
    :cond_d
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_secondaryProgressTintMode:I

    .line 433
    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 432
    invoke-static {v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 434
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 437
    :cond_e
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 438
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v4, :cond_f

    .line 439
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 441
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 443
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 446
    :cond_10
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 447
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v4, :cond_11

    .line 448
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 450
    :cond_11
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 452
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 455
    :cond_12
    sget v4, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_indeterminateTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 456
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v4, :cond_13

    .line 457
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 459
    :cond_13
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslProgressBar_android_indeterminateTint:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 461
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 464
    :cond_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyProgressTints()V

    .line 467
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 470
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_15

    .line 471
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setImportantForAccessibility(I)V

    .line 474
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mDensity:F

    .line 475
    return-void

    .line 344
    .end local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resID":I
    :cond_16
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 377
    .restart local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "resID":I
    :cond_17
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method private static StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 1
    .param p0, "sd"    # Landroid/graphics/drawable/StateListDrawable;

    .prologue
    .line 2220
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 2221
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    .line 2223
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p1, "count"    # I

    .prologue
    .line 2227
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 2228
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2230
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private StateListDrawable_getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 1
    .param p1, "sd"    # Landroid/graphics/drawable/StateListDrawable;
    .param p2, "count"    # I

    .prologue
    .line 2234
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_0

    .line 2235
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslStateListDrawableReflector;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v0

    .line 2237
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;IIZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 207
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
    .param p1, "x1"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setVisualProgress(IF)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;

    .prologue
    .line 207
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mVisualProgress:F

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;
    .param p1, "x1"    # F

    .prologue
    .line 207
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mVisualProgress:F

    return p1
.end method

.method private applyIndeterminateTint()V
    .locals 3

    .prologue
    .line 801
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_3

    .line 802
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 803
    .local v0, "tintInfo":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 806
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 810
    :cond_1
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 811
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 816
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 817
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 821
    .end local v0    # "tintInfo":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;
    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 3

    .prologue
    .line 925
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_3

    .line 927
    :cond_0
    sget v1, Lcom/samsung/android/support/sesl/R$id;->progress:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 928
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 929
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 932
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 933
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 938
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 939
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 943
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 3

    .prologue
    .line 950
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_3

    .line 952
    :cond_0
    sget v1, Lcom/samsung/android/support/sesl/R$id;->background:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 953
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 954
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    .line 955
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 957
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    .line 958
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 963
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 968
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    .line 914
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    .line 915
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    .line 916
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applySecondaryProgressTint()V

    .line 918
    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_3

    .line 977
    :cond_0
    sget v1, Lcom/samsung/android/support/sesl/R$id;->secondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 978
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 979
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 983
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 988
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 989
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 993
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZZ)V
    .locals 15
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .param p5, "animate"    # Z

    .prologue
    .line 1370
    monitor-enter p0

    :try_start_0
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    if-lez v12, :cond_4

    move/from16 v0, p2

    int-to-float v12, v0

    iget v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    int-to-float v13, v13

    div-float v11, v12, v13

    .line 1371
    .local v11, "scale":F
    :goto_0
    sget v12, Lcom/samsung/android/support/sesl/R$id;->progress:I

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    const/4 v6, 0x1

    .line 1374
    .local v6, "isPrimary":Z
    :goto_1
    const v12, 0x461c4000    # 10000.0f

    mul-float/2addr v12, v11

    float-to-int v7, v12

    .line 1375
    .local v7, "level":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1376
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_b

    .line 1377
    const/4 v10, 0x0

    .line 1379
    .local v10, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v12, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v12, :cond_6

    .line 1380
    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v12, v0

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1381
    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1382
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v12

    invoke-static {v10, v12}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1384
    :cond_0
    if-eqz v10, :cond_1

    move-object v3, v10

    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1417
    .end local v10    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    if-eqz v6, :cond_c

    if-eqz p5, :cond_c

    .line 1418
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->VISUAL_PROGRESS:Landroid/util/FloatProperty;

    const/4 v13, 0x1

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v11, v13, v14

    invoke-static {p0, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1419
    .local v2, "animator":Landroid/animation/ObjectAnimator;
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1420
    const-wide/16 v12, 0x50

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1421
    sget-object v12, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1422
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1427
    .end local v2    # "animator":Landroid/animation/ObjectAnimator;
    :goto_3
    if-eqz v6, :cond_3

    if-eqz p4, :cond_3

    .line 1428
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v11, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1430
    :cond_3
    monitor-exit p0

    return-void

    .line 1370
    .end local v6    # "isPrimary":Z
    .end local v7    # "level":I
    .end local v11    # "scale":F
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 1371
    .restart local v11    # "scale":F
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 1385
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "isPrimary":Z
    .restart local v7    # "level":I
    .restart local v10    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    :try_start_1
    instance-of v12, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v12, :cond_9

    .line 1386
    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    move-object v5, v0

    .line 1387
    .local v5, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v9

    .line 1389
    .local v9, "numStates":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v9, :cond_2

    .line 1390
    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    move-object v12, v0

    invoke-static {v12, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1392
    .local v8, "mStateDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 1394
    if-eqz v8, :cond_3

    .line 1398
    instance-of v12, v8, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v12, :cond_7

    .line 1399
    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    .line 1400
    .end local v8    # "mStateDrawable":Landroid/graphics/drawable/Drawable;
    move/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1401
    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->canResolveLayoutDirection()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1403
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v12

    .line 1402
    invoke-static {v10, v12}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1406
    :cond_7
    if-eqz v10, :cond_8

    move-object v12, v10

    :goto_5
    invoke-virtual {v12, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1389
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    move-object v12, v3

    .line 1406
    goto :goto_5

    .line 1409
    .end local v4    # "i":I
    .end local v5    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v9    # "numStates":I
    :cond_9
    if-eqz v10, :cond_a

    move-object v3, v10

    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    :cond_a
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1370
    .end local v6    # "isPrimary":Z
    .end local v7    # "level":I
    .end local v10    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "scale":F
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 1413
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "isPrimary":Z
    .restart local v7    # "level":I
    .restart local v11    # "scale":F
    :cond_b
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->invalidate()V

    goto :goto_2

    .line 1424
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    :cond_c
    move/from16 v0, p1

    invoke-direct {p0, v0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setVisualProgress(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1247
    const/4 v1, 0x0

    .line 1249
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1250
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1251
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1253
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1254
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1257
    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 1258
    move-object v1, v0

    .line 1262
    :cond_1
    return-object v1
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 622
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    .line 623
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMin:I

    .line 624
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    .line 625
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    .line 626
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    .line 627
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    .line 628
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mDuration:I

    .line 629
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mBehavior:I

    .line 630
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMinWidth:I

    .line 631
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxWidth:I

    .line 632
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMinHeight:I

    .line 633
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxHeight:I

    .line 634
    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 8
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 485
    instance-of v7, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_3

    move-object v4, p0

    .line 486
    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    .line 487
    .local v4, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 488
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 489
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 510
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    :goto_1
    return v5

    .line 488
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v4    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v5, v6

    .line 493
    goto :goto_1

    .line 496
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    instance-of v7, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_6

    move-object v3, p0

    .line 497
    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 498
    .local v3, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0

    .line 499
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 500
    invoke-static {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 501
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 499
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    move v5, v6

    .line 505
    goto :goto_1

    .line 510
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "in":Landroid/graphics/drawable/StateListDrawable;
    :cond_6
    instance-of v5, p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method

.method private declared-synchronized refreshProgress(IIZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "animate"    # Z

    .prologue
    .line 1487
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1488
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1501
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1490
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshProgressRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_2

    .line 1491
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshProgressRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;

    .line 1494
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->obtain(IIZZ)Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;

    move-result-object v6

    .line 1495
    .local v6, "rd":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshIsPosted:Z

    if-nez v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshProgressRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1487
    .end local v6    # "rd":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 2121
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;

    .line 2125
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2126
    return-void

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setVisualProgress(IF)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .prologue
    .line 1450
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mVisualProgress:F

    .line 1452
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1454
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 1455
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1456
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1465
    :cond_0
    if-eqz v0, :cond_1

    .line 1466
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .line 1467
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1472
    .end local v1    # "level":I
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->onVisualProgressChanged(IF)V

    .line 1473
    return-void

    .line 1469
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->invalidate()V

    goto :goto_0
.end method

.method private swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 672
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 673
    .local v0, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 675
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 676
    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 680
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 683
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 680
    goto :goto_0
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    .line 521
    instance-of v11, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v11, :cond_4

    move-object v7, p1

    .line 522
    check-cast v7, Landroid/graphics/drawable/LayerDrawable;

    .line 523
    .local v7, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 524
    .local v0, "N":I
    new-array v9, v0, [Landroid/graphics/drawable/Drawable;

    .line 526
    .local v9, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 527
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    .line 528
    .local v5, "id":I
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    sget v11, Lcom/samsung/android/support/sesl/R$id;->progress:I

    if-eq v5, v11, :cond_0

    sget v11, Lcom/samsung/android/support/sesl/R$id;->secondaryProgress:I

    if-ne v5, v11, :cond_1

    :cond_0
    const/4 v11, 0x1

    :goto_1
    invoke-direct {p0, v12, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v9, v4

    .line 526
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 528
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 532
    .end local v5    # "id":I
    :cond_2
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 533
    .local v1, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_7

    .line 534
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 536
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v11, v12, :cond_3

    .line 537
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 538
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 539
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 540
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 541
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 542
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 543
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 544
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 545
    invoke-virtual {v7, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v11

    invoke-virtual {v1, v4, v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 533
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 552
    .end local v0    # "N":I
    .end local v1    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v4    # "i":I
    .end local v7    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v9    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_4
    instance-of v11, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v11, :cond_8

    move-object v6, p1

    .line 553
    check-cast v6, Landroid/graphics/drawable/StateListDrawable;

    .line 554
    .local v6, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v8, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 555
    .local v8, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->StateListDrawable_getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0

    .line 556
    .restart local v0    # "N":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v0, :cond_6

    .line 557
    invoke-direct {p0, v6, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->StateListDrawable_getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v10

    .line 558
    .local v10, "stateset":[I
    invoke-static {v6, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->StateListDrawable_getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 559
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5

    .line 560
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 556
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v10    # "stateset":[I
    :cond_6
    move-object v1, v8

    .line 583
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v6    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v8    # "out":Landroid/graphics/drawable/StateListDrawable;
    :cond_7
    :goto_4
    return-object v1

    .line 567
    :cond_8
    instance-of v11, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_a

    .line 568
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 569
    .local v2, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 570
    .local v1, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v11, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 572
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSampleWidth:I

    if-gtz v11, :cond_9

    .line 573
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v11

    iput v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSampleWidth:I

    .line 576
    :cond_9
    if-eqz p2, :cond_7

    .line 577
    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-direct {v8, v1, v11, v12}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, v8

    goto :goto_4

    .end local v1    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_a
    move-object v1, p1

    .line 583
    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 592
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 593
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 594
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 595
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 596
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 598
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 599
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 600
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 601
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 598
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 603
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 604
    move-object p1, v4

    .line 606
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableState()V
    .locals 5

    .prologue
    .line 1958
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v3

    .line 1959
    .local v3, "state":[I
    const/4 v0, 0x0

    .line 1961
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1962
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1963
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1966
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 1967
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1968
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1971
    :cond_1
    if-eqz v0, :cond_2

    .line 1972
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->invalidate()V

    .line 1974
    :cond_2
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 1894
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1895
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1898
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1900
    .local v1, "saveCount":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1901
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingRight()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1902
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1907
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getDrawingTime()J

    move-result-wide v4

    .line 1908
    .local v4, "time":J
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mHasAnimation:Z

    if-eqz v3, :cond_0

    .line 1909
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1910
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    .line 1912
    .local v2, "scale":F
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mInDrawing:Z

    .line 1913
    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1915
    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mInDrawing:Z

    .line 1917
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->postInvalidateOnAnimation()V

    .line 1920
    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1921
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1923
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v3, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    .line 1924
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1925
    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1928
    .end local v1    # "saveCount":I
    .end local v4    # "time":J
    :cond_1
    return-void

    .line 1904
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "saveCount":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 1915
    .restart local v2    # "scale":F
    .restart local v4    # "time":J
    :catchall_0
    move-exception v3

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mInDrawing:Z

    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1978
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1980
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1984
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1985
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1987
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1953
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1954
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->updateDrawableState()V

    .line 1955
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2089
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 797
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1632
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 2211
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 2216
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getField_mPaddingRight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1601
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1618
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 1666
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1667
    monitor-exit p0

    return-void

    .line 1666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 1676
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    monitor-exit p0

    return-void

    .line 1676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1814
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 1815
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1816
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1817
    .local v0, "dirty":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v4

    add-int v1, v3, v4

    .line 1818
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingTop()I

    move-result v4

    add-int v2, v3, v4

    .line 1820
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->invalidate(IIII)V

    .line 1826
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 1823
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1299
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1300
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1302
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2051
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2052
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 2053
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->startAnimation()V

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2056
    monitor-enter p0

    .line 2057
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2058
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 2059
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;

    .line 2060
    .local v8, "rd":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    iget v1, v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->id:I

    iget v2, v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->progress:I

    iget-boolean v3, v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->fromUser:Z

    const/4 v4, 0x1

    iget-boolean v5, v8, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->animate:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    .line 2061
    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;->recycle()V

    .line 2058
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2063
    .end local v8    # "rd":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshData;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2064
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2066
    .end local v6    # "count":I
    .end local v7    # "i":I
    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAttached:Z

    .line 2067
    return-void

    .line 2064
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2071
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 2072
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->stopAnimation()V

    .line 2074
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshProgressRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 2075
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshProgressRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2076
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mRefreshIsPosted:Z

    .line 2078
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    .line 2079
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAccessibilityEventSender:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2083
    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2084
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAttached:Z

    .line 2085
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1885
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1887
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1888
    monitor-exit p0

    return-void

    .line 1885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2095
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2096
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2097
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2098
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 2103
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2105
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->isIndeterminate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2106
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2107
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getProgress()I

    move-result v4

    int-to-float v4, v4

    .line 2106
    invoke-static {v1, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 2108
    .local v0, "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 2110
    .end local v0    # "rangeInfo":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :cond_0
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1932
    monitor-enter p0

    const/4 v2, 0x0

    .line 1933
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1935
    .local v1, "dh":I
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1936
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1937
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMinWidth:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1938
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMinHeight:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1941
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->updateDrawableState()V

    .line 1943
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1944
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 1946
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->resolveSizeAndState(III)I

    move-result v4

    .line 1947
    .local v4, "measuredWidth":I
    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->resolveSizeAndState(III)I

    move-result v3

    .line 1948
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    monitor-exit p0

    return-void

    .line 1932
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    const/4 v2, 0x0

    .line 1433
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1434
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->scheduleAccessibilityEventSender()V

    .line 1438
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    if-le v0, v1, :cond_1

    if-nez p2, :cond_1

    .line 1439
    sget v0, Lcom/samsung/android/support/sesl/R$id;->secondaryProgress:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->refreshProgress(IIZZ)V

    .line 1441
    :cond_1
    return-void
.end method

.method onResolveDrawables(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1308
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1311
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1312
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1314
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1315
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1317
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2042
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;

    .line 2043
    .local v0, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2045
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgress(I)V

    .line 2046
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setSecondaryProgress(I)V

    .line 2047
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 2031
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2032
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2034
    .local v0, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;->progress:I

    .line 2035
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$SavedState;->secondaryProgress:I

    .line 2037
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1830
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->updateDrawableBounds(II)V

    .line 1831
    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2199
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 2200
    const/4 v1, 0x0

    .line 2202
    .local v1, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 2203
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    sget v2, Lcom/samsung/android/support/sesl/R$id;->progress:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2205
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 2207
    .end local v1    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 1792
    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    .line 1794
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_1

    .line 1795
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAggregatedIsVisible:Z

    .line 1797
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1799
    if-eqz p1, :cond_2

    .line 1800
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->startAnimation()V

    .line 1806
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1807
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1810
    :cond_1
    return-void

    .line 1802
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->stopAnimation()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1778
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1780
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1782
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 1783
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->stopAnimation()V

    .line 1788
    :cond_1
    :goto_0
    return-void

    .line 1785
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method onVisualProgressChanged(IF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "progress"    # F

    .prologue
    .line 1483
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 1321
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 1322
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1324
    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 658
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    .line 660
    if-eqz p1, :cond_2

    .line 662
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 665
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 706
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 707
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 709
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 712
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 714
    if-eqz p1, :cond_2

    .line 715
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 716
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 717
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 720
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 723
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    .line 724
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 725
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->postInvalidate()V

    .line 728
    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 835
    if-eqz p1, :cond_0

    .line 836
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 839
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 840
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 746
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 750
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 752
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 753
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 777
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 781
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 783
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyIndeterminateTint()V

    .line 784
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I
        .annotation build Landroid/support/annotation/InterpolatorRes;
        .end annotation
    .end param

    .prologue
    .line 1738
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1739
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1749
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 4
    .param p1, "max"    # I

    .prologue
    .line 1645
    monitor-enter p0

    if-gez p1, :cond_0

    .line 1646
    const/4 p1, 0x0

    .line 1648
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 1649
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    .line 1650
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->postInvalidate()V

    .line 1652
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 1653
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    .line 1655
    :cond_1
    sget v0, Lcom/samsung/android/support/sesl/R$id;->progress:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    :cond_2
    monitor-exit p0

    return-void

    .line 1645
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMin(I)V
    .locals 0
    .param p1, "min"    # I

    .prologue
    .line 2165
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMin:I

    .line 2166
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 2174
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentMode:I

    .line 2176
    packed-switch p1, :pswitch_data_0

    .line 2192
    :cond_0
    :goto_0
    return-void

    .line 2178
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/sesl/R$drawable;->sesl_scrubber_progress_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2180
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2181
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2185
    .end local v0    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/sesl/R$drawable;->sesl_split_seekbar_background_progress:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2187
    .restart local v0    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2188
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2176
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1519
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    monitor-exit p0

    return-void

    .line 1519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 1534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressInternal(IZZ)Z

    .line 1535
    return-void
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1098
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1101
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1104
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    .line 1106
    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1133
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1136
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1138
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1139
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyProgressBackgroundTint()V

    .line 1141
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 863
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    .line 864
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 866
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 869
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 871
    if-eqz p1, :cond_3

    .line 872
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 873
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/sesl/core/graphics/drawable/SeslDrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 874
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 879
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mCurrentMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 880
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    .line 881
    .local v7, "drawableWidth":I
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxWidth:I

    if-ge v0, v7, :cond_2

    .line 882
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxWidth:I

    .line 883
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->requestLayout()V

    .line 893
    .end local v7    # "drawableWidth":I
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyProgressTints()V

    .line 896
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_4

    .line 897
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 898
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->postInvalidate()V

    .line 901
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->updateDrawableBounds(II)V

    .line 902
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->updateDrawableState()V

    .line 904
    sget v1, Lcom/samsung/android/support/sesl/R$id;->progress:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    .line 905
    sget v1, Lcom/samsung/android/support/sesl/R$id;->secondaryProgress:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->doRefreshProgress(IIZZZ)V

    .line 907
    :cond_5
    return-void

    .line 886
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    .line 887
    .local v6, "drawableHeight":I
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxHeight:I

    if-ge v0, v6, :cond_2

    .line 888
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMaxHeight:I

    .line 889
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->requestLayout()V

    goto :goto_0
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1277
    if-eqz p1, :cond_0

    .line 1278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1281
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1282
    return-void
.end method

.method declared-synchronized setProgressInternal(IZZ)Z
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .param p3, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1538
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1552
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1543
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMin:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/sesl/component/util/SeslMathUtils;->constrain(III)I

    move-result p1

    .line 1545
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    if-eq p1, v1, :cond_0

    .line 1550
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    .line 1551
    sget v0, Lcom/samsung/android/support/sesl/R$id;->progress:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1552
    const/4 v0, 0x1

    goto :goto_0

    .line 1538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1017
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 1020
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 1022
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1023
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    .line 1025
    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1052
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1055
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 1057
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1058
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applyPrimaryProgressTint()V

    .line 1060
    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 4
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 1570
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1586
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1574
    :cond_1
    if-gez p1, :cond_2

    .line 1575
    const/4 p1, 0x0

    .line 1578
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 1579
    iget p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMax:I

    .line 1582
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 1583
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    .line 1584
    sget v0, Lcom/samsung/android/support/sesl/R$id;->secondaryProgress:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mSecondaryProgress:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1176
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 1178
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1179
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1182
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applySecondaryProgressTint()V

    .line 1184
    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1213
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1216
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressTintInfo:Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1218
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1219
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->applySecondaryProgressTint()V

    .line 1221
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1762
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1763
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1765
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1767
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1768
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->stopAnimation()V

    .line 1774
    :cond_1
    :goto_0
    return-void

    .line 1770
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1683
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->IS_BASE_SDK_VERSION:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_2

    .line 1688
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mHasAnimation:Z

    .line 1715
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->postInvalidate()V

    goto :goto_0

    .line 1691
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mHasAnimation:Z

    .line 1693
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_3

    .line 1694
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1697
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_4

    .line 1698
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 1703
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_5

    .line 1704
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1709
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1710
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1711
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1712
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1713
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1

    .line 1700
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_2

    .line 1706
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_3
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1722
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mHasAnimation:Z

    .line 1723
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1725
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1727
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->postInvalidate()V

    .line 1728
    return-void
.end method

.method protected updateDrawableBounds(II)V
    .locals 18
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1839
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingLeft()I

    move-result v14

    add-int/2addr v13, v14

    sub-int p1, p1, v13

    .line 1840
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    sub-int p2, p2, v13

    .line 1842
    move/from16 v9, p1

    .line 1843
    .local v9, "right":I
    move/from16 v2, p2

    .line 1844
    .local v2, "bottom":I
    const/4 v11, 0x0

    .line 1845
    .local v11, "top":I
    const/4 v8, 0x0

    .line 1847
    .local v8, "left":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_2

    .line 1849
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mOnlyIndeterminate:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v13, v13, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v13, :cond_0

    .line 1852
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 1853
    .local v7, "intrinsicWidth":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 1854
    .local v6, "intrinsicHeight":I
    int-to-float v13, v7

    int-to-float v14, v6

    div-float v5, v13, v14

    .line 1855
    .local v5, "intrinsicAspect":F
    move/from16 v0, p1

    int-to-float v13, v0

    move/from16 v0, p2

    int-to-float v14, v0

    div-float v3, v13, v14

    .line 1856
    .local v3, "boundAspect":F
    sub-float v13, v5, v3

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v14, v13

    const-wide v16, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v13, v14, v16

    if-gez v13, :cond_0

    .line 1857
    cmpl-float v13, v3, v5

    if-lez v13, :cond_4

    .line 1859
    move/from16 v0, p2

    int-to-float v13, v0

    mul-float/2addr v13, v5

    float-to-int v12, v13

    .line 1860
    .local v12, "width":I
    sub-int v13, p1, v12

    div-int/lit8 v8, v13, 0x2

    .line 1861
    add-int v9, v8, v12

    .line 1870
    .end local v3    # "boundAspect":F
    .end local v5    # "intrinsicAspect":F
    .end local v6    # "intrinsicHeight":I
    .end local v7    # "intrinsicWidth":I
    .end local v12    # "width":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mMirrorForRtl:Z

    if-eqz v13, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1871
    move v10, v8

    .line 1872
    .local v10, "tempLeft":I
    sub-int v8, p1, v9

    .line 1873
    sub-int v9, p1, v10

    .line 1875
    .end local v10    # "tempLeft":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v8, v11, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1878
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    .line 1879
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1881
    :cond_3
    return-void

    .line 1864
    .restart local v3    # "boundAspect":F
    .restart local v5    # "intrinsicAspect":F
    .restart local v6    # "intrinsicHeight":I
    .restart local v7    # "intrinsicWidth":I
    :cond_4
    move/from16 v0, p1

    int-to-float v13, v0

    const/high16 v14, 0x3f800000    # 1.0f

    div-float/2addr v14, v5

    mul-float/2addr v13, v14

    float-to-int v4, v13

    .line 1865
    .local v4, "height":I
    sub-int v13, p2, v4

    div-int/lit8 v11, v13, 0x2

    .line 1866
    add-int v2, v11, v4

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 1294
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1293
    :goto_0
    return v0

    .line 1294
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
