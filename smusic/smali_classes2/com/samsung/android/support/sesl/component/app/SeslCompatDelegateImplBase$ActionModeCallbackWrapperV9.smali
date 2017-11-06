.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;
.super Ljava/lang/Object;
.source "SeslCompatDelegateImplBase.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeCallbackWrapperV9"
.end annotation


# instance fields
.field private mWrapped:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;
    .param p2, "wrapped"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    .prologue
    .line 2367
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2368
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->mWrapped:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    .line 2369
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2383
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->mWrapped:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onActionItemClicked(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->mWrapped:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onCreateActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->mWrapped:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onDestroyActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    .line 2389
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2390
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2393
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    if-eqz v0, :cond_1

    .line 2394
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->endOnGoingFadeAnimation()V

    .line 2395
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 2396
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 2411
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    if-eqz v0, :cond_2

    .line 2412
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mSeslCompatCallback:Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;->onSupportActionModeFinished(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V

    .line 2414
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionMode:Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    .line 2415
    return-void
.end method

.method public onPrepareActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$ActionModeCallbackWrapperV9;->mWrapped:Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;->onPrepareActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
