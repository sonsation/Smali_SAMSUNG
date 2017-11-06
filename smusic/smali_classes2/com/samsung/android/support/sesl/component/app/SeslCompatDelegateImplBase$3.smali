.class Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;
.super Ljava/lang/Object;
.source "SeslCompatDelegateImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1647
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1650
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1653
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->endOnGoingFadeAnimation()V

    .line 1655
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->shouldAnimateActionModeView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setAlpha(F)V

    .line 1657
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 1658
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mFadeAnim:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 1675
    :goto_0
    return-void

    .line 1672
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setAlpha(F)V

    .line 1673
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase$3;->this$0:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;->mActionModeView:Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionBarContextView;->setVisibility(I)V

    goto :goto_0
.end method
