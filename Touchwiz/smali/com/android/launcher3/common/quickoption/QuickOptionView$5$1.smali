.class Lcom/android/launcher3/common/quickoption/QuickOptionView$5$1;
.super Ljava/lang/Object;
.source "QuickOptionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$5;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionView$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/common/quickoption/QuickOptionView$5;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$5;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$600(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$5;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$5;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$5;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$600(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getItemRemoveAnimation()Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->animate()V

    .line 467
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5$1;->this$1:Lcom/android/launcher3/common/quickoption/QuickOptionView$5;

    iget-object v0, v0, Lcom/android/launcher3/common/quickoption/QuickOptionView$5;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->access$600(Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->clearItemRemoveAnimation()V

    .line 469
    :cond_1
    return-void
.end method
