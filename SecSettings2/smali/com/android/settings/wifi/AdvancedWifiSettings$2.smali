.class Lcom/android/settings/wifi/AdvancedWifiSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    invoke-static {}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get5()Z

    move-result v4

    if-nez v4, :cond_0

    .line 294
    const-string/jumbo v4, "AdvancedWifiSettings"

    const-string/jumbo v5, "Comcast Wi-Fi CSC is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 298
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->getResultCode()I

    move-result v3

    .line 300
    .local v3, "resultCode":I
    const-string/jumbo v4, "AdvancedWifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Resultcode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v4, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;->SERVICE_NEED_PERMISSIONS:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 308
    const-string/jumbo v4, "AdvancedWifiSettings"

    const-string/jumbo v5, "Permissions are not enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const-string/jumbo v5, "CHECK_PERMISSIONS"

    invoke-static {v4, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap3(Lcom/android/settings/wifi/AdvancedWifiSettings;Ljava/lang/String;)V

    .line 310
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get6(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 311
    return-void

    .line 314
    :cond_1
    const-string/jumbo v4, "com.smithmicro.mnd.action.SHUTDOWN_CM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "com.smithmicro.mnd.action.RESUME_CM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 315
    :cond_2
    sget-object v4, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;->OK:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 316
    const-string/jumbo v4, "AdvancedWifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is success. Lets wait for the Service to be restarted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v4, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap7(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    .line 292
    :cond_3
    :goto_0
    return-void

    .line 320
    :cond_4
    const/4 v4, -0x1

    if-eq v4, v3, :cond_5

    .line 321
    const-string/jumbo v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NWD SDK API result code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;->values()[Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get6(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 326
    :cond_6
    const-string/jumbo v4, "com.smithmicro.mnd.action.SERVICE_STATUS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 327
    sget-object v4, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;->OK:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SDK_API_RESULT;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 328
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v1

    .line 329
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 330
    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    const-string/jumbo v4, "com.smithmicro.mnd.NWD_SDK_API_CM_SUSPENDED"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_1
    invoke-static {v7, v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set1(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    .line 331
    const-string/jumbo v4, "AdvancedWifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mIsNwdCmEnabled : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v8}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get6(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get6(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 334
    const-string/jumbo v4, "com.smithmicro.mnd.NWD_SDK_API_SERVICE_STATUS"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 335
    .local v2, "nwdServiceState":I
    const-string/jumbo v4, "AdvancedWifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "serviceState == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    sget-object v7, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->STARTED:Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AdvancedWifiSettings$NWD_SERVICE_STATE;->ordinal()I

    move-result v7

    if-ne v2, v7, :cond_8

    :goto_2
    invoke-static {v4, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap7(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    goto/16 :goto_0

    .end local v2    # "nwdServiceState":I
    :cond_7
    move v4, v6

    .line 330
    goto :goto_1

    .restart local v2    # "nwdServiceState":I
    :cond_8
    move v6, v5

    .line 337
    goto :goto_2

    .line 342
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "nwdServiceState":I
    :cond_9
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v4, v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set1(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    .line 343
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v4}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get0(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get6(Lcom/android/settings/wifi/AdvancedWifiSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 344
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v4, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap7(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    goto/16 :goto_0

    .line 347
    :cond_a
    const-string/jumbo v4, "com.smithmicro.netwise.director.comcast.oem.NWD_SDK_API_SERVICE_READY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 348
    const-string/jumbo v4, "AdvancedWifiSettings"

    const-string/jumbo v5, "NWD SDK API service state is Ready"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$2;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v4, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap7(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    goto/16 :goto_0
.end method
