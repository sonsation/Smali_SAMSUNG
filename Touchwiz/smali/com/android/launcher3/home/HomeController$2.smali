.class Lcom/android/launcher3/home/HomeController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->onStageExitByTray()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private canceled:Z

.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeController$2;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->isTouching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeController$2;->canceled:Z

    .line 917
    return-void

    .line 916
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 920
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/SwipeAffordance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/SwipeAffordance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/SwipeAffordance;->appsVisitCountUp()V

    .line 923
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController$2;->canceled:Z

    if-eqz v0, :cond_1

    .line 924
    const-string v0, "Launcher.HomeController"

    const-string v1, "Home onStageExitByTray canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    if-nez v0, :cond_2

    .line 929
    const-string v0, "Launcher.HomeController"

    const-string v1, "Home onDestroy !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 935
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 936
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/SwipeAffordance;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/SwipeAffordance;->startCancelAnim(Z)V

    .line 938
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 939
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$700(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 941
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$2;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    goto :goto_0
.end method
