.class Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;
.super Landroid/content/BroadcastReceiver;
.source "TimerCountingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/TimerCountingMenu;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string v3, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "camera.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$000(Lcom/sec/android/app/camera/menu/TimerCountingMenu;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$102(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->access$202(Lcom/sec/android/app/camera/menu/TimerCountingMenu;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->hideMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v0

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelShutterTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/TimerCountingMenu$1;->this$0:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x322c7c4f -> :sswitch_0
        -0x215f7beb -> :sswitch_2
        -0x4b7ddb2 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
