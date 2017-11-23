.class public Lcom/android/settings/datausage/DataSaverSummary;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataSaverSummary$1;,
        Lcom/android/settings/datausage/DataSaverSummary$2;,
        Lcom/android/settings/datausage/DataSaverSummary$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mBixbyMsgHandler:Landroid/os/Handler;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUnrestrictedAccess:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataSaverSummary;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/DataSaverBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/DataSaverSummary;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/preference/Preference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataSaverSummary$1;-><init>()V

    .line 263
    sput-object v0, Lcom/android/settings/datausage/DataSaverSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 75
    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 286
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverSummary$2;-><init>(Lcom/android/settings/datausage/DataSaverSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 307
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverSummary$3;-><init>(Lcom/android/settings/datausage/DataSaverSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mBixbyMsgHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f0b19a0

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 164
    const/16 v0, 0x15c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 106
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 103
    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 182
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f080046

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverSummary;->addPreferencesFromResource(I)V

    .line 83
    const-string/jumbo v0, "unrestricted_access"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataSaverSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/preference/Preference;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 84
    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 86
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 87
    new-instance v0, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    .line 88
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 90
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "enterprise_policy"

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 99
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 79
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 173
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->release()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->release()V

    .line 149
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 143
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 141
    :cond_0
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 11

    .prologue
    const/16 v7, 0x64

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->isAdded()Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    const/4 v2, 0x0

    .line 191
    .local v2, "count":I
    iget-object v6, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v6}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v1

    .line 192
    .local v1, "allApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 193
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 194
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 196
    .local v3, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v6, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 197
    .local v5, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-lt v6, v7, :cond_2

    .line 198
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 193
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_2
    if-ge v5, v7, :cond_1

    .line 207
    :cond_3
    sget-object v6, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v6, v3}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    iget-object v6, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 211
    iget-object v6, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    .line 210
    check-cast v6, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v6, v6, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    if-eqz v6, :cond_1

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 215
    .end local v3    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .end local v5    # "userId":I
    :cond_4
    iget-object v6, p0, Lcom/android/settings/datausage/DataSaverSummary;->mUnrestrictedAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f130023

    .line 215
    invoke-virtual {v7, v9, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 240
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->pause()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DataSaver"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 111
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshWhitelist()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshBlacklist()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {v0}, Lcom/android/settings/datausage/AppStateDataUsageBridge;->resume()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DataSaver"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 110
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverSummary;->finish()V

    goto :goto_0
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 220
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    .line 158
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 178
    return-void
.end method
