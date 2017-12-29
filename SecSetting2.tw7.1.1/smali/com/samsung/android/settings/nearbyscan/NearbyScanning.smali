.class public Lcom/samsung/android/settings/nearbyscan/NearbyScanning;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NearbyScanning.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarChildView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 185
    new-instance v0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$1;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 33
    return-void
.end method

.method private setLayoutOnClickForLogging()Z
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->getNearbyScanningSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 145
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getChildCount()I

    move-result v0

    .line 146
    .local v0, "childLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 147
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning$2;-><init>(Lcom/samsung/android/settings/nearbyscan/NearbyScanning;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    const/4 v2, 0x1

    return v2

    .line 146
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_2
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    const-string/jumbo v1, "NearbyScanning"

    const-string/jumbo v2, "onActivityCreated"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 125
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v1, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    .line 126
    iget-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->init()Z

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setLayoutOnClickForLogging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const-string/jumbo v1, "NearbyScanning"

    const-string/jumbo v2, "onActivityCreated.setLayoutOnClickForLogging Failed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 104
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->addPreferencesFromResource(I)V

    .line 100
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 108
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 110
    :cond_1
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string/jumbo v1, "NearbyScanning"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const v1, 0x7f0800af

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->addPreferencesFromResource(I)V

    .line 89
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->setHasOptionsMenu(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    .local v0, "ct":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/settings/nearbyscan/Util;->isBeaconManagerInstall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    :cond_0
    :goto_1
    iput-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mContext:Landroid/content/Context;

    .line 97
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 74
    return-void

    .line 82
    .end local v0    # "ct":Landroid/content/Context;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 83
    const v1, 0x7f0800ae

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 85
    :cond_2
    const v1, 0x7f0800ad

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 92
    .restart local v0    # "ct":Landroid/content/Context;
    :cond_3
    invoke-static {v0, v3}, Lcom/samsung/android/settings/nearbyscan/Util;->setDBInt(Landroid/content/Context;I)V

    .line 93
    const-string/jumbo v1, "Not Installed BeaconManager"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onDestroyView()Z

    .line 139
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mSwitchBarChildView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 60
    const-string/jumbo v0, "NearbyScanning"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onPause()Z

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NearbyDeviceScanning"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 50
    const-string/jumbo v0, "NearbyScanning"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mNearbyScanningEnabler:Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanningEnabler;->onResume()Z

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nearbyscan/NearbyScanning;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "NearbyDeviceScanning"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 48
    return-void
.end method
