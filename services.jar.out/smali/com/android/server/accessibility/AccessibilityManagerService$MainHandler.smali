.class final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_ANNOUNCE_NEW_USER_IF_NEEDED:I = 0x5

.field public static final MSG_CLEAR_ACCESSIBILITY_FOCUS:I = 0x9

.field public static final MSG_SEND_ACCESSIBILITY_EVENT_TO_INPUT_FILTER:I = 0x1

.field public static final MSG_SEND_CLEARED_STATE_TO_CLIENTS_FOR_USER:I = 0x3

.field public static final MSG_SEND_KEY_EVENT_TO_INPUT_FILTER:I = 0x8

.field public static final MSG_SEND_STATE_TO_CLIENTS:I = 0x2

.field public static final MSG_SHOW_ENABLED_TOUCH_EXPLORATION_DIALOG:I = 0x7

.field public static final MSG_UPDATE_INPUT_FILTER:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3300
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3301
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3300
    return-void
.end method

.method private announceNewUserIfNeeded()V
    .locals 9

    .prologue
    .line 3367
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get18(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3368
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap15(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 3369
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3370
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    .line 3371
    const-string/jumbo v6, "user"

    .line 3370
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 3372
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 3373
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 3372
    const v7, 0x104053c

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3375
    .local v1, "message":Ljava/lang/String;
    const/16 v4, 0x4000

    .line 3374
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 3376
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3377
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    invoke-virtual {v4, v0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :cond_0
    monitor-exit v5

    .line 3366
    return-void

    .line 3367
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .locals 5
    .param p1, "clientState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3393
    .local p2, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 3394
    .local v3, "userClientCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 3395
    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3397
    .local v0, "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_start_1
    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3394
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3398
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 3403
    .end local v0    # "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3391
    return-void

    .line 3402
    .end local v1    # "i":I
    .end local v3    # "userClientCount":I
    :catchall_0
    move-exception v4

    .line 3403
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3402
    throw v4
.end method

.method private sendStateToClientsForUser(II)V
    .locals 3
    .param p1, "clientState"    # I
    .param p2, "userId"    # I

    .prologue
    .line 3384
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get18(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3385
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap16(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v2

    .line 3387
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 3382
    return-void

    .line 3384
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3306
    iget v6, p1, Landroid/os/Message;->what:I

    .line 3307
    .local v6, "type":I
    packed-switch v6, :pswitch_data_0

    .line 3305
    :goto_0
    :pswitch_0
    return-void

    .line 3309
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 3310
    .local v3, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get18(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3311
    :try_start_0
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 3312
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v11

    .line 3315
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 3310
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 3319
    .end local v3    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    .line 3320
    .local v2, "event":Landroid/view/KeyEvent;
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 3321
    .local v4, "policyFlags":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get18(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3322
    :try_start_1
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 3323
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get17(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    invoke-virtual {v10, v2, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v11

    .line 3326
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    .line 3321
    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 3330
    .end local v2    # "event":Landroid/view/KeyEvent;
    .end local v4    # "policyFlags":I
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3331
    .local v1, "clientState":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 3332
    .local v7, "userId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get14(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 3333
    invoke-direct {p0, v1, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    goto :goto_0

    .line 3337
    .end local v1    # "clientState":I
    .end local v7    # "userId":I
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 3338
    .restart local v7    # "userId":I
    const/4 v10, 0x0

    invoke-direct {p0, v10, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClientsForUser(II)V

    goto :goto_0

    .line 3342
    .end local v7    # "userId":I
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->announceNewUserIfNeeded()V

    goto :goto_0

    .line 3346
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 3347
    .local v8, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap34(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_0

    .line 3351
    .end local v8    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 3352
    .local v5, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap29(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto/16 :goto_0

    .line 3356
    .end local v5    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :pswitch_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 3358
    .local v9, "windowId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get18(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 3359
    :try_start_2
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap14(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .local v0, "bridge":Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    monitor-exit v11

    .line 3361
    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->clearAccessibilityFocusNotLocked(I)V

    goto/16 :goto_0

    .line 3358
    .end local v0    # "bridge":Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    :catchall_2
    move-exception v10

    monitor-exit v11

    throw v10

    .line 3307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method
