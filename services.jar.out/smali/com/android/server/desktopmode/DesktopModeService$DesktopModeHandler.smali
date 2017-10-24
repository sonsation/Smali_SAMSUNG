.class final Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;
.super Landroid/os/Handler;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DesktopModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 422
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 421
    :goto_0
    return-void

    .line 424
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 425
    .local v2, "enabled":Z
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 426
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    .line 428
    :cond_0
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap7(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_0

    .line 432
    .end local v2    # "enabled":Z
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 433
    .local v0, "dialogType":I
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap16(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_0

    .line 437
    .end local v0    # "dialogType":I
    :pswitch_2
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 438
    .local v6, "resId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 439
    .local v1, "duration":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 440
    .local v4, "extraString":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v4, v9, v11

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 444
    .end local v1    # "duration":I
    .end local v4    # "extraString":Ljava/lang/String;
    .end local v6    # "resId":I
    :pswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 445
    .local v3, "enter":Z
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Starting loading screen... enter="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_1
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/LoadingScreenManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->showAll(Z)V

    goto :goto_0

    .line 450
    .end local v3    # "enter":Z
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7, v11}, Lcom/android/server/desktopmode/DesktopModeService;->-set3(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    .line 452
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_4

    .line 453
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Loading screen dismissed by timeout mIsDesktopMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 454
    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v9

    .line 453
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/LoadingScreenManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->dismissAll()V

    .line 461
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 463
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 464
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-class v8, Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/android/server/desktopmode/DesktopModeService;->setTouchScreenOn(ZLjava/lang/String;)V

    .line 465
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-class v8, Lcom/samsung/android/desktopmode/VirtualDeviceManager;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v8}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayOn(ZLjava/lang/String;)V

    .line 468
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_0

    .line 456
    :cond_4
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Stopping loading screen... mIsDesktopMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 457
    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v9

    .line 456
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 462
    :cond_5
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7, v11}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap1(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_2

    .line 472
    :pswitch_5
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 473
    .restart local v3    # "enter":Z
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 474
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7, v10}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap1(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 475
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/16 v9, 0x65

    invoke-virtual {v7, v9, v8}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 476
    .local v5, "message":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get4(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 478
    .end local v5    # "message":Landroid/os/Message;
    :cond_6
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v7, v10}, Lcom/android/server/desktopmode/DesktopModeService;->setDefaultDisplayPowerMode(I)V

    .line 479
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/LoadingScreenManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/desktopmode/LoadingScreenManager;->startAnimation()V

    goto/16 :goto_0

    .line 484
    .end local v3    # "enter":Z
    :pswitch_6
    iget-object v7, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap24(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
