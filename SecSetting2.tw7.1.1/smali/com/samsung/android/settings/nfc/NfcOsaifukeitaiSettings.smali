.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NfcOsaifukeitaiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final CSC_SALES_CODE:Ljava/lang/String;

.field private final OMC_SALES_CODE:Ljava/lang/String;

.field private final carrier:Ljava/lang/String;

.field private mABeam:Landroid/preference/PreferenceScreen;

.field private mCashbee:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

.field private mLockNumInit:Landroid/preference/PreferenceScreen;

.field private mLockNumchg:Landroid/preference/PreferenceScreen;

.field private mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

.field private mNfcRemotelock:Landroid/preference/PreferenceScreen;

.field private mNfcTypeSettings:Landroid/preference/PreferenceScreen;

.field private mNfclock:Landroid/preference/PreferenceScreen;

.field private mRWp2p:Landroid/preference/PreferenceScreen;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mSetLayout:Z

.field myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    .line 71
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->CSC_SALES_CODE:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->carrier:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 80
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 81
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    .line 82
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    .line 83
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 84
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 85
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 86
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 87
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 88
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    .line 89
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mSetLayout:Z

    .line 67
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[S] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    .line 111
    .local v9, "actionBar":Landroid/app/ActionBar;
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    .line 113
    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->addPreferencesFromResource(I)V

    .line 115
    const-string/jumbo v0, "toggle_osaifukeitai_lock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    .line 116
    const-string/jumbo v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    .line 117
    const-string/jumbo v0, "toggle_android_beam"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    .line 118
    const-string/jumbo v0, "nfc_type_settings_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    .line 119
    const-string/jumbo v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 120
    const-string/jumbo v0, "toggle_nfc_mobile_cashbee"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    .line 121
    const-string/jumbo v0, "toggle_lock_number_change"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    .line 122
    const-string/jumbo v0, "toggle_lock_number_initialization"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    .line 123
    const-string/jumbo v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    .line 124
    const-string/jumbo v0, "toggle_osaifukeitai_remotelock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->carrier:Ljava/lang/String;

    const-string/jumbo v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcTypeSettings:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mDcmPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsDCM;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->onCreate(Landroid/content/Context;)V

    .line 145
    const v0, 0x7f0b1218

    invoke-virtual {v9, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 148
    :cond_1
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[E] onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 127
    :cond_2
    const-string/jumbo v1, "KDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    const-string/jumbo v0, "SENN82AB"

    const-string/jumbo v1, "S3FWRN5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcOsaifuSettingsData:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getMobileCashbee_DisplayJudging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    :goto_1
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumchg:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRoot:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsKDI;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto :goto_0

    .line 127
    :cond_3
    const-string/jumbo v1, "SBM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfclock:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mRWp2p:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mABeam:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mNfcRemotelock:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mGlobalPaymentSettings:Landroid/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;-><init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->mCashbee:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 174
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->onPause(Landroid/content/Context;)V

    .line 181
    :cond_0
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 169
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 156
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[S] resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->myNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettings;->onResume(Landroid/content/Context;)V

    .line 166
    const-string/jumbo v0, "[NfcOsaifukeitaiSettings]"

    const-string/jumbo v1, "[E] resume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 151
    return-void
.end method
