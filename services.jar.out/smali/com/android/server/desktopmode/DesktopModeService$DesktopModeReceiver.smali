.class Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 374
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive(), action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    const-string/jumbo v4, "android.intent.action.KNOXDESKTOP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    const-string/jumbo v4, "com.android.server.desktopmode.extra.DESKTOP_MODE_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 393
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v5, "1st_promo"

    invoke-static {v4, v5, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap12(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    .line 394
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap9(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 395
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v5, "hdmi"

    invoke-static {v4, v5, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap13(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V

    .line 382
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v5, "hdmi"

    invoke-static {v4, v5, v8}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap13(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V

    .line 387
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto :goto_0

    .line 398
    :cond_2
    const-string/jumbo v4, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 399
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v2

    .line 401
    .local v2, "freeMemory":J
    const-wide/32 v4, 0x19000000

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 402
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v4

    .line 403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Low memory warning: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/32 v6, 0x100000

    div-long v6, v2, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "MB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_3
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v5

    .line 405
    sget v6, Lcom/samsung/android/framework/res/R$string;->dex_toast_low_memory_warning:I

    .line 404
    const/16 v7, 0x67

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 408
    .end local v2    # "freeMemory":J
    :cond_4
    const-string/jumbo v4, "com.android.server.desktopmode.action.NOTIFICATION_PRESSED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/StatusBarManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 410
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "settingsIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 413
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/samsung/android/framework/res/R$string;->dex_hun_hdmi_settings:I

    .line 414
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 413
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
