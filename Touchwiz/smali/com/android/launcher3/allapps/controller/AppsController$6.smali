.class Lcom/android/launcher3/allapps/controller/AppsController$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->onStageExitByTray()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private canceled:Z

.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$700(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$700(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->isTouching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->canceled:Z

    .line 836
    return-void

    .line 835
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->canceled:Z

    if-eqz v0, :cond_0

    .line 840
    const-string v0, "Launcher.AppsController"

    const-string v1, "Apps onStageExitByTray canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$800(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsContainer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 845
    const-string v0, "Launcher.AppsController"

    const-string v1, "Apps onDestroyActivity !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$900(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsSearch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsSearch;->stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 851
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    .line 852
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1100(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 853
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$6;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
