.class Lcom/android/settings/bluetooth/BluetoothSettings$4;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 11

    .prologue
    const v3, 0x7f0b03de

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1332
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1333
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set2(Lcom/android/settings/bluetooth/BluetoothSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 1334
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v9

    .line 1335
    .local v9, "isEnabled":Z
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v8

    .line 1336
    .local v8, "isDiscovering":Z
    const-string/jumbo v0, "BluetoothSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string/jumbo v0, "BluetoothSettings"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1339
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1517
    :cond_1
    :goto_0
    return-void

    .line 1343
    :cond_2
    const-string/jumbo v0, "BluetoothOn"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1344
    if-nez v9, :cond_3

    .line 1345
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 1347
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1349
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto :goto_0

    .line 1351
    :cond_4
    const-string/jumbo v0, "BluetoothOff"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1352
    if-eqz v9, :cond_5

    .line 1353
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 1355
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "AlreadyOFF"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1357
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto :goto_0

    .line 1359
    :cond_6
    const-string/jumbo v0, "BluetoothStartScanning"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1360
    if-nez v9, :cond_7

    .line 1361
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    .line 1363
    :cond_7
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto/16 :goto_0

    .line 1365
    :cond_8
    const-string/jumbo v0, "BluetoothStopScanning"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1366
    if-nez v9, :cond_9

    .line 1367
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "On"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1369
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1371
    :cond_9
    if-eqz v8, :cond_a

    .line 1372
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto/16 :goto_0

    .line 1374
    :cond_a
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "BluetoothScanning"

    const-string/jumbo v2, "On"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1376
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1379
    :cond_b
    const-string/jumbo v0, "BluetoothDiscoverableModeOn"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1380
    if-nez v9, :cond_c

    .line 1381
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1382
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    :goto_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1388
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1384
    :cond_c
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "AlreadyOn"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1390
    :cond_d
    const-string/jumbo v0, "BluetoothDeviceConnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1391
    if-nez v9, :cond_e

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1393
    :cond_e
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_10

    .line 1394
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1403
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1404
    :cond_f
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: DeviceName is EMPTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1407
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1408
    return-void

    .line 1396
    :cond_10
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1399
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1400
    return-void

    .line 1411
    :cond_11
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    .line 1412
    .local v7, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v7, :cond_14

    .line 1413
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set4(Lcom/android/settings/bluetooth/BluetoothSettings;Z)Z

    .line 1414
    if-eqz v8, :cond_12

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings/bluetooth/BluetoothSettings;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 1416
    :cond_12
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1417
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1418
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "AlreadyConnected"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1421
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1423
    :cond_13
    invoke-virtual {v7, v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto/16 :goto_0

    .line 1426
    :cond_14
    if-nez v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto/16 :goto_0

    .line 1428
    .end local v7    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_15
    const-string/jumbo v0, "BluetoothDeviceDisconnect"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1429
    if-nez v9, :cond_16

    .line 1430
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1431
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1432
    return-void

    .line 1435
    :cond_16
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_18

    .line 1436
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1445
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1446
    :cond_17
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: DeviceName is EMPTY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1449
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1450
    return-void

    .line 1438
    :cond_18
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1441
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1442
    return-void

    .line 1453
    :cond_19
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get2(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDeviceByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    .line 1454
    .restart local v7    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v7, :cond_1b

    .line 1455
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1456
    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto/16 :goto_0

    .line 1458
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1459
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "AlreadyConnected"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1462
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1465
    :cond_1b
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1466
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Match"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1469
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1471
    .end local v7    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_1c
    const-string/jumbo v0, "BluetoothControlHistory"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1472
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1e

    .line 1473
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1474
    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    .line 1473
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1481
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1482
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "BluetoothControlHistory"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1484
    :cond_1d
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    goto/16 :goto_0

    .line 1477
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1478
    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    .line 1477
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 1485
    :cond_1f
    const-string/jumbo v0, "BluetoothPairedDeviceSetting"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get1(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1486
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v0

    if-lez v0, :cond_21

    .line 1487
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->-set0(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1496
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get0(Lcom/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1497
    :cond_20
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1499
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1500
    return-void

    .line 1489
    :cond_21
    const-string/jumbo v0, "BluetoothSettings"

    const-string/jumbo v1, "Bixby :: parameter size is 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Name"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1492
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1493
    return-void

    .line 1502
    :cond_22
    if-nez v9, :cond_24

    .line 1503
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get3(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1504
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    const-string/jumbo v1, "Bluetooth"

    const-string/jumbo v2, "On"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap1(Lcom/android/settings/bluetooth/BluetoothSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap2(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    .line 1506
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0, v6}, Lcom/android/settings/bluetooth/BluetoothSettings;->-wrap3(Lcom/android/settings/bluetooth/BluetoothSettings;Z)V

    .line 1507
    return-void

    .line 1509
    :cond_23
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->-get4(Lcom/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 1510
    return-void

    .line 1514
    :cond_24
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->findDeviceByCachedManager()V

    goto/16 :goto_0
.end method
