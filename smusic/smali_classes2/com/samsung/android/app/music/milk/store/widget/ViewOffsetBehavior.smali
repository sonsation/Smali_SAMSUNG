.class public Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# instance fields
.field protected mTempTopBottomOffset:I

.field private mViewOffsetHelper:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 17
    return-void
.end method

.method protected static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 63
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method protected static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 59
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method


# virtual methods
.method public getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 35
    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->onViewLayout()V

    .line 26
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    if-eqz v0, :cond_1

    .line 27
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->setTopAndBottomOffset(I)Z

    .line 29
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onTopOffsetChanged(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 56
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior<TV;>;"
    return-void
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;, "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    if-eqz v1, :cond_0

    .line 39
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->onTopOffsetChanged(I)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v0

    .line 44
    :goto_0
    return v0

    .line 43
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    goto :goto_0
.end method
