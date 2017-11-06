.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;
.source "SeslCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->startSupportActionModeFromWindow(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1714
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setAlpha(F)V

    .line 1715
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 1716
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 1717
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setVisibility(I)V

    .line 1705
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1707
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$4;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 1710
    :cond_0
    return-void
.end method
