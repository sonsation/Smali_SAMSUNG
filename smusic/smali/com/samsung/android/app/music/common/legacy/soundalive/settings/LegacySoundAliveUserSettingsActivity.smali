.class public Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "LegacySoundAliveUserSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;,
        Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$PagePosition;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

.field private mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private final mAudioPathChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 200
    new-instance v0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$1;-><init>(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAudioPathChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->isDisableExtended()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->setExtendedEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;)Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    return-object v0
.end method

.method private isDisableExtended()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBT()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathLineOut()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExtendedEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabSelected(IZ)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabEnabled(IZ)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->setExtendedEnabled(Z)V

    .line 109
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f110232

    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v3, 0x7f04009a

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 45
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 52
    new-instance v3, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    .line 53
    const v3, 0x7f120055

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 54
    .local v2, "viewPager":Landroid/support/v4/view/ViewPager;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 56
    const v3, 0x7f120049

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iput-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .line 57
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabBackgroundResource(I)V

    .line 58
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const v5, 0x7f020385

    .line 59
    invoke-virtual {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabViewBackgroundResource(I)V

    .line 60
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const v5, 0x7f1102c8

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabTextColorResource(I)V

    .line 61
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const v5, 0x7f110235

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabIndicatorColorResource(I)V

    .line 62
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabMode(I)V

    .line 63
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->isDisableExtended()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->setExtendedEnabled(Z)V

    .line 66
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAudioPathChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void

    :cond_1
    move v3, v4

    .line 64
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 78
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAudioPathChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onDestroy()V

    .line 73
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 98
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 85
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->resetSoundAlive()V

    goto :goto_0

    .line 88
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->mAdapter:Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity$UserSettingsPagerAdapter;->restoreSoundAlive()V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->finish()V

    goto :goto_0

    .line 93
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/legacy/soundalive/settings/LegacySoundAliveUserSettingsActivity;->finish()V

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f12027b -> :sswitch_1
        0x7f1205c4 -> :sswitch_0
        0x7f1205c5 -> :sswitch_2
    .end sparse-switch
.end method
