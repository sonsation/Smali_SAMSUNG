.class Lcom/android/launcher3/common/base/view/PagedView$3;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/PagedView;

.field final synthetic val$dragViewIndex:I

.field final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/PagedView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/common/base/view/PagedView;

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    iput p2, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$dragViewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 1739
    iget-object v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    iget v11, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$pageUnderPointIndex:I

    invoke-virtual {v10, v11}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(I)V

    .line 1744
    iget v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$dragViewIndex:I

    iget v11, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$pageUnderPointIndex:I

    if-ge v10, v11, :cond_1

    move v5, v8

    .line 1745
    .local v5, "shiftDelta":I
    :goto_0
    iget v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$dragViewIndex:I

    iget v11, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$pageUnderPointIndex:I

    if-ge v10, v11, :cond_2

    iget v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$dragViewIndex:I

    add-int/lit8 v2, v10, 0x1

    .line 1747
    .local v2, "lowerIndex":I
    :goto_1
    iget v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$dragViewIndex:I

    iget v11, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$pageUnderPointIndex:I

    if-le v10, v11, :cond_3

    iget v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$dragViewIndex:I

    add-int/lit8 v6, v10, -0x1

    .line 1749
    .local v6, "upperIndex":I
    :goto_2
    move v1, v2

    .local v1, "i":I
    :goto_3
    if-gt v1, v6, :cond_4

    .line 1750
    iget-object v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v10, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1754
    .local v7, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v11, v1}, Lcom/android/launcher3/common/base/view/PagedView;->getChildOffset(I)I

    move-result v11

    add-int v4, v10, v11

    .line 1755
    .local v4, "oldX":I
    iget-object v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/view/PagedView;->getViewportOffsetX()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    add-int v12, v1, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher3/common/base/view/PagedView;->getChildOffset(I)I

    move-result v11

    add-int v3, v10, v11

    .line 1759
    .local v3, "newX":I
    const/16 v10, 0x64

    invoke-virtual {v7, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1760
    .local v0, "anim":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_0

    .line 1761
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1764
    :cond_0
    sub-int v10, v4, v3

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1765
    new-instance v0, Landroid/animation/AnimatorSet;

    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1766
    .restart local v0    # "anim":Landroid/animation/AnimatorSet;
    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1767
    new-array v10, v9, [Landroid/animation/Animator;

    const-string v11, "translationX"

    new-array v12, v9, [F

    const/4 v13, 0x0

    aput v13, v12, v14

    .line 1768
    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v10, v14

    .line 1767
    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1769
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1770
    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1749
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    .end local v1    # "i":I
    .end local v2    # "lowerIndex":I
    .end local v3    # "newX":I
    .end local v4    # "oldX":I
    .end local v5    # "shiftDelta":I
    .end local v6    # "upperIndex":I
    .end local v7    # "v":Landroid/view/View;
    :cond_1
    move v5, v9

    .line 1744
    goto :goto_0

    .line 1745
    .restart local v5    # "shiftDelta":I
    :cond_2
    iget v2, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$pageUnderPointIndex:I

    goto :goto_1

    .line 1747
    .restart local v2    # "lowerIndex":I
    :cond_3
    iget v6, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$pageUnderPointIndex:I

    goto :goto_2

    .line 1773
    .restart local v1    # "i":I
    .restart local v6    # "upperIndex":I
    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    iget-object v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    iget-object v10, v10, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/common/base/view/PagedView;->removeView(Landroid/view/View;)V

    .line 1774
    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    iget-object v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    iget-object v10, v10, Lcom/android/launcher3/common/base/view/PagedView;->mDragView:Landroid/view/View;

    iget v11, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/common/base/view/PagedView;->addView(Landroid/view/View;I)V

    .line 1775
    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-static {v9, v8}, Lcom/android/launcher3/common/base/view/PagedView;->access$102(Lcom/android/launcher3/common/base/view/PagedView;I)I

    .line 1776
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-static {v8}, Lcom/android/launcher3/common/base/view/PagedView;->access$200(Lcom/android/launcher3/common/base/view/PagedView;)Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1777
    iget-object v8, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-static {v8}, Lcom/android/launcher3/common/base/view/PagedView;->access$200(Lcom/android/launcher3/common/base/view/PagedView;)Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/PagedView;->getNextPage()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/view/PageIndicator;->setActiveMarker(I)V

    .line 1779
    :cond_5
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0901bb

    .line 1780
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/common/base/view/PagedView$3;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/view/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090172

    .line 1781
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1779
    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    return-void
.end method
