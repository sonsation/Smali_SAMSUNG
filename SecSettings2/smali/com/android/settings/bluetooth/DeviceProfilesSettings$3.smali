.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 988
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 989
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/preference/SwitchPreference;)Landroid/preference/SwitchPreference;

    .line 990
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 991
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string/jumbo v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bixby::onStateReceived(), stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string/jumbo v3, "BluetoothRename"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 994
    const/4 v1, 0x0

    .line 996
    .local v1, "newName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_1

    .line 997
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 1006
    .local v1, "newName":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1007
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTDeviceChangeName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1009
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 1246
    .end local v1    # "newName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 999
    .local v1, "newName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "DeviceProfilesSettings"

    const-string/jumbo v4, "Bixby :: parameter size is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTDeviceChangeName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1002
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 1003
    return-void

    .line 1011
    .local v1, "newName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/settings/bluetooth/Utils;->compareBixbyDeviceNameEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1012
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 1013
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1014
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTDeviceChangeName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1017
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto :goto_0

    .line 1019
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTDeviceChangeName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1021
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto :goto_0

    .line 1024
    .end local v1    # "newName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "BluetoothUnpair"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1025
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 1026
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1027
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Unpaired"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1030
    :cond_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 1031
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->finish()V

    goto/16 :goto_0

    .line 1032
    :cond_7
    const-string/jumbo v3, "BluetoothUseProfile"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1033
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_9

    .line 1034
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1045
    :cond_8
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1048
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 1049
    return-void

    .line 1036
    :cond_9
    const-string/jumbo v3, "DeviceProfilesSettings"

    const-string/jumbo v4, "Bixby :: parameter size is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1040
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 1041
    return-void

    .line 1052
    :cond_a
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1053
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1054
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1057
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1059
    :cond_b
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 1062
    :cond_c
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1065
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1067
    :cond_d
    const-string/jumbo v3, "BluetoothStopUsingProfile"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1068
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_f

    .line 1069
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1079
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1080
    :cond_e
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1083
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 1084
    return-void

    .line 1071
    :cond_f
    const-string/jumbo v3, "DeviceProfilesSettings"

    const-string/jumbo v4, "Bixby :: parameter size is 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1075
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    .line 1076
    return-void

    .line 1087
    :cond_10
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1088
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, "profileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1090
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    invoke-static {v3, v4, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1093
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1095
    :cond_11
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 1098
    .end local v2    # "profileName":Ljava/lang/String;
    :cond_12
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "BTProfileName"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1101
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1103
    :cond_13
    const-string/jumbo v3, "BluetoothStopInternetSharing"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1104
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "PAN"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1105
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1106
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1107
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "InternetSharingDevice"

    const-string/jumbo v5, "AlreadyActive"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1110
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1112
    :cond_14
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 1115
    :cond_15
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "InternetSharingDevice"

    const-string/jumbo v5, "Deactivated"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1117
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1119
    :cond_16
    const-string/jumbo v3, "BluetoothAllowPhonebookAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1120
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "PBAP Server"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1121
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v3

    if-ne v3, v8, :cond_17

    .line 1122
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyAllowedAccess"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1125
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1127
    :cond_17
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1128
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1129
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Allowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1133
    :cond_18
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1136
    :cond_19
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Allowed"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1138
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1140
    :cond_1a
    const-string/jumbo v3, "BluetoothDisallowPhonebookAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1141
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "PBAP Server"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1142
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v3

    if-ne v3, v6, :cond_1b

    .line 1143
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "AlreadyDisallowedAccess"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1146
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1148
    :cond_1b
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1149
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1150
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Disallowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1154
    :cond_1c
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1157
    :cond_1d
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    const-string/jumbo v5, "Disallowed"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1159
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1161
    :cond_1e
    const-string/jumbo v3, "BluetoothAllowMessageAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1162
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MAP"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1163
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v3

    if-ne v3, v8, :cond_1f

    .line 1164
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MessageAccess"

    const-string/jumbo v5, "AlreadyAllowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1167
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1169
    :cond_1f
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1170
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1171
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MessageAccess"

    const-string/jumbo v5, "Allowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1175
    :cond_20
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1178
    :cond_21
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MessageAccess"

    const-string/jumbo v5, "Allowed"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1180
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1182
    :cond_22
    const-string/jumbo v3, "BluetoothDisallowMessageAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1183
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MAP"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1184
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v3

    if-ne v3, v6, :cond_23

    .line 1185
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MessageAccess"

    const-string/jumbo v5, "AlreadyDisallowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1188
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1190
    :cond_23
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1191
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1192
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MessageAccess"

    const-string/jumbo v5, "Disallowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1196
    :cond_24
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1199
    :cond_25
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "MessageAccess"

    const-string/jumbo v5, "Disallowed"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1201
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1203
    :cond_26
    const-string/jumbo v3, "BluetoothAllowSIMCardAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1204
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SAP"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1205
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v3

    if-ne v3, v8, :cond_27

    .line 1206
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SimAccess"

    const-string/jumbo v5, "AlreadyAllowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1209
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1211
    :cond_27
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1212
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1213
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SimAccess"

    const-string/jumbo v5, "Allowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1217
    :cond_28
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1220
    :cond_29
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SimAccess"

    const-string/jumbo v5, "Allowed"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1222
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1224
    :cond_2a
    const-string/jumbo v3, "BluetoothDisallowSIMCardAccess"

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1225
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SAP"

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap0(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1226
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v3

    if-ne v3, v6, :cond_2b

    .line 1227
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SimAccess"

    const-string/jumbo v5, "AlreadyDisallowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1230
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1232
    :cond_2b
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1233
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1234
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SimAccess"

    const-string/jumbo v5, "Disallowed"

    const-string/jumbo v6, "yes"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "Name"

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1238
    :cond_2c
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v8}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0

    .line 1241
    :cond_2d
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    const-string/jumbo v4, "SimAccess"

    const-string/jumbo v5, "Disallowed"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap3(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    .line 1243
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v3, v7}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-wrap4(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)V

    goto/16 :goto_0
.end method
