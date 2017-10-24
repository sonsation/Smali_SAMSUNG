.class Lcom/android/server/input/InputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "action":Ljava/lang/String;
    const-string/jumbo v12, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 586
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v12}, Lcom/android/server/input/InputManagerService;->-get3(Lcom/android/server/input/InputManagerService;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 587
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v12}, Lcom/android/server/input/InputManagerService;->-get1(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v11

    .line 588
    .local v11, "tempMissingKeyboardLayoutDevice":Landroid/view/InputDevice;
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v12}, Lcom/android/server/input/InputManagerService;->-wrap7(Lcom/android/server/input/InputManagerService;)V

    .line 589
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v12, v11}, Lcom/android/server/input/InputManagerService;->-wrap22(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    .line 582
    .end local v11    # "tempMissingKeyboardLayoutDevice":Landroid/view/InputDevice;
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    const-string/jumbo v12, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 596
    const-string/jumbo v12, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 597
    const-string/jumbo v12, "cmd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "callAction":Ljava/lang/String;
    const-string/jumbo v12, "device"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 599
    .local v5, "deviceID":I
    const-string/jumbo v12, "InputManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "received SARDEVICE_CP, callAction = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " deviceID = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " cableConnection = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v14}, Lcom/android/server/input/InputManagerService;->-get0(Lcom/android/server/input/InputManagerService;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    and-int/lit8 v12, v5, 0x1

    if-nez v12, :cond_2

    and-int/lit8 v12, v5, 0x20

    if-eqz v12, :cond_0

    .line 602
    :cond_2
    const-string/jumbo v12, "on"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 603
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/input/InputManagerService;->-set0(Lcom/android/server/input/InputManagerService;Z)Z

    .line 604
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x1

    invoke-virtual {v12, v5, v13}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(IZ)I

    goto :goto_0

    .line 606
    :cond_3
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(IZ)I

    .line 607
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/input/InputManagerService;->-set0(Lcom/android/server/input/InputManagerService;Z)Z

    goto/16 :goto_0

    .line 613
    .end local v3    # "callAction":Ljava/lang/String;
    .end local v5    # "deviceID":I
    :cond_4
    const-string/jumbo v12, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 614
    const-string/jumbo v12, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 615
    .local v6, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    .line 616
    .local v4, "currentState":Landroid/net/NetworkInfo$DetailedState;
    const-string/jumbo v12, "InputManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "received NETWORK_STATE_CHANGED_ACTION, currentState = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string/jumbo v12, ""

    const-string/jumbo v13, "TOUCHKEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 618
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v12, :cond_5

    .line 619
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lcom/android/server/input/InputManagerService;->-set1(Lcom/android/server/input/InputManagerService;Z)Z

    .line 620
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(Z)I

    goto/16 :goto_0

    .line 621
    :cond_5
    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v12, :cond_0

    .line 622
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/input/InputManagerService;->enableDeviceForBackOff(Z)I

    .line 623
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/input/InputManagerService;->-set1(Lcom/android/server/input/InputManagerService;Z)Z

    goto/16 :goto_0

    .line 627
    .end local v4    # "currentState":Landroid/net/NetworkInfo$DetailedState;
    .end local v6    # "info":Landroid/net/NetworkInfo;
    :cond_6
    const-string/jumbo v12, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 628
    const-string/jumbo v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 629
    .local v10, "state":I
    const-string/jumbo v12, "InputManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "received HEADSET_PLUG state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string/jumbo v12, ""

    const-string/jumbo v13, "TOUCHKEY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 632
    const/4 v12, 0x1

    if-ne v10, v12, :cond_7

    .line 633
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/server/input/InputManagerService;->setTouchKeyEarjack(Z)I

    goto/16 :goto_0

    .line 636
    :cond_7
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/input/InputManagerService;->setTouchKeyEarjack(Z)I

    goto/16 :goto_0

    .line 641
    .end local v10    # "state":I
    :cond_8
    const-string/jumbo v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 644
    const-string/jumbo v12, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 645
    const-string/jumbo v12, "set"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 646
    .local v8, "isSet":Z
    const-string/jumbo v12, "force"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 647
    .local v7, "isForce":Z
    const-string/jumbo v12, "package"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 648
    .local v9, "packageName":Ljava/lang/String;
    const-string/jumbo v12, "type"

    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 649
    .local v2, "blockTypes":I
    const-string/jumbo v13, "InputManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "received:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, " packageName:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v9, :cond_b

    move-object v12, v9

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string/jumbo v12, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 652
    if-eqz v9, :cond_9

    const-string/jumbo v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 651
    if-eqz v12, :cond_a

    .line 654
    :cond_9
    const-string/jumbo v9, "retail"

    .line 657
    :cond_a
    if-eqz v9, :cond_0

    const-string/jumbo v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 658
    iget-object v12, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v12, v8, v2, v7, v9}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :cond_b
    const-string/jumbo v12, "null"

    goto :goto_1
.end method
