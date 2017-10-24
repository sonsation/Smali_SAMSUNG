.class Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;
.super Ljava/lang/Object;
.source "SecuredLockSettingsMenu.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    .prologue
    const/16 v12, 0x6d

    const/4 v11, 0x0

    .line 1024
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v9, "MakePatternVisibleOn"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1026
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get6(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1027
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MakePatternVisible"

    const-string/jumbo v11, "AlreadyOn"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1029
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get6(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1032
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1033
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MakePatternVisible"

    const-string/jumbo v11, "AlreadyOn"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1036
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 1038
    :cond_3
    const-string/jumbo v9, "MakePatternVisibleOff"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1039
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get6(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1040
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MakePatternVisible"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1042
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1044
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get6(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1045
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1046
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "MakePatternVisible"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1049
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1051
    :cond_6
    const-string/jumbo v9, "LockAutomatically"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1052
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getListView()Landroid/widget/ListView;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/settings/SettingsListPreference;->getOrder()I

    move-result v10

    invoke-virtual {v9, v10, v11}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1053
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1054
    :cond_7
    const-string/jumbo v9, "LockAutomaticallySet"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1055
    const/4 v3, 0x0

    .line 1056
    .local v3, "timeOutValue":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v9

    if-eqz v9, :cond_8

    .line 1057
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    .line 1058
    .local v2, "timeOutString":Ljava/lang/String;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1076
    .end local v2    # "timeOutString":Ljava/lang/String;
    .end local v3    # "timeOutValue":Ljava/lang/String;
    :cond_8
    :goto_1
    if-nez v3, :cond_b

    .line 1077
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Object"

    const-string/jumbo v11, "valid"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockAutomatically"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1079
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1058
    .restart local v2    # "timeOutString":Ljava/lang/String;
    .restart local v3    # "timeOutValue":Ljava/lang/String;
    :cond_9
    const-string/jumbo v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1059
    const-string/jumbo v9, ", "

    const-string/jumbo v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1060
    const/16 v9, 0x68

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1061
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v2, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1062
    .local v6, "timerMinute":Ljava/lang/String;
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x73

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1063
    .local v7, "timerSecond":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long v4, v10, v12

    .line 1064
    .local v4, "timeout":J
    const-string/jumbo v9, "SecuredLockSettingsMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timeout : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/SettingsListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 1068
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v9, v8

    if-ge v0, v9, :cond_8

    .line 1069
    aget-object v9, v8, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_a

    .line 1070
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .local v3, "timeOutValue":Ljava/lang/String;
    goto/16 :goto_1

    .line 1068
    .local v3, "timeOutValue":Ljava/lang/String;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1081
    .end local v0    # "i":I
    .end local v2    # "timeOutString":Ljava/lang/String;
    .end local v3    # "timeOutValue":Ljava/lang/String;
    .end local v4    # "timeout":J
    .end local v6    # "timerMinute":Ljava/lang/String;
    .end local v7    # "timerSecond":Ljava/lang/String;
    .end local v8    # "values":[Ljava/lang/CharSequence;
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/SettingsListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1082
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Object"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "Yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockAutomatically"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1084
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1086
    :cond_c
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get3(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/SettingsListPreference;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1087
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1088
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "Object"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "No"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockAutomatically"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1091
    :cond_d
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1094
    :cond_e
    const-string/jumbo v9, "LockInstantlyWithPowerKeyOn"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1095
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1096
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockInstantlyWithPowerKeyOn"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1098
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1100
    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1101
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1102
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockInstantlyWithPowerKeyOn"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1105
    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1107
    :cond_11
    const-string/jumbo v9, "LockInstantlyWithPowerKeyOff"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1108
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_12

    .line 1109
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockInstantlyWithPowerKeyOff"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1111
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1113
    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get5(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1114
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1115
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockInstantlyWithPowerKeyOff"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1118
    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1120
    :cond_14
    const-string/jumbo v9, "AutoFactoryResetOn"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1121
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1122
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "AutoFactoryResetOn"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1124
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1126
    :cond_15
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1127
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1128
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "AutoFactoryResetOn"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1131
    :cond_16
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1133
    :cond_17
    const-string/jumbo v9, "AutoFactoryResetOff"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1134
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_18

    .line 1135
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "AutoFactoryResetOff"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1137
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1139
    :cond_18
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get1(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1140
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1141
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "AutoFactoryResetOff"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1144
    :cond_19
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1146
    :cond_1a
    const-string/jumbo v9, "LockNetworkAndSecurityOn"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 1147
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1148
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockNetworkAndSecurity"

    const-string/jumbo v11, "AlreadyOn"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1150
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1152
    :cond_1b
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1153
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 1154
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockNetworkAndSecurity"

    const-string/jumbo v11, "AlreadyOn"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1157
    :cond_1c
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1159
    :cond_1d
    const-string/jumbo v9, "LockNetworkAndSecurityOff"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 1160
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_1e

    .line 1161
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockNetworkAndSecurity"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1163
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1165
    :cond_1e
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get4(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/SwitchPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1166
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 1167
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "LockNetworkAndSecurity"

    const-string/jumbo v11, "AlreadyOff"

    const-string/jumbo v12, "no"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecureLockSettings"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1170
    :cond_1f
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 1172
    :cond_20
    const-string/jumbo v9, "SmartLock"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1173
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get7(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Landroid/preference/Preference;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-virtual {v10}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 1174
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 1175
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SecuredLockType"

    const-string/jumbo v11, "AlreadySet"

    const-string/jumbo v12, "yes"

    invoke-virtual {v9, v10, v11, v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    const-string/jumbo v10, "SmartLock"

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1178
    :cond_21
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu$1;->this$0:Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;

    invoke-static {v9}, Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;->-get2(Lcom/samsung/android/settings/lockscreen/SecuredLockSettingsMenu;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
