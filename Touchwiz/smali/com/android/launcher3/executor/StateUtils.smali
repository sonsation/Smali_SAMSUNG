.class final Lcom/android/launcher3/executor/StateUtils;
.super Ljava/lang/Object;
.source "StateUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getStateIdFromViewId(I)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # I

    .prologue
    .line 13
    packed-switch p0, :pswitch_data_0

    .line 90
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->NONE:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "stateId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 15
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_0
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 18
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_1
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 21
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_2
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 24
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_3
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 27
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_4
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 30
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_5
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 33
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_6
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_WIDGET_SEARCH_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 36
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_7
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_WIDGET_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 39
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_8
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_HIDE_APPS_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_9
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 45
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_a
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_TIDY_UP_PREVIEW_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 48
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_b
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_AUTO_RE_ARRANGE_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_c
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_EDIT_REMOVE_PAGE_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_d
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_SEARCH_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_e
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 60
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_f
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_CHANGE_TO_HOMESCREEN_ONLY_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 63
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_10
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_CHANGE_TO_HOME_APPS_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_11
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_GRID_SETTING_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .restart local v0    # "stateId":Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_12
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .restart local v0    # "stateId":Ljava/lang/String;
    goto/16 :goto_0

    .line 72
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_13
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_FOLDER_ADD_ICON_SEARCH_RESULT:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .restart local v0    # "stateId":Ljava/lang/String;
    goto/16 :goto_0

    .line 75
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_14
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_STYLE_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .restart local v0    # "stateId":Ljava/lang/String;
    goto/16 :goto_0

    .line 78
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_15
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_AUTO_RE_ARRANGE_POPUP:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "stateId":Ljava/lang/String;
    goto/16 :goto_0

    .line 81
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_16
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_PAGE_WIDGET_EDIT_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "stateId":Ljava/lang/String;
    goto/16 :goto_0

    .line 84
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_17
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->HOME_SETTINGS_APPS_GRID_SETTING_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "stateId":Ljava/lang/String;
    goto/16 :goto_0

    .line 87
    .end local v0    # "stateId":Ljava/lang/String;
    :pswitch_18
    sget-object v1, Lcom/android/launcher3/executor/ExecutorState;->APPS_SORT_OPTION_VIEW:Lcom/android/launcher3/executor/ExecutorState;

    invoke-virtual {v1}, Lcom/android/launcher3/executor/ExecutorState;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .restart local v0    # "stateId":Ljava/lang/String;
    goto/16 :goto_0

    .line 13
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_10
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
