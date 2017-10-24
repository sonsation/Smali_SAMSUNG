.class public Lcom/android/systemui/stackdivider/DividerHandleView;
.super Landroid/view/View;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerHandleView$1;,
        Lcom/android/systemui/stackdivider/DividerHandleView$2;,
        Lcom/android/systemui/stackdivider/DividerHandleView$3;
    }
.end annotation


# static fields
.field private static final HEIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RADIUS_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/stackdivider/DividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mCircleDiameter:I

.field private mCurrentHeight:I

.field private mCurrentRadius:I

.field private mCurrentWidth:I

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:I

.field private mTouchHeight:I

.field private final mTouchRadius:I

.field private mTouchWidth:I

.field private mTouching:Z

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentRadius:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerHandleView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerHandleView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentRadius:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/stackdivider/DividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$1;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    .line 59
    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$2;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 58
    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    .line 84
    new-instance v0, Lcom/android/systemui/stackdivider/DividerHandleView$3;

    const-class v1, Ljava/lang/Integer;

    const-string/jumbo v2, "radius"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerHandleView$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 83
    sput-object v0, Lcom/android/systemui/stackdivider/DividerHandleView;->RADIUS_PROPERTY:Landroid/util/Property;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00f5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d031b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    .line 110
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 111
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchRadius:I

    .line 116
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentRadius:I

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchWidth:I

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchHeight:I

    .line 126
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    .line 104
    return-void
.end method

.method private animateToTarget(IIIZ)V
    .locals 9
    .param p1, "targetWidth"    # I
    .param p2, "targetHeight"    # I
    .param p3, "targetRadius"    # I
    .param p4, "touching"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 217
    sget-object v3, Lcom/android/systemui/stackdivider/DividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    new-array v4, v8, [I

    .line 218
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    aput v5, v4, v6

    aput p1, v4, v7

    .line 217
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 219
    .local v2, "widthAnimator":Landroid/animation/ObjectAnimator;
    sget-object v3, Lcom/android/systemui/stackdivider/DividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    new-array v4, v8, [I

    .line 220
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    aput v5, v4, v6

    aput p2, v4, v7

    .line 219
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 221
    .local v0, "heightAnimator":Landroid/animation/ObjectAnimator;
    sget-object v3, Lcom/android/systemui/stackdivider/DividerHandleView;->RADIUS_PROPERTY:Landroid/util/Property;

    new-array v4, v8, [I

    .line 222
    iget v5, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentRadius:I

    aput v5, v4, v6

    aput p3, v4, v7

    .line 221
    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 223
    .local v1, "radiusAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 224
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v6

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 225
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_0

    .line 226
    const-wide/16 v4, 0x96

    .line 225
    :goto_0
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 228
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz p4, :cond_1

    .line 229
    sget-object v3, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    .line 228
    :goto_1
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/systemui/stackdivider/DividerHandleView$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/stackdivider/DividerHandleView$5;-><init>(Lcom/android/systemui/stackdivider/DividerHandleView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 237
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 216
    return-void

    .line 227
    :cond_0
    const-wide/16 v4, 0xc8

    goto :goto_0

    .line 230
    :cond_1
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    .line 200
    .local v8, "left":I
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v10, v0, v1

    .line 201
    .local v10, "top":I
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    .line 203
    .local v9, "radius":I
    int-to-float v1, v8

    int-to-float v2, v10

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    add-int/2addr v0, v10

    int-to-float v4, v0

    .line 204
    int-to-float v5, v9

    int-to-float v6, v9

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 203
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 206
    int-to-float v1, v8

    int-to-float v2, v10

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    add-int/2addr v0, v8

    int-to-float v3, v0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    add-int/2addr v0, v10

    int-to-float v4, v0

    .line 207
    int-to-float v5, v9

    int-to-float v6, v9

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 206
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 198
    return-void
.end method

.method public setGuideViewMode(Z)V
    .locals 4
    .param p1, "drawGuideView"    # Z

    .prologue
    const/4 v3, 0x0

    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 267
    const v2, 0x7f0b0012

    .line 266
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    .line 263
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00f5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public setSnapViewMode(Z)V
    .locals 2
    .param p1, "isSnapMode"    # Z

    .prologue
    .line 242
    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchWidth:I

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchHeight:I

    .line 254
    :goto_0
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 255
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    .line 256
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCircleDiameter:I

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    .line 240
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d031b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchWidth:I

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchHeight:I

    goto :goto_0
.end method

.method public setTouching(ZZ)V
    .locals 3
    .param p1, "touching"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouching:Z

    if-ne p1, v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 135
    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 137
    :cond_1
    if-nez p2, :cond_3

    .line 140
    if-eqz p1, :cond_2

    .line 141
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 142
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    .line 143
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchRadius:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentRadius:I

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    .line 172
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouching:Z

    .line 129
    return-void

    .line 145
    :cond_2
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentWidth:I

    .line 146
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentHeight:I

    .line 147
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mCurrentRadius:I

    goto :goto_0

    .line 163
    :cond_3
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchWidth:I

    move v2, v0

    .line 164
    :goto_2
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchHeight:I

    move v1, v0

    .line 165
    :goto_3
    if-eqz p1, :cond_6

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mTouchRadius:I

    .line 163
    :goto_4
    invoke-direct {p0, v2, v1, v0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->animateToTarget(IIIZ)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mWidth:I

    move v2, v0

    goto :goto_2

    .line 164
    :cond_5
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mHeight:I

    move v1, v0

    goto :goto_3

    .line 165
    :cond_6
    iget v0, p0, Lcom/android/systemui/stackdivider/DividerHandleView;->mRadius:I

    goto :goto_4
.end method
