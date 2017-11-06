.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;
.super Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;
.source "SeslCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->onDestroyActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    .prologue
    .line 2396
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 2399
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setVisibility(I)V

    .line 2400
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 2401
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2405
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->removeAllViews()V

    .line 2406
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 2407
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 2408
    return-void

    .line 2402
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;->this$1:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_0
.end method
