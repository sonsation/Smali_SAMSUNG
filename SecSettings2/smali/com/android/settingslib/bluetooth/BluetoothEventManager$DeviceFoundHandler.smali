.class Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;
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
    name = "DeviceFoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v10, -0x8000

    .line 325
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 326
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_2

    .line 327
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v8}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get3(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;->this$0:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-static {v9}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->-get4(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v9

    invoke-virtual {v5, v8, v9, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 328
    if-nez v0, :cond_0

    return-void

    .line 330
    :cond_0
    const-string/jumbo v5, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v1

    .line 331
    .local v1, "rssi":S
    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setRssi(S)V

    .line 332
    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DeviceFoundHandler created new CachedBluetoothDevice : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 334
    .end local v1    # "rssi":S
    :cond_2
    const-string/jumbo v5, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v1

    .line 335
    .restart local v1    # "rssi":S
    const-string/jumbo v5, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothClass;

    .line 336
    .local v2, "btClass":Landroid/bluetooth/BluetoothClass;
    const-string/jumbo v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "com.samsung.bluetooth.device.extra.APPEARANCE"

    const/4 v8, 0x0

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v3

    .line 338
    .local v3, "appearance":S
    const-string/jumbo v5, "com.samsung.bluetooth.device.extra.MANUFACTURER_DATA"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    .line 339
    .local v6, "manufacturerData":[B
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v7

    .line 343
    .local v7, "bondState":I
    const/16 v5, 0xc

    if-ne v7, v5, :cond_3

    .line 344
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v4

    .line 346
    :cond_3
    sget-boolean v5, Lcom/android/settingslib/bluetooth/Utils;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "BluetoothEventManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "DeviceFoundHandler update CachedBluetoothDevice : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_4
    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->processActionFoundEvent(SLandroid/bluetooth/BluetoothClass;SLjava/lang/String;Z[BI)V

    goto :goto_0
.end method
