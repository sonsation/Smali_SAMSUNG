.class public Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;
.super Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;
.source "PillWidthRevealOutlineProvider.java"


# instance fields
.field private final mStartLeft:I

.field private final mStartRight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;II)V
    .locals 1
    .param p1, "pillRect"    # Landroid/graphics/Rect;
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0, v0, p1}, Lcom/android/launcher3/util/animation/PillRevealOutlineProvider;-><init>(IILandroid/graphics/Rect;)V

    .line 31
    iget-object v0, p0, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 32
    iput p2, p0, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->mStartLeft:I

    .line 33
    iput p3, p0, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->mStartRight:I

    .line 34
    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 5
    .param p1, "progress"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float v2, v4, p1

    iget v3, p0, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->mStartLeft:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 39
    iget-object v0, p0, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->mOutline:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->mPillRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float v2, v4, p1

    iget v3, p0, Lcom/android/launcher3/util/animation/PillWidthRevealOutlineProvider;->mStartRight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 40
    return-void
.end method
