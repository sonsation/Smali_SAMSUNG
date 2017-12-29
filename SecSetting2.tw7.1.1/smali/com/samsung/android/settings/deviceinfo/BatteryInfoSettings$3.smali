.class Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;
.super Ljava/lang/Object;
.source "BatteryInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 227
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v4, "BatteryStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get1(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 230
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 232
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    const-string/jumbo v4, "BatteryLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 235
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 237
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 238
    :cond_4
    const-string/jumbo v4, "FCCCertification"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 239
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v5, "fcc_id"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 240
    .local v1, "fccId":Landroid/preference/Preference;
    if-eqz v1, :cond_6

    .line 241
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 242
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 244
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 247
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 249
    .end local v1    # "fccId":Landroid/preference/Preference;
    :cond_7
    const-string/jumbo v4, "RATED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 250
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v5, "rated_value"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 251
    .local v2, "rated":Landroid/preference/Preference;
    if-eqz v2, :cond_9

    .line 252
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 253
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 254
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 255
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 258
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 260
    .end local v2    # "rated":Landroid/preference/Preference;
    :cond_a
    const-string/jumbo v4, "BatteryCapacity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v5, "battery_capacity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 262
    .local v0, "batteryCapacity":Landroid/preference/Preference;
    if-eqz v0, :cond_c

    .line 263
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 264
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 265
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 266
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 269
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
