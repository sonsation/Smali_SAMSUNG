.class Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/ApnSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1106
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1105
    :goto_0
    return-void

    .line 1108
    :pswitch_0
    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v3, "RestoreApnUiHandler EVENT_RESTORE_DEFAULTAPN_COMPLETE"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v2}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1110
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 1112
    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v3, "RestoreApnUiHandler activity is null"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->-get8(Lcom/android/settings/ApnSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->-get8(Lcom/android/settings/ApnSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1114
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->-get8(Lcom/android/settings/ApnSettings;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1117
    :cond_0
    invoke-static {v5}, Lcom/android/settings/ApnSettings;->-set1(Z)Z

    .line 1118
    return-void

    .line 1122
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1123
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Lcom/android/settings/ApnSettings;->-wrap5(Lcom/android/settings/ApnSettings;Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_2

    .line 1127
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->-wrap0(Lcom/android/settings/ApnSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kddi_cpa_added"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1133
    :cond_2
    :goto_1
    sput-object v6, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 1136
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->-wrap3(Lcom/android/settings/ApnSettings;)V

    .line 1137
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v2}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1140
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->-get11(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnPreference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1141
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v2}, Lcom/android/settings/ApnSettings;->-get11(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    .line 1144
    :cond_3
    invoke-static {}, Lcom/android/settings/ApnSettings;->-get5()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1145
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    const/16 v3, 0x3e9

    invoke-static {v2, v3}, Lcom/android/settings/ApnSettings;->-wrap4(Lcom/android/settings/ApnSettings;I)V

    .line 1148
    :cond_4
    invoke-static {v5}, Lcom/android/settings/ApnSettings;->-set1(Z)Z

    .line 1151
    iget-object v2, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v2}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1152
    const v3, 0x7f0b13b9

    .line 1151
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1149
    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1128
    :catch_0
    move-exception v1

    .line 1129
    .local v1, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v3, "Put Setting DB fail"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
