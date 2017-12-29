.class Lcom/android/settings/notification/NotificationAccessSettings$1;
.super Ljava/lang/Object;
.source "NotificationAccessSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/NotificationAccessSettings;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 190
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "NotificationAccessOn"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 192
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_3

    .line 193
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 195
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 196
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    instance-of v6, v6, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_2

    .line 197
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 198
    .local v4, "switchPreference":Landroid/preference/SwitchPreference;
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "title":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 199
    if-eqz v6, :cond_2

    .line 201
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 202
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 203
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 204
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 205
    const-string/jumbo v7, "NotificationAccess"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "no"

    .line 204
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 208
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 209
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 208
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 210
    return-void

    .line 212
    :cond_1
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 213
    const-string/jumbo v7, "NotificationAccess"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "yes"

    .line 212
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 215
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 216
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 215
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 217
    return-void

    .line 195
    .end local v4    # "switchPreference":Landroid/preference/SwitchPreference;
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 224
    .end local v0    # "i":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "root":Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ApplicationAppName"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 189
    :cond_4
    :goto_1
    return-void

    .line 227
    :cond_5
    const-string/jumbo v6, "NotificationAccessOff"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 228
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_9

    .line 229
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .restart local v1    # "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 231
    .restart local v2    # "root":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 232
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    instance-of v6, v6, Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_8

    .line 233
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 234
    .restart local v4    # "switchPreference":Landroid/preference/SwitchPreference;
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 235
    .restart local v5    # "title":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 236
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 235
    if-eqz v6, :cond_8

    .line 237
    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 238
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 239
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 240
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 241
    const-string/jumbo v7, "NotificationAccess"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "no"

    .line 240
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 244
    :cond_6
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 245
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 244
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 246
    return-void

    .line 248
    :cond_7
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 249
    const-string/jumbo v7, "NotificationAccess"

    const-string/jumbo v8, "AlreadyOff"

    const-string/jumbo v9, "yes"

    .line 248
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 251
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 252
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 251
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 253
    return-void

    .line 231
    .end local v4    # "switchPreference":Landroid/preference/SwitchPreference;
    .end local v5    # "title":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 260
    .end local v0    # "i":I
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "root":Landroid/preference/PreferenceScreen;
    :cond_9
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ApplicationAppName"

    const-string/jumbo v8, "exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "NotificationAccess"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 262
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v6}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
