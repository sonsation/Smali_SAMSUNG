.class Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->updateDropdownList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 15
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 246
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 247
    .local v14, "val":I
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-get7(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap2(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)I

    move-result v0

    if-ne v14, v0, :cond_0

    .line 248
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    const v1, 0x7f0b1c90

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap2(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)I

    move-result v0

    if-eq v14, v0, :cond_2

    const/4 v9, 0x1

    .line 252
    .local v9, "enabled":Z
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    const v1, 0x7f0b1c8e

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap2(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)I

    move-result v0

    if-ne v14, v0, :cond_3

    const/4 v12, 0x1

    .line 253
    .local v12, "show":Z
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 254
    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    if-eqz v12, :cond_4

    const/4 v0, 0x1

    .line 253
    :goto_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 256
    const-string/jumbo v2, "lock_screen_show_notifications"

    if-eqz v9, :cond_5

    const/4 v0, 0x1

    .line 255
    :goto_3
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    packed-switch v14, :pswitch_data_0

    .line 270
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-get2(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap1(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 272
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-ge v10, v0, :cond_7

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 274
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-get3()Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 272
    :cond_1
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 251
    .end local v9    # "enabled":Z
    .end local v10    # "i":I
    .end local v12    # "show":Z
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "enabled":Z
    goto :goto_0

    .line 252
    :cond_3
    const/4 v12, 0x0

    .restart local v12    # "show":Z
    goto :goto_1

    .line 254
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 256
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    const v1, 0x7f0b1c8e

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-set0(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)I

    goto :goto_4

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    const v1, 0x7f0b1c8f

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-set0(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)I

    goto :goto_4

    .line 266
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    const v1, 0x7f0b1c90

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-set0(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)I

    goto :goto_4

    .line 276
    .restart local v10    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/SwitchPreference;

    .line 277
    .local v11, "mCurrentPreference":Landroid/preference/SwitchPreference;
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-get3()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;

    .line 279
    .local v7, "data":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;
    sget-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    iget-object v1, v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v2, v7, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap1(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Z

    move-result v0

    invoke-virtual {v11, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_6

    .line 285
    .end local v7    # "data":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;
    .end local v11    # "mCurrentPreference":Landroid/preference/SwitchPreference;
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v0, v14}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-wrap3(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;I)Ljava/lang/String;

    move-result-object v13

    .line 286
    .local v13, "str":Ljava/lang/String;
    sget-boolean v0, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v0, :cond_8

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-get4(Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "VLST"

    invoke-static {v0, v1, v2, v13}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enable/disable display notification in the locked state of : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 293
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 290
    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 295
    if-nez v9, :cond_9

    const/4 v8, 0x2

    .line 296
    .local v8, "detail":I
    :goto_7
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$5;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 297
    const/4 v0, 0x1

    return v0

    .line 295
    .end local v8    # "detail":I
    :cond_9
    if-eqz v12, :cond_a

    const/4 v8, 0x0

    .restart local v8    # "detail":I
    goto :goto_7

    .end local v8    # "detail":I
    :cond_a
    const/4 v8, 0x1

    .restart local v8    # "detail":I
    goto :goto_7

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
