.class Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->updateAllAppsPreference()V
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
    .line 379
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 383
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 385
    .local v1, "desiredState":Z
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->setStatusPreference(Z)V

    .line 387
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 388
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 389
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-get3()Ljava/util/Hashtable;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v6}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/Preference;->getOrder()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 387
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 392
    .local v3, "mCurrentPreference":Landroid/preference/SwitchPreference;
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->-get3()Ljava/util/Hashtable;

    move-result-object v4

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;

    .line 393
    .local v0, "data":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;
    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v7, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v6, v7, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->setSensitive(Ljava/lang/String;IZ)Z

    .line 394
    sget-object v4, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->mBackend:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;

    iget-object v6, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v7, v0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 395
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 394
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 398
    .end local v0    # "data":Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$AppData;
    .end local v3    # "mCurrentPreference":Landroid/preference/SwitchPreference;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist$6;->this$0:Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;

    invoke-virtual {v4}, Lcom/samsung/android/settings/lockscreen/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1001cb

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eqz v1, :cond_4

    const/16 v4, 0x3e8

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 399
    return v5

    :cond_4
    move v4, v5

    .line 398
    goto :goto_3
.end method
