.class final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenWatchingReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 338
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "MdnieScenarioControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "action  :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 343
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get19(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 344
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get19(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMdnieScenarioControlServiceEnable(Z)V

    .line 345
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get15(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get15(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set1(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    .line 347
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get20(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get19(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get19(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMdnieScenarioControlServiceEnable(Z)V

    .line 349
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get13(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 350
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 351
    :cond_3
    return-void

    .line 353
    :cond_4
    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 354
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get15(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get15(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 355
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set1(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    .line 356
    :cond_5
    const-string/jumbo v3, "MdnieScenarioControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isLockScreenOn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get12(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get12(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 358
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap4(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 359
    :cond_6
    return-void

    .line 361
    :cond_7
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 362
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap3(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 363
    return-void

    .line 365
    :cond_8
    const-string/jumbo v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 367
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get13(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 368
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v3, v3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v3, v6, v7, v8}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_9
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set1(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    .line 374
    return-void

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MdnieScenarioControlService"

    const-string/jumbo v6, "failed to onForegroundActivitiesChanged"

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_a
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 377
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get18(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 378
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get17(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/NotificationManager;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 379
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get17(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/NotificationManager;

    move-result-object v3

    const-string/jumbo v6, "dialog"

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v8, 0x3e7

    invoke-virtual {v3, v6, v8, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 380
    :cond_b
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap18(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    .line 382
    :cond_c
    return-void

    .line 384
    :cond_d
    const-string/jumbo v3, "NOTIFICATION_DISMISS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 385
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap0(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    .line 337
    :cond_e
    :goto_1
    return-void

    .line 387
    :cond_f
    const-string/jumbo v3, "NOTIFICATION_SETTINGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 388
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-wrap17(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_1

    .line 390
    :cond_10
    const-string/jumbo v3, "NOTIFICATION_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 391
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set6(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    goto :goto_1

    .line 393
    :cond_11
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string/jumbo v3, "ACTION_DETAIL_VIEW_STATE_IN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 394
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set3(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 397
    .local v4, "time":J
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 398
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get0(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    invoke-virtual {v3, v10, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    .line 400
    .end local v4    # "time":J
    :cond_12
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "ACTION_DETAIL_VIEW_STATE_OUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 401
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set3(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 404
    .restart local v4    # "time":J
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v6, 0xc

    invoke-virtual {v3, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 405
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get1(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    const/16 v8, 0xc

    invoke-virtual {v3, v8, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1

    .line 407
    .end local v4    # "time":J
    :cond_13
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "ACTION_MOVIE_PLAYER_STATE_IN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 410
    .restart local v4    # "time":J
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 411
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get4(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    invoke-virtual {v3, v11, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1

    .line 413
    .end local v4    # "time":J
    :cond_14
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 414
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set7(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    .line 415
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 417
    .restart local v4    # "time":J
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 418
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get5(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    const/16 v8, 0x8

    invoke-virtual {v3, v8, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1

    .line 420
    .end local v4    # "time":J
    :cond_15
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "ACTION_GAME_MODE_STATE_IN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 421
    const-string/jumbo v3, "mode"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "statusName":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 423
    .restart local v4    # "time":J
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set4(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    .line 425
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get10(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 426
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 427
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    const/16 v8, 0xd

    invoke-virtual {v3, v8, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1

    .line 428
    :cond_16
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get11(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 429
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v6, 0xe

    invoke-virtual {v3, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 430
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    const/16 v8, 0xe

    invoke-virtual {v3, v8, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1

    .line 431
    :cond_17
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get9(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 432
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 433
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    const/16 v8, 0xf

    invoke-virtual {v3, v8, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1

    .line 436
    .end local v2    # "statusName":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_18
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get16(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "ACTION_GAME_MODE_STATE_OUT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 437
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 438
    .restart local v4    # "time":J
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-set4(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z

    .line 440
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    .line 441
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get14(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    move-result-object v3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-get3(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    const/16 v8, 0x10

    invoke-virtual {v3, v8, v6, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1
.end method
