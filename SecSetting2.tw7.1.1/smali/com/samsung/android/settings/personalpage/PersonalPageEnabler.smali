.class public final Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;
.super Landroid/preference/PreferenceActivity;
.source "PersonalPageEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/personalpage/PersonalPageEnabler$1;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private mPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Lcom/android/settings/widget/SwitchBar;

.field state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 34
    iput v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mPosition:I

    .line 38
    new-instance v0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler$1;-><init>(Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    .line 52
    iput v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->state:I

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.settings.PERSONALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p3, "in_main_menu"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    .line 58
    iput-boolean p3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    .line 56
    return-void
.end method


# virtual methods
.method public isLockTaskMode()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mActivityManager:Landroid/app/ActivityManager;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string/jumbo v0, "PersonalPageEnabler"

    const-string/jumbo v1, "isLockTaskMode() : true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    const-string/jumbo v0, "PersonalPageEnabler"

    const-string/jumbo v1, "isLockTaskMode() : false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 12
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const v11, 0x10008000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 135
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "personal_mode_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 136
    .local v5, "state":I
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "personal_mode_lock_type"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "LockType":I
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 139
    .local v1, "activity":Landroid/app/Activity;
    const-string/jumbo v6, "PersonalPageEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Switch CheckedChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->isLockTaskMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    if-nez v5, :cond_0

    .line 143
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 147
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0c63

    invoke-static {v6, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 148
    return-void

    .line 145
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    .line 151
    if-nez v5, :cond_2

    .line 152
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 156
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f0b085a

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 157
    return-void

    .line 154
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v10}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1

    .line 160
    :cond_3
    if-nez v5, :cond_4

    if-nez v0, :cond_4

    .line 161
    new-instance v3, Landroid/content/Intent;

    .line 162
    const-string/jumbo v6, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH"

    .line 161
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v3, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    return-void

    .line 167
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    if-eqz v5, :cond_5

    if-eq v5, v10, :cond_5

    .line 168
    const-string/jumbo v6, "PersonalPageEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "in progress - DB_PERSONAL_MODE_ON state :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_2
    return-void

    .line 169
    :cond_5
    if-eqz p2, :cond_7

    if-nez v5, :cond_7

    .line 170
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 171
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 173
    iget-boolean v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    if-eqz v6, :cond_6

    .line 174
    const-string/jumbo v6, "PersonalPageEnabler"

    const-string/jumbo v7, "Outter switch is on"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_3
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v4, "pIntent":Landroid/content/Intent;
    const-string/jumbo v6, "switchon"

    invoke-virtual {v4, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.personalpage.PersonalPageDisclaimer"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 185
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 176
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "pIntent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v6, "PersonalPageEnabler"

    const-string/jumbo v7, "inner switch is on"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 189
    :cond_7
    if-nez p2, :cond_8

    if-ne v5, v10, :cond_8

    .line 191
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 192
    const-string/jumbo v6, "PersonalPageEnabler"

    const-string/jumbo v7, "switch is off"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v5, 0x0

    .line 194
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 195
    .restart local v4    # "pIntent":Landroid/content/Intent;
    const-string/jumbo v6, "switchon"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.samsung.android.settings.personalpage.PersonalPageDisclaimer"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 200
    :catch_1
    move-exception v2

    .line 201
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 205
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v4    # "pIntent":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v6, "PersonalPageEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state and Switch is in equal state :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v6, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v6, v10}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.PERSONALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "PersonalPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string/jumbo v1, "PersonalPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PERSONALPAGE_ONOFF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 99
    const-string/jumbo v1, "changed"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 106
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void

    .line 101
    :cond_0
    const-string/jumbo v1, "changed"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 85
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 86
    .local v0, "state":I
    const-string/jumbo v1, "PersonalPageEnabler"

    const-string/jumbo v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    .line 88
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 89
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.settings.PERSONALPAGE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method
