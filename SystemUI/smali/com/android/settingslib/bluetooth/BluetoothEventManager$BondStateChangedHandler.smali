.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p3, "reason"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 479
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, "name":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 514
    :pswitch_0
    const-string/jumbo v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void

    .line 483
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u200e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u200e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 484
    sget v6, Lcom/android/settingslib/R$string;->bluetooth_pairing_pin_error_message:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v8

    aput-object v5, v7, v9

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "message":Ljava/lang/String;
    invoke-static {p1, v3}, Lcom/android/settingslib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v6, "com.android.bluetooth"

    const-string/jumbo v7, "BEMC"

    const-string/jumbo v8, "1_bluetooth_message_pairing_pin_error"

    invoke-static {p1, v6, v7, v8}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void

    .line 489
    .end local v3    # "message":Ljava/lang/String;
    :pswitch_2
    sget v2, Lcom/android/settingslib/R$string;->bluetooth_pairing_rejected_error_message:I

    .line 490
    .local v2, "errorMsg":I
    const-string/jumbo v1, "2_bluetooth_message_pairing_rejected"

    .line 517
    .local v1, "errorCode":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v5, v2}, Lcom/android/settingslib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 518
    const-string/jumbo v6, "com.android.bluetooth"

    const-string/jumbo v7, "BEMC"

    invoke-static {p1, v6, v7, v1}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void

    .line 493
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "errorMsg":I
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 494
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->isBlackListDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u200e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u200e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 496
    sget v6, Lcom/android/settingslib/R$string;->bluetooth_pairing_device_down_black_list_error_message:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v8

    aput-object v5, v7, v9

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "msg":Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/settingslib/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v6, "com.android.bluetooth"

    const-string/jumbo v7, "BEMC"

    const-string/jumbo v8, "3_bluetooth_message_pairing_device_down"

    invoke-static {p1, v6, v7, v8}, Lcom/samsung/android/settingslib/bluetooth/GSIMBluetoothLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    return-void

    .line 501
    .end local v4    # "msg":Ljava/lang/String;
    :cond_0
    sget v2, Lcom/android/settingslib/R$string;->bluetooth_pairing_device_down_error_message:I

    .line 502
    .restart local v2    # "errorMsg":I
    const-string/jumbo v1, "3_bluetooth_message_pairing_device_down"

    .restart local v1    # "errorCode":Ljava/lang/String;
    goto :goto_0

    .line 510
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "errorMsg":I
    :pswitch_4
    sget v2, Lcom/android/settingslib/R$string;->bluetooth_pairing_error_message:I

    .line 511
    .restart local v2    # "errorMsg":I
    const-string/jumbo v1, "4_bluetooth_message_pairing_error"

    .restart local v1    # "errorCode":Ljava/lang/String;
    goto :goto_0

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/high16 v9, -0x80000000

    const/4 v8, 0x0

    .line 418
    if-nez p3, :cond_0

    .line 419
    const-string/jumbo v5, "BluetoothEventManager"

    const-string/jumbo v6, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 422
    :cond_0
    const-string/jumbo v5, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 424
    .local v0, "bondState":I
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 425
    .local v1, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_6

    .line 426
    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 427
    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CachedBluetoothDevice for device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 428
    const-string/jumbo v7, " not found, calling readPairedDevices()."

    .line 427
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v5

    if-nez v5, :cond_3

    .line 431
    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 432
    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 433
    const-string/jumbo v7, ", but we have no record of that device."

    .line 432
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_2
    return-void

    .line 437
    :cond_3
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 438
    if-nez v1, :cond_5

    .line 439
    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 440
    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Got bonding state changed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 441
    const-string/jumbo v7, ", but device not added in cache."

    .line 440
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_4
    return-void

    .line 445
    :cond_5
    const-string/jumbo v5, "BluetoothEventManager"

    const-string/jumbo v6, "CachedBluetoothDevice was created from paired devices. It will be refreshed."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 450
    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 451
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    monitor-enter v6

    .line 452
    :try_start_0
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 453
    .local v2, "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 451
    .end local v2    # "callback":Lcom/android/settingslib/bluetooth/BluetoothCallback;
    .end local v3    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .restart local v3    # "callback$iterator":Ljava/util/Iterator;
    :cond_7
    monitor-exit v6

    .line 457
    const/16 v5, 0xa

    if-ne v0, v5, :cond_8

    .line 458
    const-string/jumbo v5, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 461
    .local v4, "reason":I
    invoke-direct {p0, p1, v1, v4}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 462
    if-nez v4, :cond_8

    .line 463
    if-eqz p3, :cond_8

    .line 464
    invoke-virtual {p3, v8}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 417
    .end local v4    # "reason":I
    :cond_8
    return-void
.end method
