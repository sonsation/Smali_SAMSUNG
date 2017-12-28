.class Lcom/android/launcher3/home/HomeController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->onStageEnterByTray()Landroid/animation/Animator;
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
    .line 957
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 958
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeController$3;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/tray/TrayManager;->isTouching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeController$3;->canceled:Z

    .line 962
    return-void

    .line 961
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x1

    .line 965
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeController$3;->canceled:Z

    if-eqz v0, :cond_0

    .line 966
    const-string v0, "Launcher.HomeController"

    const-string v1, "Home onStageEnterByTray cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :goto_0
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    if-nez v0, :cond_1

    .line 971
    const-string v0, "Launcher.HomeController"

    const-string v1, "Home onDestroyActivity !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDragController()Lcom/android/launcher3/home/WorkspaceDragController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V

    .line 976
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$800(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->setMoveTarget(Landroid/view/View;)V

    .line 977
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    .line 979
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v2}, Lcom/android/launcher3/home/HomeController;->access$900(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    .line 980
    invoke-static {v2}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 979
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 982
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    .line 983
    invoke-virtual {v0, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 985
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    .line 987
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$1000(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/HomeController$State;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/launcher3/home/HomeController$State;->access$100(Lcom/android/launcher3/home/HomeController$State;I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    .line 989
    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$1100(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeController;->access$600(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 990
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$1200(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    .line 995
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$3;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$1300(Lcom/android/launcher3/home/HomeController;)V

    goto/16 :goto_0
.end method
