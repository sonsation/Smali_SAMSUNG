.class Lcom/android/server/policy/GlobalActions$14;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # I
    .param p5, "$anonymous3"    # I
    .param p6, "$anonymous4"    # I

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    .line 1131
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1259
    :cond_0
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1260
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1261
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$14;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set1(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1254
    :cond_1
    return-void

    .line 1260
    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1288
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 11

    .prologue
    const v10, 0x1040870

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 1137
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v6, "in onPress of AirplaneMode"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v6, "com.android.service.GlobalAction"

    const-string/jumbo v7, "0002"

    const-string/jumbo v8, "AirplaneMode"

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap8(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get37(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1140
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get61(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1141
    return-void

    .line 1144
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-boolean v4, v4, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    if-eqz v4, :cond_1

    .line 1145
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->-get42(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1146
    return-void

    .line 1150
    :cond_1
    const-string/jumbo v4, "CTC"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get55()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap5(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1151
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "DSNETWORK"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 1152
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4, v10}, Lcom/android/server/policy/GlobalActions;->showErrorMessage(I)V

    .line 1153
    return-void

    .line 1154
    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "DUALMODE_SETTING"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 1155
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4, v10}, Lcom/android/server/policy/GlobalActions;->showErrorMessage(I)V

    .line 1156
    return-void

    .line 1160
    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v6, "VZW"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get55()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1161
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1162
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v7, "usb"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    invoke-static {v6, v4}, Lcom/android/server/policy/GlobalActions;->-set17(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;

    .line 1163
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get66(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1165
    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get66(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get66(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v4

    :goto_0
    invoke-static {v6, v4}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1169
    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v6, "isSettingsChangesAllowed"

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get60(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->-wrap12(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1170
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v6, "isAirplaneModeAllowed"

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->-get60(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/policy/GlobalActions;->-wrap12(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1169
    if-eqz v4, :cond_7

    .line 1172
    :cond_5
    const-string/jumbo v4, "GlobalActions"

    const-string/jumbo v5, "restricted by MDM "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    return-void

    :cond_6
    move v4, v5

    .line 1165
    goto :goto_0

    .line 1177
    :cond_7
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1180
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v2, -0x1

    .line 1181
    .local v2, "resTitleId":I
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v5, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v4, v5, :cond_c

    .line 1182
    const v2, 0x10407b5

    .line 1183
    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get55()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1184
    const v2, 0x104087f

    .line 1195
    :cond_8
    :goto_1
    const/4 v1, -0x1

    .line 1197
    .local v1, "resOnMessageId":I
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap10(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1198
    const v1, 0x10407bc

    .line 1208
    :goto_2
    const-string/jumbo v4, "VZW"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get55()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1212
    const v1, 0x1040880

    .line 1214
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, v9}, Lcom/android/server/policy/GlobalActions;->-set13(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1218
    :cond_9
    const/4 v0, -0x1

    .line 1219
    .local v0, "resOffMessageId":I
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1220
    const v0, 0x10407ba

    .line 1225
    :goto_3
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap9(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_a
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v4

    sget-object v5, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v4, v5, :cond_11

    .line 1227
    :cond_b
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, p0, v2, v1, v0}, Lcom/android/server/policy/GlobalActions;->-wrap16(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    .line 1134
    :goto_4
    return-void

    .line 1187
    .end local v0    # "resOffMessageId":I
    .end local v1    # "resOnMessageId":I
    :cond_c
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-get2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1188
    const v2, 0x10407b6

    goto :goto_1

    .line 1190
    :cond_d
    const v2, 0x1040145

    goto :goto_1

    .line 1200
    .restart local v1    # "resOnMessageId":I
    :cond_e
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-wrap2(Lcom/android/server/policy/GlobalActions;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1201
    const v1, 0x1040882

    .line 1202
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v4, v9}, Lcom/android/server/policy/GlobalActions;->-set12(Lcom/android/server/policy/GlobalActions;Z)Z

    goto :goto_2

    .line 1204
    :cond_f
    const v1, 0x10407b7

    goto :goto_2

    .line 1222
    .restart local v0    # "resOffMessageId":I
    :cond_10
    const v0, 0x10407b9

    goto :goto_3

    .line 1226
    :cond_11
    const-string/jumbo v4, "americano"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get56()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1225
    if-nez v4, :cond_b

    .line 1226
    const-string/jumbo v4, "mocha"

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get56()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1225
    if-nez v4, :cond_b

    .line 1229
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4, v9}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    goto :goto_4
.end method

.method onToggle(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 1235
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get26(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1236
    const-string/jumbo v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1235
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->-set14(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1240
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1241
    .local v1, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1243
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    .end local v1    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1244
    .restart local v1    # "ecmDialogIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "GlobalActions"

    const-string/jumbo v3, "ActivityNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1248
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "ecmDialogIntent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAirplaneModeOn : onToggle : changeAirplaneModeSystemSetting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v2, p1}, Lcom/android/server/policy/GlobalActions;->-wrap14(Lcom/android/server/policy/GlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1270
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1275
    const-string/jumbo v0, "lock"

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$14;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get11(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "missing_phone_lock"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    return v3

    .line 1279
    :cond_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get47()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    return v3

    .line 1282
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x1

    return v0
.end method
