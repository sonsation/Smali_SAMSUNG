.class public Lcom/android/settings/datausage/BillingCycleSettings;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/BillingCycleSettings$1;,
        Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;,
        Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
    }
.end annotation


# instance fields
.field private mBillingCycle:Landroid/preference/Preference;

.field private mDataLimit:Landroid/preference/Preference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataWarning:Landroid/preference/Preference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnableDataLimit:Landroid/preference/SwitchPreference;

.field private mIsSPR:Z

.field private mIsTMB:Z

.field private mIsVZW:Z

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/BillingCycleSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/BillingCycleSettings;J)V
    .locals 1
    .param p1, "limitBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    .line 89
    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 90
    iput-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 524
    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/BillingCycleSettings$1;-><init>(Lcom/android/settings/datausage/BillingCycleSettings;)V

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 59
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 252
    const-string/jumbo v0, "BillingCycleSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyLimitBytes() limitBytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 251
    return-void
.end method

.method private updatePrefs()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 152
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v5}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 153
    .local v2, "policy":Landroid/net/NetworkPolicy;
    const/4 v1, 0x0

    .line 154
    .local v1, "isDataLimitRestrict":Z
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 155
    .local v0, "formatter":Ljava/util/Formatter;
    iget-object v5, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "%02d"

    new-array v8, v4, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 156
    iget v3, v2, Landroid/net/NetworkPolicy;->cycleDay:I

    .line 155
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    aput-object v3, v6, v9

    const v3, 0x7f0b1a7f

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v2, :cond_2

    .line 158
    iget-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 157
    :goto_1
    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isUserMobileDataLimitAllowed()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    :cond_0
    :goto_2
    if-eqz v1, :cond_4

    .line 166
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v9}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 167
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 183
    :goto_3
    if-eqz v2, :cond_6

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v6, v12

    if-nez v3, :cond_6

    .line 184
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 151
    :goto_4
    return-void

    :cond_1
    move v3, v4

    .line 156
    goto :goto_0

    .line 158
    :cond_2
    const-wide v6, 0x80000000L

    goto :goto_1

    .line 162
    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    .line 169
    :cond_4
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 170
    if-eqz v2, :cond_5

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v3, v6, v12

    if-eqz v3, :cond_5

    .line 171
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 175
    :cond_5
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 177
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 187
    :cond_6
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 248
    const/16 v0, 0x156

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 96
    new-instance v2, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "network_template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 101
    const v2, 0x7f08002f

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->addPreferencesFromResource(I)V

    .line 102
    const-string/jumbo v2, "billing_cycle"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    .line 103
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 104
    const-string/jumbo v2, "data_warning"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    .line 105
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 106
    const-string/jumbo v2, "set_data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    .line 107
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string/jumbo v2, "data_limit"

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/BillingCycleSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    .line 109
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 112
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "sSalesCode":Ljava/lang/String;
    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    .line 114
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    .line 115
    :cond_1
    const-string/jumbo v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "TMK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    .line 117
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b04a9

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setTitle(I)V

    .line 118
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b04aa

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    :cond_6
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v2, :cond_7

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 123
    const-string/jumbo v3, "enterprise_policy"

    .line 122
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 125
    :cond_7
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_8

    .line 126
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 130
    :cond_8
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "BillingCycle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 216
    iget-object v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEnableDataLimit:Landroid/preference/SwitchPreference;

    if-ne v7, p1, :cond_5

    .line 217
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 218
    .local v1, "enabled":Z
    if-eqz v1, :cond_4

    .line 220
    iget-boolean v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsVZW:Z

    if-eqz v7, :cond_0

    .line 221
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 241
    :goto_0
    const/4 v7, 0x1

    return v7

    .line 223
    :cond_0
    iget-object v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v7, v7, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v8, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v7, v8}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v6

    .line 224
    .local v6, "policy":Landroid/net/NetworkPolicy;
    if-nez v6, :cond_1

    return v9

    .line 226
    :cond_1
    iget-wide v8, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-double v8, v8

    const-wide v10, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v8, v10

    double-to-long v4, v8

    .line 229
    .local v4, "minLimitBytes":J
    const/4 v0, 0x5

    .line 230
    .local v0, "defaultLimitGB":I
    iget-boolean v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsSPR:Z

    if-eqz v7, :cond_2

    const/16 v0, 0x50

    .line 231
    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mIsTMB:Z

    if-eqz v7, :cond_3

    const/16 v0, 0x64

    .line 233
    :cond_3
    int-to-long v8, v0

    const-wide/32 v10, 0x40000000

    mul-long/2addr v8, v10

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 234
    .local v2, "limitBytes":J
    const-wide v8, 0x1900000000L

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 235
    invoke-direct {p0, v2, v3}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    goto :goto_0

    .line 239
    .end local v0    # "defaultLimitGB":I
    .end local v2    # "limitBytes":J
    .end local v4    # "minLimitBytes":J
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    :cond_4
    const-wide/16 v8, -0x1

    invoke-direct {p0, v8, v9}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    goto :goto_0

    .line 243
    .end local v1    # "enabled":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    return v9
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mBillingCycle:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 199
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;)V

    .line 200
    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataWarning:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 202
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)V

    .line 203
    return v1

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mDataLimit:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 205
    invoke-static {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Lcom/android/settings/datausage/BillingCycleSettings;Z)V

    .line 206
    return v1

    .line 210
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "BillingCycle"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 135
    return-void
.end method
