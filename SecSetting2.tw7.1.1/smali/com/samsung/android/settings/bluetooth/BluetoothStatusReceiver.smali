.class public Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;
    }
.end annotation


# static fields
.field private static mQuickPanelOn:Z

.field private static mRecoverBluetooth:Z

.field private static mRecoverBluetoothPrevState:I


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    .line 56
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetooth:Z

    .line 57
    const/16 v0, 0xa

    sput v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetoothPrevState:I

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 237
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "action":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 69
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "Received null intent"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 72
    :cond_0
    const-string/jumbo v24, "BluetoothStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Received :: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 78
    const-string/jumbo v24, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 79
    const-string/jumbo v24, "android.bluetooth.adapter.extra.STATE"

    const/high16 v25, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 80
    .local v21, "state":I
    const-string/jumbo v24, "BluetoothStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "AdapterStateChanged :: state = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 83
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "Error: BluetoothAdapter not supported by system"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    .line 87
    :cond_1
    const/16 v24, 0xc

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    sget-boolean v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->semIsForegroundActivity()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 65
    .end local v21    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 88
    .restart local v21    # "state":I
    :cond_3
    const/16 v24, 0x0

    sput-boolean v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "keyguard"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/KeyguardManager;

    .line 91
    .local v14, "kgm":Landroid/app/KeyguardManager;
    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v24

    if-nez v24, :cond_2

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    const-wide/16 v26, 0x64

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 95
    .end local v14    # "kgm":Landroid/app/KeyguardManager;
    .end local v21    # "state":I
    :cond_4
    const-string/jumbo v24, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 96
    const-string/jumbo v24, "android.bluetooth.adapter.extra.STATE"

    const/16 v25, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 97
    .local v16, "newState":I
    const-string/jumbo v24, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    const/16 v25, 0xa

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 99
    .local v17, "prevState":I
    sget-boolean v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetooth:Z

    if-eqz v24, :cond_2

    .line 100
    const-string/jumbo v24, "BluetoothStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "BLE state changed handler :: state changed "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " -> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", recover state = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetoothPrevState:I

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/16 v19, 0x0

    .line 103
    .local v19, "readyToEnable":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 106
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v24

    const-string/jumbo v25, "SEC_FLOATING_FEATURE_BLUETOOTH_ENABLE_AUTO_LE"

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 107
    const/16 v24, 0xe

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v24, 0xf

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 108
    const/16 v19, 0x1

    .line 116
    :cond_5
    :goto_1
    if-eqz v19, :cond_2

    .line 117
    const/16 v24, 0x0

    sput-boolean v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetooth:Z

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v24, v0

    if-nez v24, :cond_7

    .line 119
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "BLE state changed handler :: LocalBluetoothAdapter is null, discard recover process"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/16 v24, 0xa

    sput v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetoothPrevState:I

    .line 121
    return-void

    .line 111
    :cond_6
    const/16 v24, 0x10

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v24, 0xa

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 112
    const/16 v19, 0x1

    goto :goto_1

    .line 124
    :cond_7
    sget v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetoothPrevState:I

    packed-switch v24, :pswitch_data_0

    .line 137
    :cond_8
    :goto_2
    const/16 v24, 0xa

    sput v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetoothPrevState:I

    goto/16 :goto_0

    .line 128
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isBleEnabled()Z

    move-result v24

    if-nez v24, :cond_8

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enableBLE()Z

    goto :goto_2

    .line 134
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto :goto_2

    .line 140
    .end local v16    # "newState":I
    .end local v17    # "prevState":I
    .end local v19    # "readyToEnable":Z
    :cond_9
    const-string/jumbo v24, "com.samsung.bluetooth.bixby.action.RECOVER_BLUETOOTH_STATUS"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 141
    const/16 v24, 0x0

    sput-boolean v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetooth:Z

    .line 142
    const/16 v24, 0xa

    sput v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetoothPrevState:I

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBleState()I

    move-result v6

    .line 147
    .local v6, "currState":I
    const/16 v24, 0xa

    move/from16 v0, v24

    if-eq v6, v0, :cond_a

    const/16 v24, 0x10

    move/from16 v0, v24

    if-ne v6, v0, :cond_b

    .line 148
    :cond_a
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "Recover handler :: Bluetooth already disabled"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 152
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->shutDown()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 153
    const/16 v24, 0x1

    sput-boolean v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetooth:Z

    .line 154
    sput v6, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetoothPrevState:I

    .line 155
    const-string/jumbo v24, "BluetoothStatusReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Recover handler :: device will shutdown, prev state = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mRecoverBluetoothPrevState:I

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 157
    :cond_c
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "Recover handler :: failed to shutdown bluetooth"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 159
    .end local v6    # "currState":I
    :cond_d
    const-string/jumbo v24, "com.samsung.systemui.statusbar.action.BLUETOOTH_ON"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 160
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "QuickPanelBluetoothON :: com.samsung.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/16 v24, 0x1

    sput-boolean v24, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    goto/16 :goto_0

    .line 162
    :cond_e
    const-string/jumbo v24, "com.samsung.android.action.BLUETOOTH_DEVICE_FROM_APP"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 163
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "For launch gearmanager from non-system app :: com.samsung.android.action.BLUETOOTH_DEVICE_FROM_APP"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 165
    .local v11, "extras":Landroid/os/Bundle;
    if-eqz v11, :cond_2

    .line 166
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "For launch gearmanager from non-system app :: sendBroadcast()"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 169
    const-string/jumbo v24, "MAC"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "btAddress":Ljava/lang/String;
    const-string/jumbo v24, "DATA"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 172
    .local v7, "data":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v24, v0

    if-nez v24, :cond_f

    .line 173
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "Error: BluetoothAdapter not supported by system"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 176
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v24, v0

    if-nez v24, :cond_11

    .line 179
    :cond_10
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "Error: mCachedDeviceManager or mLocalBluetoothAdapter not supported by system"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 183
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    .line 184
    .local v9, "device":Landroid/bluetooth/BluetoothDevice;
    if-nez v9, :cond_12

    .line 185
    return-void

    .line 188
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v24, v0

    if-nez v24, :cond_13

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v24, v0

    if-nez v24, :cond_13

    .line 192
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "Error: Failed to get cachedBluetoothDevice instance."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 197
    :cond_13
    const/4 v13, 0x1

    .line 198
    .local v13, "isProfileReady":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v15

    .line 199
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v12, v0, :cond_15

    .line 200
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 201
    .local v18, "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    if-eqz v18, :cond_14

    invoke-interface/range {v18 .. v18}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v24

    if-eqz v24, :cond_14

    .line 199
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 202
    :cond_14
    const/4 v13, 0x0

    goto :goto_4

    .line 206
    .end local v18    # "profile":Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    :cond_15
    if-eqz v13, :cond_16

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 209
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    const-wide/16 v26, 0x3e8

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 212
    .end local v5    # "btAddress":Ljava/lang/String;
    .end local v7    # "data":[B
    .end local v9    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v11    # "extras":Landroid/os/Bundle;
    .end local v12    # "i":I
    .end local v13    # "isProfileReady":Z
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;>;"
    :cond_17
    const-string/jumbo v24, "com.samsung.bluetooth.salogging.intent.action.BLUETOOTH_SA_LOGGING"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 213
    const-string/jumbo v24, "screenId"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 214
    .local v20, "screenId":Ljava/lang/String;
    const-string/jumbo v24, "eventId"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, "eventId":Ljava/lang/String;
    const-string/jumbo v24, "detail"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "detail":Ljava/lang/String;
    const-string/jumbo v24, "value"

    const-wide/16 v26, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .line 218
    .local v22, "value":J
    if-eqz v20, :cond_1c

    .line 219
    if-eqz v8, :cond_18

    const-wide/16 v24, -0x1

    cmp-long v24, v22, v24

    if-eqz v24, :cond_18

    .line 220
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v10, v8, v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 221
    :cond_18
    if-nez v8, :cond_19

    const-wide/16 v24, -0x1

    cmp-long v24, v22, v24

    if-nez v24, :cond_19

    .line 222
    move-object/from16 v0, v20

    invoke-static {v0, v10}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_19
    const-wide/16 v24, -0x1

    cmp-long v24, v22, v24

    if-eqz v24, :cond_1a

    .line 224
    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-static {v0, v10, v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 225
    :cond_1a
    if-eqz v8, :cond_1b

    .line 226
    move-object/from16 v0, v20

    invoke-static {v0, v10, v8}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_1b
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :cond_1c
    const-string/jumbo v24, "BluetoothStatusReceiver"

    const-string/jumbo v25, "screenId is null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
