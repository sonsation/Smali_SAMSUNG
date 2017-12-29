.class Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;
.super Ljava/lang/Object;
.source "DeviceMaintenanceSettings.java"

# interfaces
.implements Lcom/android/settingslib/BatteryInfo$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryInfoLoaded(Lcom/android/settingslib/BatteryInfo;)V
    .locals 10
    .param p1, "info"    # Lcom/android/settingslib/BatteryInfo;

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "stateId":Ljava/lang/String;
    const/4 v1, 0x0

    .line 178
    .local v1, "minutes":I
    iget-wide v6, p1, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 179
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 180
    iget-wide v6, p1, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 179
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    long-to-double v6, v6

    .line 180
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 179
    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v1, v6

    .line 183
    :cond_0
    const-string/jumbo v5, "Battery"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 184
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    if-gtz v1, :cond_2

    .line 186
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LearningUsagePattern"

    const-string/jumbo v7, "InProgress"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 237
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 238
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get0(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v6, v6, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 174
    return-void

    .line 188
    :cond_2
    iget-boolean v5, p1, Lcom/android/settingslib/BatteryInfo;->mDischarging:Z

    if-nez v5, :cond_5

    .line 190
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "low_power"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, "powerSaving":I
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sem_perfomance_mode"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x1

    .line 192
    .local v0, "isPerfMode":Z
    :cond_3
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 189
    const/16 v2, 0x23

    .line 195
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v1

    .line 197
    .end local v0    # "isPerfMode":Z
    .end local v2    # "powerSaving":I
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "timeString":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "LearningUsagePattern"

    const-string/jumbo v7, "InProgress"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Value"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    .end local v4    # "timeString":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "BatteryChargingTime"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 204
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    iget-boolean v5, p1, Lcom/android/settingslib/BatteryInfo;->mDischarging:Z

    if-nez v5, :cond_8

    .line 206
    if-gtz v1, :cond_7

    .line 207
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "RemainingChargingTime"

    const-string/jumbo v7, "Present"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 210
    .restart local v4    # "timeString":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "RemainingChargingTime"

    const-string/jumbo v7, "Present"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "time"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 214
    .end local v4    # "timeString":Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Charger"

    const-string/jumbo v7, "Connected"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_2

    .line 219
    :cond_9
    const-string/jumbo v5, "BatteryEstimatedLife"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 221
    iget-boolean v5, p1, Lcom/android/settingslib/BatteryInfo;->mDischarging:Z

    if-eqz v5, :cond_b

    .line 222
    if-gtz v1, :cond_a

    .line 223
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "BatteryEstimatedLife"

    const-string/jumbo v7, "Present"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 225
    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 226
    .restart local v4    # "timeString":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "BatteryEstimatedLife"

    const-string/jumbo v7, "Present"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "time"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 230
    .end local v4    # "timeString":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "Charger"

    const-string/jumbo v7, "Connected"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v5, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3$1;->this$1:Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    iget-object v5, v5, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;->this$0:Lcom/samsung/android/settings/DeviceMaintenanceSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->-get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    goto :goto_3
.end method
