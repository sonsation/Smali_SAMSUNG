.class Lcom/android/settings/location/ScanningSettings$1;
.super Ljava/lang/Object;
.source "ScanningSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/ScanningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/ScanningSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/ScanningSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/location/ScanningSettings;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "ScanningSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStateReceived : stateId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string/jumbo v1, "WiFiScanningOn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiScanningOn"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    .line 154
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 153
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get2(Lcom/android/settings/location/ScanningSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiScanningOn"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 165
    :cond_3
    const-string/jumbo v1, "WiFiScanningOff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 166
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    .line 168
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiScanningOff"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    .line 171
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 170
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get2(Lcom/android/settings/location/ScanningSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 174
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 176
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "WiFiScanningOff"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 179
    :cond_5
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 181
    :cond_6
    const-string/jumbo v1, "BluetoothScanningOn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 182
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_7

    .line 184
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BluetoothScanningOn"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    .line 187
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 186
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 189
    :cond_7
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get0(Lcom/android/settings/location/ScanningSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 190
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 192
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BluetoothScanningOn"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 195
    :cond_8
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 197
    :cond_9
    const-string/jumbo v1, "BluetoothScanningOff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_a

    .line 200
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BluetoothScanningOff"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    .line 203
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 202
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 205
    :cond_a
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get0(Lcom/android/settings/location/ScanningSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-wrap0(Lcom/android/settings/location/ScanningSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ble_scan_always_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 208
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "BluetoothScanningOff"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "ImproveAccuracy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 211
    :cond_b
    iget-object v1, p0, Lcom/android/settings/location/ScanningSettings$1;->this$0:Lcom/android/settings/location/ScanningSettings;

    invoke-static {v1}, Lcom/android/settings/location/ScanningSettings;->-get1(Lcom/android/settings/location/ScanningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
