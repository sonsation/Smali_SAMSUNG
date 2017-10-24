.class public Lcom/android/settings/datausage/DataUsageSummary;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageSummary$1;,
        Lcom/android/settings/datausage/DataUsageSummary$2;,
        Lcom/android/settings/datausage/DataUsageSummary$3;,
        Lcom/android/settings/datausage/DataUsageSummary$4;,
        Lcom/android/settings/datausage/DataUsageSummary$5;,
        Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mIsDynamicUnits:Z

.field public static mSelectDisplayUnit:I


# instance fields
.field private ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

.field private isKnoxmode:Z

.field private mCheckPhoneBalance:Landroid/preference/Preference;

.field private mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

.field private mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

.field private mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageTemplate:I

.field private mDefaultTemplate:Landroid/net/NetworkTemplate;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIsATT:Z

.field private mIsCHNSmartManager:Z

.field private mIsSIMCardInserted:Z

.field private mIsSPR:Z

.field private mIsVZW:Z

.field private mLimitPreference:Landroid/preference/Preference;

.field private mMobileDataATT:Landroid/preference/Preference;

.field private mPcoFeature:Ljava/lang/String;

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRoamingATT:Landroid/preference/Preference;

.field private mRootView:Landroid/view/View;

.field private mSetDataPreference:Landroid/preference/Preference;

.field private mSetOperatorPreference:Landroid/preference/Preference;

.field private mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

.field private mTopUpPhoneBalance:Landroid/preference/Preference;

.field public summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/DataUsageSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/DataUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/DataUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/DataUsageSummary;Lcom/android/settings/datausage/DataSaverPreference;)Lcom/android/settings/datausage/DataSaverPreference;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    sput v0, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    .line 126
    sput-boolean v0, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    .line 1084
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$3;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$3;-><init>()V

    .line 1083
    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1096
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$4;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummary$4;-><init>()V

    .line 1095
    sput-object v0, Lcom/android/settings/datausage/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 116
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 160
    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    .line 171
    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 172
    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    .line 180
    iput-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 186
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/DataUsageSummary$1;-><init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    .line 1007
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$2;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1275
    new-instance v0, Lcom/android/settings/datausage/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageSummary$5;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 116
    return-void
.end method

.method private addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V
    .locals 8
    .param p1, "category"    # Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    .line 974
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080048

    const/4 v7, 0x0

    .line 973
    invoke-virtual {v4, v5, v6, v7}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 975
    .local v3, "rootPreferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 976
    .local v2, "preference_num":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 977
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 978
    .local v1, "pref":Landroid/preference/Preference;
    sub-int v4, v0, v2

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 979
    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 976
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 981
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    .line 982
    const-string/jumbo v4, "mobile_data_att"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    .line 983
    const-string/jumbo v4, "roaming_att"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/preference/Preference;

    .line 972
    return-void
.end method

.method private addEthernetSection()V
    .locals 4

    .prologue
    .line 652
    const v1, 0x7f08004c

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    .line 651
    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 653
    .local v0, "category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 650
    return-void
.end method

.method private addMobileSection(IZ)V
    .locals 8
    .param p1, "subId"    # I
    .param p2, "isPrimary"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 543
    const v4, 0x7f080049

    invoke-direct {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    .line 542
    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 544
    .local v0, "category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v4, p1, v5}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 545
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 546
    invoke-virtual {v0, p2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    .line 547
    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    .line 548
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addATTMobileSection(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    .line 549
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    if-eqz v4, :cond_a

    .line 550
    :cond_1
    const-string/jumbo v4, "alert_at_warning"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/AlertAtWarningPreference;

    .line 551
    .local v2, "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    invoke-virtual {v2, p0}, Lcom/android/settings/datausage/AlertAtWarningPreference;->setTargetFragment(Lcom/android/settings/datausage/DataUsageSummary;)V

    .line 559
    .end local v2    # "pref":Lcom/android/settings/datausage/AlertAtWarningPreference;
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_ShowDataSelectPopupOnBootup"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 561
    .local v1, "isSupportBootPopup":Z
    if-eqz v1, :cond_2

    const-string/jumbo v4, "XEC"

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 565
    :cond_2
    const-string/jumbo v4, "confirm_at_boot"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 568
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v4, :cond_e

    .line 569
    const-string/jumbo v4, "cellular_data_usage"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 570
    const-string/jumbo v4, "billing_preference"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 571
    const-string/jumbo v4, "set_used_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetDataPreference:Landroid/preference/Preference;

    .line 572
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 573
    const-string/jumbo v4, "operator_set"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetOperatorPreference:Landroid/preference/Preference;

    .line 575
    :cond_4
    const-string/jumbo v4, "restrict_background"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v3

    .line 577
    .local v3, "topUpPhoneRes":[Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 578
    const-string/jumbo v4, "top_up_phone_balance"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/preference/Preference;

    .line 579
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/preference/Preference;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 583
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-nez v4, :cond_5

    if-nez v3, :cond_d

    .line 584
    :cond_5
    const-string/jumbo v4, "check_phone_balance"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 597
    .end local v3    # "topUpPhoneRes":[Ljava/lang/String;
    :goto_3
    sget-boolean v4, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-nez v4, :cond_6

    .line 598
    const-string/jumbo v4, "data_usage_reminder"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 600
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 606
    :goto_4
    const-string/jumbo v4, "data_saving_chn"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/DataSavingChnPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    .line 607
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 608
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v4, :cond_7

    .line 609
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataSavingChnPreference;->bindDataSavingService()V

    .line 610
    const-string/jumbo v4, "DataUsageSummary"

    const-string/jumbo v5, " mDataSavingChnPreference bind Datasaving service"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_7
    :goto_5
    iget-boolean v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v4, :cond_12

    .line 622
    const-string/jumbo v4, "billing_preference"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 623
    const-string/jumbo v4, "data_usage_enable"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 624
    const-string/jumbo v4, "data_saving_chn"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 625
    const-string/jumbo v4, "data_usage_reminder"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 632
    :cond_8
    :goto_6
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isRoamingArea()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 633
    invoke-virtual {v0}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removeMobileDataPreference()V

    .line 541
    :cond_9
    return-void

    .line 554
    .end local v1    # "isSupportBootPopup":Z
    :cond_a
    const-string/jumbo v4, "alert_at_warning"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 562
    .restart local v1    # "isSupportBootPopup":Z
    :cond_b
    const-string/jumbo v4, "confirm_at_boot"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    .line 563
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 581
    .restart local v3    # "topUpPhoneRes":[Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "top_up_phone_balance"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 586
    :cond_d
    const-string/jumbo v4, "check_phone_balance"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/preference/Preference;

    .line 587
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/preference/Preference;

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 590
    .end local v3    # "topUpPhoneRes":[Ljava/lang/String;
    :cond_e
    const-string/jumbo v4, "billing_preference_chn"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 591
    const-string/jumbo v4, "restrict_app_data"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 592
    const-string/jumbo v4, "set_used_data"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v4, "restrict_background"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 594
    const-string/jumbo v4, "top_up_phone_balance"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v4, "check_phone_balance"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 601
    :cond_f
    const-string/jumbo v4, "operator_set"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 613
    :cond_10
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v4, :cond_11

    .line 614
    const-string/jumbo v4, "data_saving_chn"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 616
    :cond_11
    iput-object v6, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    goto/16 :goto_5

    .line 626
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 627
    const-string/jumbo v4, "data_saving_chn"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 628
    const-string/jumbo v4, "restrict_app_data"

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method private addWifiSection()V
    .locals 4

    .prologue
    .line 640
    const v1, 0x7f080050

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v0

    .line 639
    check-cast v0, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 641
    .local v0, "category":Lcom/android/settings/datausage/TemplatePreferenceCategory;
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 642
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v1, :cond_2

    .line 645
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v1, :cond_1

    .line 646
    const-string/jumbo v1, "network_restrictions"

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->removePreference(Ljava/lang/String;)V

    .line 638
    :cond_1
    return-void

    .line 643
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->initDataUsageReminder(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V

    goto :goto_0
.end method

.method private static formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "usageLevel"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 745
    new-instance v0, Landroid/text/SpannableString;

    .line 746
    const v4, 0x104009c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 747
    const-string/jumbo v5, "%1$s"

    const-string/jumbo v6, "^1"

    .line 746
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 747
    const-string/jumbo v5, "%2$s"

    const-string/jumbo v6, "^2"

    .line 746
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 745
    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 749
    .local v0, "amountTemplate":Landroid/text/SpannableString;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p2, p3, v8}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v3

    .line 751
    .local v3, "usedResult":Landroid/text/format/Formatter$BytesResult;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 752
    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v3, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v5, v4, v8

    .line 751
    invoke-static {v0, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 754
    .local v1, "formattedUsage":Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/SpannableString;

    const-string/jumbo v4, "%1$s"

    const-string/jumbo v5, "^1"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 755
    .local v2, "fullTemplate":Landroid/text/SpannableString;
    const-string/jumbo v4, "^1"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/settings/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 756
    new-array v4, v8, [Ljava/lang/CharSequence;

    .line 757
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    .line 756
    invoke-static {v2, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultSubId"    # I

    .prologue
    .line 932
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 933
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method public static getDefaultSubscriptionId(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 938
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 939
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_0

    .line 940
    return v4

    .line 942
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 943
    .local v2, "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v2, :cond_2

    .line 944
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 945
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 946
    return v4

    .line 948
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 950
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v2    # "subscriptionInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    return v3
.end method

.method public static getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultSubId"    # I

    .prologue
    const/4 v3, -0x1

    .line 954
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq p1, v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 955
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 956
    if-eq p1, v3, :cond_2

    .line 957
    :cond_1
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 959
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .line 958
    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 961
    .local v0, "mobileAll":Landroid/net/NetworkTemplate;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v2

    .line 960
    invoke-static {v0, v2}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    .line 962
    .end local v0    # "mobileAll":Landroid/net/NetworkTemplate;
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq p1, v3, :cond_3

    .line 963
    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    .line 964
    :cond_3
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 965
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2

    .line 967
    :cond_4
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    return-object v2
.end method

.method private getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 2
    .param p1, "subscriptionId"    # I

    .prologue
    .line 687
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 689
    .local v0, "mobileAll":Landroid/net/NetworkTemplate;
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v1

    .line 688
    invoke-static {v0, v1}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method public static hasEnableSimCard(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 884
    const/4 v0, 0x0

    .line 885
    .local v0, "count":I
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 886
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_0

    .line 887
    return v2

    .line 889
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 890
    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the ActiveSubscriptionInfoCount is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static hasMobileData(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 878
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 879
    const/4 v1, 0x0

    .line 878
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method public static hasReadyEnt1Radio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 911
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private static hasReadyEnterpriseNetwork(Landroid/content/Context;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkType"    # I

    .prologue
    .line 921
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v1

    .line 922
    .local v1, "slotId":I
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 923
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 925
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 926
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    .line 925
    if-eqz v3, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isSplitBillingEnabled()Z

    move-result v3

    .line 925
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 903
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 904
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private inflatePreferences(I)Landroid/preference/Preference;
    .locals 6
    .param p1, "resId"    # I

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    .line 673
    invoke-virtual {v3, v4, p1, v5}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 675
    .local v1, "rootPreferences":Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 676
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 679
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 680
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 682
    return-object v0
.end method

.method private initDataUsageReminder(Lcom/android/settings/datausage/TemplatePreferenceCategory;)V
    .locals 10
    .param p1, "category"    # Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 989
    const-string/jumbo v6, "data_usage_reminder"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    .line 991
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f08004f

    .line 990
    invoke-virtual {v6, v7, v8, v9}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 992
    .local v3, "rootPreferences":Landroid/preference/PreferenceScreen;
    invoke-virtual {p1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->getPreferenceCount()I

    move-result v2

    .line 993
    .local v2, "preference_num":I
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 994
    .local v1, "pref":Landroid/preference/Preference;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 995
    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 998
    .end local v1    # "pref":Landroid/preference/Preference;
    .end local v2    # "preference_num":I
    .end local v3    # "rootPreferences":Landroid/preference/PreferenceScreen;
    :cond_0
    const-string/jumbo v6, "data_usage_reminder"

    invoke-virtual {p0, v6}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 999
    .local v0, "dataUsageReminder":Landroid/preference/SwitchPreference;
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    const v7, 0x7f0b0f93

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1001
    const-string/jumbo v7, "data_usage_reminder"

    const/4 v8, -0x2

    .line 1000
    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1002
    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 988
    return-void

    :cond_1
    move v4, v5

    .line 1000
    goto :goto_0
.end method

.method private isRoamingArea()Z
    .locals 2

    .prologue
    .line 1045
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    const-string/jumbo v0, "oversea"

    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1048
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateState()V
    .locals 18

    .prologue
    .line 761
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 762
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 761
    invoke-virtual {v11, v12}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v5

    .line 763
    .local v5, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 764
    .local v2, "context":Landroid/content/Context;
    if-nez v5, :cond_0

    return-void

    .line 765
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    if-eqz v11, :cond_6

    .line 766
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    .line 767
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v2, v12, v14, v15}, Lcom/android/settings/datausage/DataUsageSummary;->formatTitle(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/CharSequence;

    move-result-object v12

    .line 766
    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 769
    sget-boolean v11, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    if-eqz v11, :cond_1

    .line 770
    new-instance v3, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    iget-wide v0, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v13, v14, v0, v1}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 771
    .local v3, "fullTemplate":Landroid/text/SpannableString;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v11, v12, v14, v15}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v3, v11, v12}, Lcom/android/settings/datausage/DataUsageSummary;->verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    invoke-virtual {v11, v3}, Lcom/samsung/android/settings/SecSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 775
    .end local v3    # "fullTemplate":Landroid/text/SpannableString;
    :cond_1
    iget-wide v6, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    .line 776
    .local v6, "limit":J
    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-gtz v11, :cond_2

    .line 777
    iget-wide v6, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    .line 779
    :cond_2
    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    cmp-long v11, v12, v6

    if-lez v11, :cond_3

    .line 780
    iget-wide v6, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    .line 782
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    iget-object v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/SecSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    const-wide/16 v12, 0x0

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 784
    invoke-static {v2, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 783
    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/settings/SecSummaryPreference;->setLabels(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    long-to-float v12, v12

    long-to-float v13, v6

    div-float/2addr v12, v13

    const/4 v13, 0x0

    .line 786
    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    sub-long v14, v6, v14

    long-to-float v14, v14

    long-to-float v15, v6

    div-float/2addr v14, v15

    .line 785
    invoke-virtual {v11, v12, v13, v14}, Lcom/samsung/android/settings/SecSummaryPreference;->setRatios(FFF)V

    .line 791
    .end local v6    # "limit":J
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    if-eqz v11, :cond_5

    .line 792
    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 793
    .local v10, "warning":Ljava/lang/String;
    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 794
    .local v8, "limit":Ljava/lang/String;
    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-ltz v11, :cond_8

    .line 795
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-gtz v11, :cond_7

    const v11, 0x7f0b1a7c

    :goto_1
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 796
    const/4 v14, 0x0

    aput-object v10, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    .line 795
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 803
    .end local v8    # "limit":Ljava/lang/String;
    .end local v10    # "warning":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string/jumbo v11, "DataUsageSummary"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateState warning : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  limit : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 805
    .local v9, "screen":Landroid/preference/PreferenceScreen;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_3
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    if-ge v4, v11, :cond_a

    .line 806
    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v11, v12}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 805
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 787
    .end local v4    # "i":I
    .end local v9    # "screen":Landroid/preference/PreferenceScreen;
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v11, :cond_4

    .line 788
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v11, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInfoData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 789
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v11, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    goto/16 :goto_0

    .line 796
    .restart local v8    # "limit":Ljava/lang/String;
    .restart local v10    # "warning":Ljava/lang/String;
    :cond_7
    const v11, 0x7f0b1a7d

    goto :goto_1

    .line 797
    :cond_8
    iget-wide v12, v5, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_9

    .line 798
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const v13, 0x7f0b04c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 800
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 809
    .end local v8    # "limit":Ljava/lang/String;
    .end local v10    # "warning":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v9    # "screen":Landroid/preference/PreferenceScreen;
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    if-eqz v11, :cond_b

    if-eqz v2, :cond_b

    .line 810
    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 811
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 818
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    if-eqz v11, :cond_d

    .line 819
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 820
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v11}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 823
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/datausage/DataSaverPreference;->setEnabled(Z)V

    .line 829
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    if-eqz v11, :cond_e

    .line 830
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 831
    const-string/jumbo v13, "mobile_data_question"

    const/4 v14, 0x1

    .line 830
    invoke-static {v11, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 831
    const/4 v13, 0x1

    .line 830
    if-ne v11, v13, :cond_11

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {v12, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 760
    :cond_e
    return-void

    .line 813
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 821
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/datausage/DataSaverPreference;->setEnabled(Z)V

    goto :goto_5

    .line 830
    :cond_11
    const/4 v11, 0x0

    goto :goto_6
.end method

.method private static verySmallSpanExcept(Landroid/text/SpannableString;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 8
    .param p0, "s"    # Landroid/text/SpannableString;
    .param p1, "exception"    # Ljava/lang/CharSequence;
    .param p2, "dynamic"    # Ljava/lang/Boolean;

    .prologue
    const/16 v7, 0x12

    const/4 v6, 0x0

    const v5, 0x3f111111

    .line 728
    const v1, 0x3f111111

    .line 729
    .local v1, "SIZE":F
    const/16 v0, 0x12

    .line 730
    .local v0, "FLAGS":I
    invoke-static {p0, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 731
    .local v3, "exceptionStart":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 732
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v6, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 737
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v3, v4

    .line 738
    .local v2, "exceptionEnd":I
    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 739
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {p0, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 735
    .end local v2    # "exceptionEnd":I
    :cond_3
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method


# virtual methods
.method public addEnt1Section(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v0

    .line 659
    .local v0, "hasEnterpriseData":Z
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 660
    :cond_0
    const v1, 0x7f08004b

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/DataUsageSummary;->inflatePreferences(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 663
    :cond_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    if-eqz v1, :cond_2

    .line 664
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileEnt1(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 665
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 664
    invoke-virtual {v1, v2, p1, v3}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 666
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->pushTemplates(Lcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    .line 667
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->setPrimary(Z)V

    .line 668
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->ebCategory:Lcom/android/settings/datausage/TemplatePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/settings/datausage/TemplatePreferenceCategory;->updateMobileCategory()V

    .line 657
    :cond_2
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 837
    const/16 v0, 0x25

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 853
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 854
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v1, 0x9

    invoke-virtual {v6, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    .line 858
    .local v9, "hasEthernet":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 859
    .local v0, "statsSession":Landroid/net/INetworkStatsSession;
    if-eqz v0, :cond_0

    .line 861
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    .line 860
    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v10

    .line 863
    .local v10, "ethernetBytes":J
    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :goto_0
    if-eqz v9, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 865
    .end local v10    # "ethernetBytes":J
    :cond_0
    const-wide/16 v10, 0x0

    .restart local v10    # "ethernetBytes":J
    goto :goto_0

    .line 869
    .end local v0    # "statsSession":Landroid/net/INetworkStatsSession;
    .end local v10    # "ethernetBytes":J
    :catch_0
    move-exception v8

    .line 870
    .local v8, "e":Ljava/lang/IllegalStateException;
    return v12

    .line 867
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 868
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v0    # "statsSession":Landroid/net/INetworkStatsSession;
    .restart local v10    # "ethernetBytes":J
    :cond_1
    move v1, v12

    .line 874
    goto :goto_1
.end method

.method public isVolte()Z
    .locals 2

    .prologue
    .line 1035
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 391
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 392
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    .line 390
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 229
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v12, "CscFeature_Common_ConfigPco"

    invoke-virtual {v9, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    .line 236
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "salesCode":Ljava/lang/String;
    const-string/jumbo v9, "ATT"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    iput-boolean v11, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    .line 243
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    const/16 v12, 0x64

    if-lt v9, v12, :cond_14

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_13

    move v9, v10

    .line 243
    :goto_1
    iput-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    .line 247
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->isKnoxmode:Z

    if-eqz v9, :cond_15

    .line 248
    :cond_1
    :goto_2
    iget-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v9, :cond_16

    sget v9, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    if-eqz v9, :cond_16

    move v9, v11

    :goto_3
    sput-boolean v9, Lcom/android/settings/datausage/DataUsageSummary;->mIsDynamicUnits:Z

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/datausage/DataUsageSummary;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    .line 252
    .local v2, "hasMobileData":Z
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/datausage/DataUsageSummary;->hasReadyEnt1Radio(Landroid/content/Context;)Z

    move-result v1

    .line 253
    .local v1, "hasEnterpriseData":Z
    new-instance v9, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 255
    const-string/jumbo v9, "DataUsageSummary"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "hasMobileData:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "mIsSIMCardInserted:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v9, :cond_17

    if-eqz v2, :cond_17

    iget-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v9, :cond_17

    .line 257
    const v9, 0x7f08004a

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    .line 261
    :goto_4
    const-string/jumbo v9, "usage"

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 263
    .local v8, "usage_category":Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 264
    .local v0, "defaultSubId":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, "hasMobileData":Z
    const/4 v1, 0x0

    .line 268
    .end local v1    # "hasEnterpriseData":Z
    .end local v2    # "hasMobileData":Z
    :cond_2
    iget-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 272
    :cond_3
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDefaultTemplate:Landroid/net/NetworkTemplate;

    .line 273
    if-eqz v2, :cond_19

    .line 274
    const-string/jumbo v9, "limit_summary"

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mLimitPreference:Landroid/preference/Preference;

    .line 282
    :cond_4
    :goto_6
    const/4 v5, 0x0

    .line 283
    .local v5, "restrictBackgroundbyPco":Z
    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v12, "COMMON"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 284
    const-string/jumbo v9, "restrict_background"

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreferencePco:Lcom/android/settings/datausage/DataSaverPreference;

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 286
    const-string/jumbo v12, "background_data_by_pco"

    invoke-static {v12}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 288
    iget-object v13, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    .line 285
    invoke-virtual {v9, v12, v10, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 291
    const-string/jumbo v12, "background_data_by_pco"

    .line 289
    invoke-static {v9, v12, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v11, :cond_1a

    const/4 v5, 0x1

    .line 295
    :cond_5
    :goto_7
    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    if-eqz v5, :cond_1b

    .line 296
    :cond_7
    if-eqz v8, :cond_8

    .line 297
    const-string/jumbo v9, "restrict_background"

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    iget-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v9, :cond_1c

    .line 312
    :cond_9
    if-eqz v2, :cond_a

    .line 313
    invoke-direct {p0, v0, v11}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)V

    .line 315
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    .line 316
    .local v3, "hasWifiRadio":Z
    if-eqz v3, :cond_b

    .line 317
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addWifiSection()V

    .line 319
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 320
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->addEthernetSection()V

    .line 324
    :cond_c
    if-eqz v1, :cond_d

    iget-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v9, :cond_21

    .line 335
    :cond_d
    if-eqz v2, :cond_24

    const v9, 0x7f0b1a79

    :goto_9
    iput v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataUsageTemplate:I

    .line 339
    const-string/jumbo v9, "status_header"

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/SecSummaryPreference;

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSummaryPreference:Lcom/samsung/android/settings/SecSummaryPreference;

    .line 340
    invoke-virtual {p0, v11}, Lcom/android/settings/datausage/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 343
    iget-boolean v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v9, :cond_e

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "data_usage_display_unit"

    invoke-static {v9, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    .line 348
    :cond_e
    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v9, :cond_f

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 350
    const-string/jumbo v10, "enterprise_policy"

    .line 349
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 352
    :cond_f
    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v9, :cond_10

    .line 353
    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 358
    :cond_10
    new-instance v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 228
    return-void

    .line 238
    .end local v0    # "defaultSubId":I
    .end local v3    # "hasWifiRadio":Z
    .end local v5    # "restrictBackgroundbyPco":Z
    .end local v8    # "usage_category":Landroid/preference/PreferenceCategory;
    :cond_11
    const-string/jumbo v9, "VZW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    iput-boolean v11, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    goto/16 :goto_0

    .line 239
    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v9

    if-eqz v9, :cond_0

    iput-boolean v11, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSPR:Z

    goto/16 :goto_0

    :cond_13
    move v9, v11

    .line 244
    goto/16 :goto_1

    :cond_14
    move v9, v10

    .line 243
    goto/16 :goto_1

    .line 247
    :cond_15
    iput-boolean v11, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    goto/16 :goto_2

    :cond_16
    move v9, v10

    .line 248
    goto/16 :goto_3

    .line 259
    .restart local v1    # "hasEnterpriseData":Z
    .local v2, "hasMobileData":Z
    :cond_17
    const v9, 0x7f080047

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->addPreferencesFromResource(I)V

    goto/16 :goto_4

    .line 269
    .end local v1    # "hasEnterpriseData":Z
    .end local v2    # "hasMobileData":Z
    .restart local v0    # "defaultSubId":I
    .restart local v8    # "usage_category":Landroid/preference/PreferenceCategory;
    :cond_18
    const/4 v2, 0x0

    .line 270
    .local v2, "hasMobileData":Z
    const/4 v1, 0x0

    .local v1, "hasEnterpriseData":Z
    goto/16 :goto_5

    .line 276
    .end local v1    # "hasEnterpriseData":Z
    .end local v2    # "hasMobileData":Z
    :cond_19
    if-eqz v8, :cond_4

    .line 277
    const-string/jumbo v9, "limit_summary"

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 289
    .restart local v5    # "restrictBackgroundbyPco":Z
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 300
    :cond_1b
    const-string/jumbo v9, "restrict_background"

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/datausage/DataSaverPreference;

    iput-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSaverPreference:Lcom/android/settings/datausage/DataSaverPreference;

    goto/16 :goto_8

    .line 304
    :cond_1c
    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v9, v9, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 305
    .local v7, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_1d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1e

    .line 306
    :cond_1d
    invoke-direct {p0, v0, v10}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)V

    .line 308
    :cond_1e
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-eqz v7, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_a

    .line 309
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isAdmin()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_20

    :cond_1f
    if-nez v4, :cond_20

    move v9, v11

    .line 309
    :goto_b
    invoke-direct {p0, v12, v9}, Lcom/android/settings/datausage/DataUsageSummary;->addMobileSection(IZ)V

    .line 308
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_20
    move v9, v10

    .line 310
    goto :goto_b

    .line 326
    .end local v4    # "i":I
    .end local v7    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v3    # "hasWifiRadio":Z
    :cond_21
    iget-object v9, p0, Lcom/android/settings/datausage/DataUsageSummary;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v9, v9, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 327
    .restart local v7    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_22

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_23

    .line 328
    :cond_22
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    .line 330
    :cond_23
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_c
    if-eqz v7, :cond_d

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_d

    .line 331
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 336
    .end local v4    # "i":I
    .end local v7    # "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_24
    if-eqz v3, :cond_25

    const v9, 0x7f0b1a7a

    goto/16 :goto_9

    .line 337
    :cond_25
    const v9, 0x7f0b1a7b

    goto/16 :goto_9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const v0, 0x7f140003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 403
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 399
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 365
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/datausage/DataUsageBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    .line 366
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_0

    .line 367
    const v0, 0x7f0401fc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 492
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v4, "COMMON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 498
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 500
    .local v0, "currentStatus":I
    const-string/jumbo v3, "DataUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDestroy, currentStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_3

    .line 502
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_auto_calibration_result"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 512
    .end local v0    # "currentStatus":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 513
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 514
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 503
    .end local v1    # "i":I
    .end local v2    # "screen":Landroid/preference/PreferenceScreen;
    .restart local v0    # "currentStatus":I
    :cond_3
    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 504
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v3, :cond_2

    .line 505
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->stopAutoCalibrationService()V

    goto :goto_0

    .line 503
    :cond_5
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    goto :goto_2

    .line 518
    .end local v0    # "currentStatus":I
    .restart local v1    # "i":I
    .restart local v2    # "screen":Landroid/preference/PreferenceScreen;
    :cond_6
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v3, :cond_7

    .line 519
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataSavingChnPreference;->unbindDataSavingService()V

    .line 523
    :cond_7
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 490
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 441
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 486
    return v6

    .line 443
    :pswitch_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v3, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.android.phone"

    .line 445
    const-string/jumbo v6, "com.android.phone.MobileNetworkSettings"

    .line 444
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 447
    return v8

    .line 453
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 454
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 455
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "data_usage_vzw_spr"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v8

    .line 459
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 466
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_2
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_1

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "data_usage_display_unit"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    .line 468
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 469
    const v5, 0x7f0b04bf

    .line 468
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 470
    sget v5, Lcom/android/settings/datausage/DataUsageSummary;->mSelectDisplayUnit:I

    .line 471
    new-instance v6, Lcom/android/settings/datausage/DataUsageSummary$6;

    invoke-direct {v6, p0}, Lcom/android/settings/datausage/DataUsageSummary$6;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    .line 470
    const v7, 0x7f0c00ba

    .line 468
    invoke-virtual {v4, v7, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 479
    .local v0, "displayUnitDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 481
    .end local v0    # "displayUnitDialog":Landroid/app/AlertDialog;
    :cond_1
    return v8

    .line 441
    :pswitch_data_0
    .packed-switch 0x7f1108ab
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 711
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 713
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DataUsage"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 710
    return-void

    .line 713
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    if-nez v1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 716
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 528
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 529
    .local v0, "value":Z
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mConfirmAtBootPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 531
    const-string/jumbo v4, "mobile_data_question"

    if-eqz v0, :cond_0

    move v1, v2

    .line 530
    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    :cond_1
    :goto_0
    return v2

    .line 532
    :cond_2
    const-string/jumbo v3, "data_usage_reminder"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 534
    const-string/jumbo v4, "data_usage_reminder"

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    const/4 v5, -0x2

    .line 533
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v4, 0x64

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 1198
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetDataPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_2

    .line 1199
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1200
    .local v8, "currentStatus":I
    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSetDataPreference click, currentStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v1, 0x2

    if-eq v8, v1, :cond_0

    const/4 v1, 0x3

    if-ne v8, v1, :cond_1

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0f89

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1203
    .local v7, "checking_string":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1204
    return v11

    .line 1206
    .end local v7    # "checking_string":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;->show(Lcom/android/settings/datausage/DataUsageSummary;)V

    .line 1207
    return v11

    .line 1209
    .end local v8    # "currentStatus":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mSetOperatorPreference:Landroid/preference/Preference;

    if-ne p2, v1, :cond_5

    .line 1210
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    sput v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;->sSubId:I

    .line 1211
    invoke-static {}, Lcom/android/settings/Utils;->isUserSetAutoCalibrationEnable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1212
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->showWarningDialog(Landroid/os/Bundle;Z)V

    .line 1220
    :cond_3
    :goto_0
    return v11

    .line 1214
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_3

    .line 1215
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1216
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const-class v1, Lcom/samsung/android/settings/datausage/trafficmanager/OperatorSettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 1217
    const v3, 0x7f0b0f86

    move-object v4, v2

    move-object v5, p0

    .line 1216
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1222
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mTopUpPhoneBalance:Landroid/preference/Preference;

    if-ne p2, v1, :cond_6

    .line 1223
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    :try_start_0
    const-string/jumbo v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mTopUpPhoneBalance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1232
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mCheckPhoneBalance:Landroid/preference/Preference;

    if-ne p2, v1, :cond_7

    .line 1233
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.lifeservice.action.LAUNCH"

    invoke-direct {v10, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1234
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1236
    :try_start_1
    const-string/jumbo v1, "DataUsageSummary"

    const-string/jumbo v2, "start the mCheckPhoneBalance"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1243
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mMobileDataATT:Landroid/preference/Preference;

    if-ne p2, v1, :cond_8

    .line 1244
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1245
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.Enhanced4GLTE"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1246
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-lt v1, v4, :cond_a

    .line 1248
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v10, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1256
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRoamingATT:Landroid/preference/Preference;

    if-ne p2, v1, :cond_9

    .line 1257
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 1258
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.phone"

    const-string/jumbo v2, "com.android.phone.InternationalEnhanced4GLTE"

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-lt v1, v4, :cond_b

    .line 1261
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v10, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1270
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 1228
    .restart local v10    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 1229
    .local v9, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTopUpPhoneBalance tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1238
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v9

    .line 1239
    .restart local v9    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCheckPhoneBalance tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1249
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v9

    .line 1250
    .restart local v9    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMobileDataATT tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1253
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1262
    :catch_3
    move-exception v9

    .line 1263
    .restart local v9    # "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "DataUsageSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRoamingATT tap exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1266
    .end local v9    # "e":Landroid/content/ActivityNotFoundException;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 409
    const v3, 0x7f1108ab

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 410
    .local v1, "mMenuCellularNetworks":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 411
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 416
    :cond_0
    const v3, 0x7f1108ad

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 417
    .local v0, "help":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 419
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    :cond_1
    :goto_0
    const v3, 0x7f1108ac

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 427
    .local v2, "showUnit":Landroid/view/MenuItem;
    if-eqz v2, :cond_2

    .line 428
    iget-boolean v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsVZW:Z

    if-eqz v3, :cond_4

    .line 429
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 407
    :cond_2
    :goto_1
    return-void

    .line 421
    .end local v2    # "showUnit":Landroid/view/MenuItem;
    :cond_3
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 431
    .restart local v2    # "showUnit":Landroid/view/MenuItem;
    :cond_4
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 694
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 695
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    .line 698
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->isVolte()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageSummary;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "DataUsage"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 693
    return-void

    .line 698
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsATT:Z

    if-nez v1, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 701
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 374
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 375
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsCHNSmartManager:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mIsSIMCardInserted:Z

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    .line 377
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setDataSavingChnPreference(Lcom/android/settings/datausage/DataSavingChnPreference;)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initView(Landroid/view/View;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->changeLayoutOrientation(I)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInstance(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary;->summaryLayoutChn:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSavingChnPreference;->setSecSummaryLayoutCHN(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    .line 373
    :cond_0
    return-void
.end method

.method public updateDataUsage()V
    .locals 2

    .prologue
    .line 841
    const-string/jumbo v0, "DataUsageSummary"

    const-string/jumbo v1, "updateDataUsage "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummary;->updateState()V

    .line 840
    return-void
.end method
