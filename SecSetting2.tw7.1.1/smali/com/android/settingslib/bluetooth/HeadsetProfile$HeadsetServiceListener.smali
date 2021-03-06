.class final Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/HeadsetProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeadsetServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/HeadsetProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/HeadsetProfile;Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HeadsetProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 7
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 60
    invoke-static {}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "HeadsetProfile"

    const-string/jumbo v5, "Bluetooth service connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v4, p2}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-set1(Lcom/android/settingslib/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 63
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get4(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v4

    if-nez v4, :cond_1

    .line 64
    const-string/jumbo v4, "HeadsetProfile"

    const-string/jumbo v5, "mService is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 67
    :cond_1
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get4(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 68
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-set0(Lcom/android/settingslib/bluetooth/HeadsetProfile;Z)Z

    .line 88
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get3(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 59
    return-void

    .line 69
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 70
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get1(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 72
    .local v3, "mCachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v3, :cond_4

    .line 73
    const-string/jumbo v4, "HeadsetProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HeadsetProfile found new device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get1(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get2(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-static {v6}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get3(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 76
    :cond_4
    if-eqz v3, :cond_5

    .line 77
    const-string/jumbo v4, "HeadsetProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update cached device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 80
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 82
    :cond_5
    const-string/jumbo v4, "HeadsetProfile"

    const-string/jumbo v5, "Bluetooth device is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 92
    invoke-static {}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "HeadsetProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-set0(Lcom/android/settingslib/bluetooth/HeadsetProfile;Z)Z

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-get3(Lcom/android/settingslib/bluetooth/HeadsetProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HeadsetProfile$HeadsetServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->-set1(Lcom/android/settingslib/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 91
    return-void
.end method
