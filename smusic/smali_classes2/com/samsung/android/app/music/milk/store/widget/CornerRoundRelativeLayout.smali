.class public Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CornerRoundRelativeLayout.java"


# static fields
.field public static final DEFAULT_RADIUS:F = 6.0f

.field private static final TAG:Ljava/lang/String;

.field public static mRadius:F


# instance fields
.field private isSupportedClipPath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 51
    if-eqz p2, :cond_1

    .line 52
    sget-object v2, Lcom/samsung/android/app/music/R$styleable;->MilkCornerRoundRelativeLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 56
    .local v1, "radius":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 57
    sput v1, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->mRadius:F

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "radius":F
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->isSupportedClipPath:Z

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 65
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 67
    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 76
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->isSupportedClipPath:Z

    if-eqz v3, :cond_0

    .line 77
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 78
    .local v0, "clipPath":Landroid/graphics/Path;
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    .local v2, "rect":Landroid/graphics/RectF;
    sget v3, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->mRadius:F

    sget v4, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->mRadius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 82
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "clipPath":Landroid/graphics/Path;
    .end local v2    # "rect":Landroid/graphics/RectF;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    return-void

    .line 83
    .restart local v0    # "clipPath":Landroid/graphics/Path;
    .restart local v2    # "rect":Landroid/graphics/RectF;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->TAG:Ljava/lang/String;

    const-string v4, "onDraw : clipPath not supported"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/CornerRoundRelativeLayout;->isSupportedClipPath:Z

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method
