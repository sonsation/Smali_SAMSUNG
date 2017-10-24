.class Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 869
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "stateId":Ljava/lang/String;
    const-string/jumbo v6, "ToggleMagnifierPreferenceFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStateReceived : stateId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 873
    const-string/jumbo v7, "finger_magnifier"

    .line 872
    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_0

    .line 873
    const/4 v3, 0x1

    .line 874
    .local v3, "newstate":Z
    :goto_0
    const-string/jumbo v6, "MagnifierWindowOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 876
    if-eqz v3, :cond_7

    .line 877
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "AlreadyOn"

    .line 878
    const-string/jumbo v9, "yes"

    .line 877
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 880
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 881
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 880
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1080
    :goto_1
    return-void

    .line 873
    .end local v3    # "newstate":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "newstate":Z
    goto :goto_0

    .line 874
    :cond_1
    const-string/jumbo v6, "MagnifierWindowOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 893
    if-nez v3, :cond_9

    .line 894
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "AlreadyOff"

    .line 895
    const-string/jumbo v9, "Yes"

    .line 894
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 897
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 898
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 897
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 874
    :cond_2
    const-string/jumbo v6, "ZoomPercentageSetMax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 911
    if-eqz v3, :cond_d

    .line 913
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    .line 912
    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 914
    .local v0, "currentProgress":I
    if-ne v0, v12, :cond_b

    .line 915
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 916
    const-string/jumbo v8, "AlreadyMaximum"

    const-string/jumbo v9, "yes"

    .line 915
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 918
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 919
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 918
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    .line 874
    .end local v0    # "currentProgress":I
    :cond_3
    const-string/jumbo v6, "ZoomPercentageSetMin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 939
    if-eqz v3, :cond_10

    .line 941
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    .line 940
    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 942
    .restart local v0    # "currentProgress":I
    if-nez v0, :cond_e

    .line 943
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 944
    const-string/jumbo v8, "AlreadyMinimum"

    const-string/jumbo v9, "yes"

    .line 943
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 946
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 947
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 946
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 874
    .end local v0    # "currentProgress":I
    :cond_4
    const-string/jumbo v6, "ZoomPercentageSetIncrease"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 966
    if-eqz v3, :cond_13

    .line 968
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    .line 967
    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 969
    .restart local v0    # "currentProgress":I
    if-ne v0, v12, :cond_11

    .line 970
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 971
    const-string/jumbo v8, "AlreadyMaximum"

    const-string/jumbo v9, "yes"

    .line 970
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 973
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 974
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 973
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 874
    .end local v0    # "currentProgress":I
    :cond_5
    const-string/jumbo v6, "ZoomPercentageSetDecrease"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 993
    if-eqz v3, :cond_16

    .line 995
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "hover_zoom_value"

    .line 994
    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 996
    .restart local v0    # "currentProgress":I
    if-nez v0, :cond_14

    .line 997
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 998
    const-string/jumbo v8, "AlreadyMinimum"

    const-string/jumbo v9, "yes"

    .line 997
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1000
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1001
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1000
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 874
    .end local v0    # "currentProgress":I
    :cond_6
    const-string/jumbo v6, "MagnifierSize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1020
    const/4 v4, 0x0

    .line 1021
    .local v4, "paramSize":I
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_17

    .line 1023
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1039
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1040
    const-string/jumbo v7, "hover_zoom_magnifier_size"

    const/4 v8, 0x2

    .line 1039
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1041
    .local v1, "currentSize":I
    if-ne v1, v4, :cond_18

    .line 1042
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1044
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1045
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1044
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 883
    .end local v1    # "currentSize":I
    .end local v4    # "paramSize":I
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 884
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "AlreadyOn"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 887
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get4()Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 888
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 889
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 888
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 900
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 901
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    const-string/jumbo v8, "AlreadyOff"

    .line 902
    const-string/jumbo v9, "no"

    .line 901
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 905
    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get4()Lcom/android/settings/widget/SwitchBar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 906
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 907
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 906
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 922
    .restart local v0    # "currentProgress":I
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 923
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 924
    const-string/jumbo v8, "AlreadyMaximum"

    const-string/jumbo v9, "no"

    .line 923
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 927
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v6, v12}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    .line 928
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 929
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 928
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 932
    .end local v0    # "currentProgress":I
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 934
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 935
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 934
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 949
    .restart local v0    # "currentProgress":I
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 950
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 951
    const-string/jumbo v8, "AlreadyMinimum"

    const-string/jumbo v9, "no"

    .line 950
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 954
    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    .line 955
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 956
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 955
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 959
    .end local v0    # "currentProgress":I
    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 961
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 962
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 961
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 976
    .restart local v0    # "currentProgress":I
    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 977
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 978
    const-string/jumbo v8, "AlreadyMaximum"

    const-string/jumbo v9, "no"

    .line 977
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 981
    :cond_12
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    .line 982
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 983
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 982
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 986
    .end local v0    # "currentProgress":I
    :cond_13
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 988
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 989
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 988
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1003
    .restart local v0    # "currentProgress":I
    :cond_14
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1004
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ZoomPercentage"

    .line 1005
    const-string/jumbo v8, "AlreadyMinimum"

    const-string/jumbo v9, "no"

    .line 1004
    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1008
    :cond_15
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    .line 1009
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1010
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1009
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1013
    .end local v0    # "currentProgress":I
    :cond_16
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1015
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1016
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1015
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1024
    .restart local v4    # "paramSize":I
    :catch_0
    move-exception v2

    .line 1025
    .local v2, "e":Ljava/lang/NumberFormatException;
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1027
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1028
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1027
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 1029
    return-void

    .line 1032
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_17
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1034
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1035
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1034
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1049
    .restart local v1    # "currentSize":I
    :cond_18
    if-lt v4, v11, :cond_19

    const/4 v6, 0x3

    if-le v4, v6, :cond_1a

    .line 1050
    :cond_19
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1052
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1053
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1052
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1057
    :cond_1a
    if-eqz v3, :cond_1c

    .line 1058
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1059
    const-string/jumbo v7, "hover_zoom_magnifier_size"

    .line 1058
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1060
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setValue(Ljava/lang/String;)V

    .line 1061
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/accessibility/MagnifierWindowSizePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1063
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1064
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierSize"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1067
    :cond_1b
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1068
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1067
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1070
    :cond_1c
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindowState"

    const-string/jumbo v8, "State"

    const-string/jumbo v9, "off"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "MagnifierWindow"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1072
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    .line 1073
    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 1072
    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1

    .line 1077
    .end local v1    # "currentSize":I
    .end local v4    # "paramSize":I
    :cond_1d
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_1
.end method
