.class Lcom/android/launcher3/home/HomeController$34;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeController;->onReceiveTrayEvent(Lcom/android/launcher3/common/tray/TrayManager$TrayEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeController;

.field final synthetic val$finalStageMode:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 3850
    iput-object p1, p0, Lcom/android/launcher3/home/HomeController$34;->this$0:Lcom/android/launcher3/home/HomeController;

    iput p2, p0, Lcom/android/launcher3/home/HomeController$34;->val$finalStageMode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 3853
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$34;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$2400(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3854
    iget-object v0, p0, Lcom/android/launcher3/home/HomeController$34;->this$0:Lcom/android/launcher3/home/HomeController;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeController;->access$2500(Lcom/android/launcher3/home/HomeController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/home/HomeController$34;->val$finalStageMode:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(I)V

    .line 3856
    :cond_0
    return-void
.end method
