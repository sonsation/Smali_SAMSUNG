.class Lcom/android/launcher3/allapps/controller/AppsController$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->onStageEnterByTray()Landroid/animation/Animator;
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
    .line 862
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$700(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$700(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->isTouching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->canceled:Z

    .line 867
    return-void

    .line 866
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->canceled:Z

    if-eqz v0, :cond_0

    .line 871
    const-string v0, "Launcher.AppsController"

    const-string v1, "Apps onStageEnterByTray canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$800(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsContainer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 876
    const-string v0, "Launcher.AppsController"

    const-string v1, "Apps onDestroyActivity !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V

    .line 881
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 882
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->setMoveTarget(Landroid/view/View;)V

    .line 884
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$900(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsSearch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsSearch;->setSearchBarVisibility(I)V

    .line 885
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 886
    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 885
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$000(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Z)V

    .line 889
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/4 v1, 0x2

    .line 890
    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 891
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsController$7;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0
.end method
