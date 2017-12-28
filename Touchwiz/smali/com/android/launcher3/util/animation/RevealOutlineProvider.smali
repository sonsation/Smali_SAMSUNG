.class public Lcom/android/launcher3/util/animation/RevealOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "RevealOutlineProvider.java"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentRadius:I

.field private final mOval:Landroid/graphics/Rect;

.field private mRadius0:F

.field private mRadius1:F


# direct methods
.method public constructor <init>(IIFF)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "r0"    # F
    .param p4, "r1"    # F

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterX:I

    .line 42
    iput p2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterY:I

    .line 43
    iput p3, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mRadius0:F

    .line 44
    iput p4, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mRadius1:F

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    .line 47
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 61
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mRadius0:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mRadius1:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    .line 52
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterX:I

    iget v2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterY:I

    iget v2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterX:I

    iget v2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mOval:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCenterY:I

    iget v2, p0, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->mCurrentRadius:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 56
    return-void
.end method
