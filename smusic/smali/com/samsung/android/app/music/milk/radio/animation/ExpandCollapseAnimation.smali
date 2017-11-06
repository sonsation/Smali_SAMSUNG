.class public Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;
.super Landroid/view/animation/Animation;
.source "ExpandCollapseAnimation.java"


# static fields
.field public static final COLLAPSE:I = 0x1

.field public static final EXPAND:I


# instance fields
.field private mEndHeight:I

.field private mInitialHeight:I

.field private mType:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "type"    # I

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;-><init>(Landroid/view/View;III)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "type"    # I
    .param p4, "initialHeight"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 66
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 67
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->setDuration(J)V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    .line 69
    iput p3, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mType:I

    .line 71
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mType:I

    if-nez v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    .line 75
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 81
    .local v1, "widthSpec":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    .local v0, "heightSpec":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 83
    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 85
    :cond_0
    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mEndHeight:I

    .line 89
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .end local v0    # "heightSpec":I
    .end local v1    # "widthSpec":I
    :goto_2
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    .line 79
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "widthSpec":I
    goto :goto_0

    .line 87
    .restart local v0    # "heightSpec":I
    :cond_2
    iput p4, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mEndHeight:I

    goto :goto_1

    .line 92
    .end local v0    # "heightSpec":I
    .end local v1    # "widthSpec":I
    :cond_3
    iput p4, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mInitialHeight:I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/View;IILjava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I
    .param p3, "type"    # I
    .param p4, "notUsed"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 36
    int-to-long v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->setDuration(J)V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    .line 38
    iput p3, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mType:I

    .line 40
    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mType:I

    if-nez v2, :cond_3

    .line 42
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    .line 44
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 50
    .local v1, "widthSpec":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .local v0, "heightSpec":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 52
    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 54
    :cond_0
    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mEndHeight:I

    .line 58
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 59
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .end local v0    # "heightSpec":I
    .end local v1    # "widthSpec":I
    :goto_2
    return-void

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1    # "widthSpec":I
    goto :goto_0

    .line 56
    .restart local v0    # "heightSpec":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mEndHeight:I

    goto :goto_1

    .line 61
    .end local v0    # "heightSpec":I
    .end local v1    # "widthSpec":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mInitialHeight:I

    goto :goto_2
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 99
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 101
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mType:I

    if-nez v0, :cond_1

    .line 102
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mEndHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 118
    :goto_1
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mEndHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 109
    :cond_1
    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mInitialHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mInitialHeight:I

    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mInitialHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/animation/ExpandCollapseAnimation;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_1
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
