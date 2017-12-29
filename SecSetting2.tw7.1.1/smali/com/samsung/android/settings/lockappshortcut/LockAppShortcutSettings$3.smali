.class Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;
.super Ljava/lang/Object;
.source "LockAppShortcutSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    .prologue
    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "LeftShortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 217
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get3(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get0(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LeftShortcut"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LeftShortcut"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 245
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 222
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LeftShortcut"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_4
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AppName"

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LeftShortcut"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_5
    const-string/jumbo v1, "RightShortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get4(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 233
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get1(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RightShortcut"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RightShortcut"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 243
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 235
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 236
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RightShortcut"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 235
    :cond_9
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 238
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AppName"

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RightShortcut"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
