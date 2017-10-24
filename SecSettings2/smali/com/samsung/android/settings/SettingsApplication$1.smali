.class Lcom/samsung/android/settings/SettingsApplication$1;
.super Ljava/lang/Object;
.source "SettingsApplication.java"

# interfaces
.implements Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SettingsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SettingsApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SettingsApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/SettingsApplication;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/app/executor/data/State;)V
    .locals 12
    .param p1, "state"    # Lcom/samsung/android/app/executor/data/State;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getStateId()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "SettingsHome"

    .line 85
    .local v3, "nlgString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getParameters()Ljava/util/List;

    move-result-object v4

    .line 86
    .local v4, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/executor/data/Parameter;>;"
    const-string/jumbo v7, "SettingsHome"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "Settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 87
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v7}, Lcom/samsung/android/settings/SettingsApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/android/settings/Settings;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v1, "i":Landroid/content/Intent;
    const v7, 0x10008000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/SettingsApplication;->startActivity(Landroid/content/Intent;)V

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 91
    new-instance v5, Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    invoke-direct {v5, v3}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 92
    .local v5, "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/executor/ExecutorMediator;->requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V

    .line 94
    .end local v5    # "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 136
    .end local v1    # "i":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 95
    :cond_3
    const-string/jumbo v7, "SVSearch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 96
    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "onStateReceived:: SVSearch"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/SettingsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 98
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    if-eq v7, v11, :cond_4

    .line 99
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v7

    if-ne v7, v9, :cond_5

    .line 100
    :cond_4
    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "Smart View already connected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v5, Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    invoke-direct {v5, v6}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v5    # "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    const-string/jumbo v7, "SmartView"

    const-string/jumbo v8, "Connected"

    const-string/jumbo v9, "yes"

    invoke-virtual {v5, v7, v8, v9}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    .line 103
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/executor/ExecutorMediator;->requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V

    .line 104
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 106
    .end local v5    # "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "show_dialog_once"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    const-string/jumbo v7, "tag_write_if_success"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string/jumbo v7, "more_actions_knox_state"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    const-string/jumbo v7, "more_actions_package_name"

    const-string/jumbo v8, "com.android.systemui"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string/jumbo v7, "bixbyByRoot"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    const/high16 v7, 0x14800000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-virtual {v7, v2}, Lcom/samsung/android/settings/SettingsApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 116
    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v7, "SVDisconnect"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 117
    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "onStateReceived:: SVDisconnect"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/SettingsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 119
    .restart local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v7

    if-eq v7, v11, :cond_7

    .line 120
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v7

    if-ne v7, v9, :cond_8

    .line 121
    :cond_7
    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "Smart View disconnected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semDisconnectWifiDisplay()V

    .line 123
    new-instance v5, Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    invoke-direct {v5, v6}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 124
    .restart local v5    # "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    const-string/jumbo v7, "SmartView"

    const-string/jumbo v8, "Disconnected"

    const-string/jumbo v9, "no"

    invoke-virtual {v5, v7, v8, v9}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    .line 125
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/executor/ExecutorMediator;->requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V

    .line 126
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 128
    .end local v5    # "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    :cond_8
    const-string/jumbo v7, "Bixby_SmartView"

    const-string/jumbo v8, "Smart View already disconnected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v5, Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    invoke-direct {v5, v6}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local v5    # "requestInfo":Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    const-string/jumbo v7, "SmartView"

    const-string/jumbo v8, "Disconnected"

    const-string/jumbo v9, "yes"

    invoke-virtual {v5, v7, v8, v9}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/data/NlgRequestInfo;

    .line 131
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/samsung/android/app/executor/ExecutorMediator;->requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V

    .line 132
    iget-object v7, p0, Lcom/samsung/android/settings/SettingsApplication$1;->this$0:Lcom/samsung/android/settings/SettingsApplication;

    invoke-static {v7}, Lcom/samsung/android/settings/SettingsApplication;->-get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
