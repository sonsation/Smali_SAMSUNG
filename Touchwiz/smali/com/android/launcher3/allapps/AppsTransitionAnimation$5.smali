.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getScreenGridEnterExitAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$accessibilityEnabled:Z

.field final synthetic val$appsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field final synthetic val$appsPagedViewShrinkFactor:F

.field final synthetic val$appsPagedViewTranslationY:F

.field final synthetic val$appsScreenGridTopContainer:Landroid/view/View;

.field final synthetic val$appsScreengridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

.field final synthetic val$enter:Z

.field final synthetic val$pageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

.field final synthetic val$pageIndicatorTranslationY:F

.field final synthetic val$screengridAlphaValue:F

.field final synthetic val$searchBarAlphaValue:F

.field final synthetic val$searchBarContainerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/view/View;FZLcom/android/launcher3/allapps/AppsScreenGridPanel;FLandroid/view/View;Lcom/android/launcher3/allapps/view/AppsPagedView;FZFLcom/android/launcher3/common/view/PageIndicator;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$searchBarContainerView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$searchBarAlphaValue:F

    iput-boolean p4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$accessibilityEnabled:Z

    iput-object p5, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreengridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iput p6, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$screengridAlphaValue:F

    iput-object p7, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreenGridTopContainer:Landroid/view/View;

    iput-object p8, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iput p9, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedViewShrinkFactor:F

    iput-boolean p10, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$enter:Z

    iput p11, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedViewTranslationY:F

    iput-object p12, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$pageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iput p13, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$pageIndicatorTranslationY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 577
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$402(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 579
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$searchBarContainerView:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$searchBarAlphaValue:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 580
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$searchBarContainerView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$accessibilityEnabled:Z

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 581
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreengridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iget v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$screengridAlphaValue:F

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/AppsScreenGridPanel;->setAlpha(F)V

    .line 582
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreengridPanel:Lcom/android/launcher3/allapps/AppsScreenGridPanel;

    iget-boolean v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$accessibilityEnabled:Z

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 583
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreenGridTopContainer:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$screengridAlphaValue:F

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 584
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsScreenGridTopContainer:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$accessibilityEnabled:Z

    invoke-static {v3, v4}, Lcom/android/launcher3/allapps/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 587
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedViewShrinkFactor:F

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScaleX(F)V

    .line 588
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedViewShrinkFactor:F

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setScaleY(F)V

    .line 591
    iget-object v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-boolean v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$enter:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedViewTranslationY:F

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setTranslationY(F)V

    .line 593
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-static {v3}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$200(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v0

    .line 594
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 595
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$appsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 596
    .local v1, "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->requestLayout()V

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 591
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .end local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 599
    .restart local v0    # "childCount":I
    .restart local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$pageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v3, :cond_2

    .line 600
    iget-object v3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$pageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iget v4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$5;->val$pageIndicatorTranslationY:F

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    .line 602
    :cond_2
    return-void
.end method
