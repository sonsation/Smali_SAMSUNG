.class Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;
.super Ljava/lang/Object;
.source "TimerCountingMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateProgressWheelTime(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TimerCountingMenu"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isProgressWheelTimer()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TimerCountingMenu"

    const-string v1, "ProgressWheelTimer is canceled"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$102(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->hideMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->progressWheelTimerCompleted()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$2;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$300(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
