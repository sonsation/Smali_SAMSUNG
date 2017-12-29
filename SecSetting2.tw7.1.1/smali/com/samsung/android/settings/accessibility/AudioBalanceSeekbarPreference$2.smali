.class Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioBalanceSeekbarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x418

    const/16 v7, 0x404

    .line 90
    if-nez p2, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "audio"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 96
    .local v1, "audioManager":Landroid/media/AudioManager;
    const-string/jumbo v6, "AudioBalanceSeekbarPreference"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string/jumbo v6, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    .line 99
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 101
    .local v3, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_2

    .line 102
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 103
    .local v2, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 105
    .local v4, "devClassInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 106
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 107
    .local v5, "deviceClass":I
    if-eq v5, v8, :cond_1

    .line 108
    if-ne v5, v7, :cond_2

    .line 109
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->-set0(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;Z)Z

    .line 131
    .end local v2    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    .end local v3    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "devClassInteger":Ljava/lang/Integer;
    .end local v5    # "deviceClass":I
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->-wrap0(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;)V

    .line 89
    return-void

    .line 114
    :cond_3
    const-string/jumbo v6, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 116
    const-string/jumbo v6, "android.bluetooth.device.extra.DEVICE"

    .line 115
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 117
    .restart local v3    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 119
    .restart local v2    # "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 121
    .restart local v4    # "devClassInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 123
    .restart local v5    # "deviceClass":I
    if-eq v5, v8, :cond_4

    .line 124
    if-ne v5, v7, :cond_2

    .line 125
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference$2;->this$0:Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;->-set0(Lcom/samsung/android/settings/accessibility/AudioBalanceSeekbarPreference;Z)Z

    goto :goto_0
.end method
