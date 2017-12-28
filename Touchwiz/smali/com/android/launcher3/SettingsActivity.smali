.class public Lcom/android/launcher3/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
    }
.end annotation


# static fields
.field private static final BADGE_MANAGER_FRAGMENT:I = 0x1

.field private static final SETTINGS_FRAGMENT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SettingsActivity"

.field private static final VISIBLE_FRAGMENT:Ljava/lang/String; = "visible_fragment"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

.field private mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

.field private mVisibleFragment:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    .line 70
    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    .line 71
    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .line 72
    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    return-void
.end method

.method private startSettingApp()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 703
    const-string v3, "SettingsActivity"

    const-string v4, "launch Setting App"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    .local v2, "settingApp":Landroid/content/Intent;
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getSettingCN()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 707
    const/high16 v3, 0x10020000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 708
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 709
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "needSearchMenuInSub"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 712
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 713
    const v3, 0x7f050004

    const v4, 0x7f05000b

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/SettingsActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    .line 718
    invoke-static {v6}, Lcom/android/launcher3/util/GlobalSettingUtils;->setBackToSetting(Z)V

    .line 719
    return-void

    .line 714
    :catch_0
    move-exception v1

    .line 715
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public disableAllAppsBadge()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 198
    iget v1, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-nez v1, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->disableAllAppsBadge()V

    goto :goto_0
.end method

.method public enableAllAppsBadge(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 190
    iget v1, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-nez v1, :cond_1

    .line 191
    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->enableAllAppsbadge(Z)V

    goto :goto_0
.end method

.method public enableSingleAppBadge(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 213
    iget v1, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-nez v1, :cond_1

    .line 214
    :cond_0
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->enableAppBadge(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public hasAppsBadge()Z
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->hasAppsBadge()Z

    move-result v0

    goto :goto_0
.end method

.method public isAllAppsBadgeSwitchChecked()Z
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-nez v0, :cond_1

    .line 229
    :cond_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isAllAppsBadgeSwitchChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public isSingleAppBadgeChecked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 221
    iget v0, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-nez v0, :cond_1

    .line 222
    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->isSingleAppBadgeChecked(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "SettingsActivity"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    if-nez v0, :cond_1

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 134
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getStartSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getSettingMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity;->startSettingApp()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->showSettingsFragment()V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->startDatabaseLoader()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 79
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 81
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 82
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 85
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity;->setRequestedOrientation(I)V

    .line 91
    :goto_0
    const v1, 0x7f040050

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherFeature;->setSupportFlexibleGrid(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1100ef

    .line 96
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1100f0

    .line 98
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .line 99
    if-eqz p1, :cond_4

    .line 100
    const-string v1, "visible_fragment"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "visibleFragment":I
    if-nez v0, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->showSettingsFragment()V

    .line 111
    .end local v0    # "visibleFragment":I
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/4 v2, 0x6

    .line 112
    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 114
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherAppState;->setSettingsActivity(Lcom/android/launcher3/SettingsActivity;)V

    .line 115
    return-void

    .line 88
    :cond_2
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 103
    .restart local v0    # "visibleFragment":I
    :cond_3
    if-ne v0, v3, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->showBadgeManagerSettings()V

    goto :goto_1

    .line 107
    .end local v0    # "visibleFragment":I
    :cond_4
    const-string v1, "SettingsActivity"

    const-string v2, "onCreate: showHomeScreenSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->showSettingsFragment()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "SettingsActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 147
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->onBackPressed()V

    .line 148
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonSettingsActivity()Lcom/android/launcher3/home/AppsButtonSettingsActivity;

    move-result-object v0

    .line 63
    .local v0, "appsbuttonActivity":Lcom/android/launcher3/home/AppsButtonSettingsActivity;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->finish()V

    .line 65
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonSettingsActivity(Lcom/android/launcher3/home/AppsButtonSettingsActivity;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const-string v0, "visible_fragment"

    iget v1, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public showBadgeManagerSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 178
    const-string v3, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBadgeManagerSettings: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput v2, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    .line 180
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->updateList()V

    .line 181
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 182
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 183
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 184
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 186
    const v1, 0x7f09002e

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity;->setTitle(I)V

    .line 187
    return-void

    .line 178
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showSettingsFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    iput v2, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 161
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 165
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 167
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 169
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 173
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getStartSetting()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f09004c

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity;->setTitle(I)V

    .line 175
    return-void

    .line 173
    :cond_2
    const v1, 0x7f090057

    goto :goto_0
.end method
