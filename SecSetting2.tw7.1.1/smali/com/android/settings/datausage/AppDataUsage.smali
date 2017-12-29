.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/AppDataUsage$1;,
        Lcom/android/settings/datausage/AppDataUsage$2;,
        Lcom/android/settings/datausage/AppDataUsage$3;,
        Lcom/android/settings/datausage/AppDataUsage$4;,
        Lcom/android/settings/datausage/AppDataUsage$5;,
        Lcom/android/settings/datausage/AppDataUsage$6;,
        Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;,
        Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static bSupportRoamingReduction:Z

.field private static mRestrictBackground:Landroid/preference/SwitchPreference;

.field private static mSelectDisplayUnit:I

.field private static sAllowBackgroundDataUsage:I

.field private static sAllowUnrestrictedDataUsage:I

.field private static sCycle:I


# instance fields
.field private final RESTRICTION_ALWAYS:I

.field private final RESTRICTION_DURING_ROAMING:I

.field private final RESTRICTION_NEVER:I

.field private bg_Restriction_resId:[I

.field private isClicked:Z

.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroid/preference/PreferenceCategory;

.field private mAppSettings:Landroid/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroid/preference/Preference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCyclePosition:I

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

.field private mDialogUDS:Landroid/app/DialogFragment;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEnd:J

.field private mForegroundUsage:Landroid/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsVZW:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcoFeature:Ljava/lang/String;

.field private mPcoSettingObserver:Landroid/database/ContentObserver;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mRestrictBackgroundPco:Landroid/preference/SwitchPreference;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

.field private mSavedUsage:Landroid/preference/Preference;

.field private mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

.field private mStart:J

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroid/preference/Preference;

.field private mUDSStateObserver:Landroid/database/ContentObserver;

.field private mUnrestrictedData:Landroid/preference/SwitchPreference;

.field private mUnrestrictedDataPco:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method static synthetic -get10()Landroid/preference/SwitchPreference;
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/datausage/AppDataUsage;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/settings/datausage/AppDataUsage;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settings/datausage/AppDataUsage;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get15()I
    .locals 1

    sget v0, Lcom/android/settings/datausage/AppDataUsage;->sCycle:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/AppDataUsage;)Landroid/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/AppDataUsage;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/AppDataUsage;)Landroid/app/DialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDialogUDS:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/AppDataUsage;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/datausage/AppDataUsage;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    return-wide p1
.end method

.method static synthetic -set3(Landroid/preference/SwitchPreference;)Landroid/preference/SwitchPreference;
    .locals 0

    sput-object p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic -set4(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/settings/datausage/AppDataUsage;Landroid/preference/SwitchPreference;)Landroid/preference/SwitchPreference;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    return-object p1
.end method

.method static synthetic -set6(I)I
    .locals 0

    sput p0, Lcom/android/settings/datausage/AppDataUsage;->sCycle:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "subFeature"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->bindData()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/datausage/AppDataUsage;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    .line 181
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    .line 182
    sget v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    .line 183
    sget v0, Lcom/android/settings/datausage/AppDataUsage;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    .line 193
    sput-boolean v2, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    .line 206
    sput v2, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 152
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 175
    iput v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    .line 188
    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    .line 195
    iput v3, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_NEVER:I

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_ALWAYS:I

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/datausage/AppDataUsage;->RESTRICTION_DURING_ROAMING:I

    .line 199
    const v0, 0x7f0b05aa

    .line 200
    const v1, 0x7f0b05ab

    .line 201
    const v2, 0x7f0b05ac

    .line 198
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->bg_Restriction_resId:[I

    .line 204
    iput-boolean v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mIsVZW:Z

    .line 209
    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 210
    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 218
    iput-boolean v3, p0, Lcom/android/settings/datausage/AppDataUsage;->isClicked:Z

    .line 219
    iput-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mDialogUDS:Landroid/app/DialogFragment;

    .line 222
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    .line 266
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUDSStateObserver:Landroid/database/ContentObserver;

    .line 838
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 837
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    .line 853
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$4;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 852
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 884
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$5;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 883
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1005
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$6;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 117
    return-void
.end method

.method private addUid(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 734
    const-string/jumbo v2, "com.carrieriq.iqagent"

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 729
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private bindData()V
    .locals 20

    .prologue
    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 746
    :cond_0
    const-wide/16 v14, 0x0

    .local v14, "foregroundBytes":J
    const-wide/16 v12, 0x0

    .line 749
    .local v12, "backgroundBytes":J
    const-string/jumbo v3, "cycle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 750
    const-string/jumbo v3, "divider_1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 763
    :goto_0
    add-long v18, v12, v14

    .line 764
    .local v18, "totalBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 766
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/preference/Preference;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/preference/Preference;

    invoke-static {v2, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/preference/Preference;

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSavedBytesByUid(I)J

    move-result-wide v16

    .line 773
    .local v16, "savedBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 778
    .end local v16    # "savedBytes":J
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mIsVZW:Z

    if-eqz v3, :cond_2

    sget v3, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    if-eqz v3, :cond_2

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 780
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {v4, v5, v14, v15}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    invoke-static {v4, v5, v12, v13}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 743
    :cond_2
    return-void

    .line 756
    .end local v2    # "context":Landroid/content/Context;
    .end local v12    # "backgroundBytes":J
    .end local v14    # "foregroundBytes":J
    .end local v18    # "totalBytes":J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 757
    .local v8, "now":J
    const/4 v10, 0x0

    .line 758
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 759
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v12, v4, v6

    .line 760
    .restart local v12    # "backgroundBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 761
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    .restart local v14    # "foregroundBytes":J
    goto/16 :goto_0
.end method

.method private getAppRestrictBackground()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 788
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v3, Lcom/android/settingslib/AppItem;->key:I

    .line 789
    .local v0, "uid":I
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 790
    .local v1, "uidPolicy":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "subFeature"    # Ljava/lang/String;

    .prologue
    .line 947
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUnrestrictData()Z
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    return v0

    .line 797
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getUserSetBackgroundUids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v2, "userRestrictUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_restrict_background_uidlist"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 553
    .local v3, "userRestrictUidsString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 554
    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "uidArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 556
    aget-object v4, v1, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 557
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    .end local v0    # "i":I
    .end local v1    # "uidArray":[Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private storeUserBackgroundSet(Z)V
    .locals 7
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUserSetBackgroundUids()Ljava/util/List;

    move-result-object v3

    .line 566
    .local v3, "userRestrictUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v5, Lcom/android/settingslib/AppItem;->key:I

    .line 567
    .local v1, "uid":I
    if-eqz p1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 569
    :cond_0
    if-nez p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 570
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 571
    .local v2, "uidInteger":Ljava/lang/Integer;
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 575
    .end local v2    # "uidInteger":Ljava/lang/Integer;
    :goto_0
    const-string/jumbo v4, ""

    .line 576
    .local v4, "userRestrictUidsString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 568
    .end local v0    # "i":I
    .end local v4    # "userRestrictUidsString":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_2
    return-void

    .line 579
    .restart local v0    # "i":I
    .restart local v4    # "userRestrictUidsString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "user_restrict_background_uidlist"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 564
    return-void
.end method

.method private updatePrefs()V
    .locals 2

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 650
    return-void
.end method

.method private updatePrefs(ZZ)V
    .locals 10
    .param p1, "restrictBackground"    # Z
    .param p2, "unrestrictData"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 656
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v8, :cond_7

    .line 657
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v8}, Landroid/app/enterprise/RestrictionPolicy;->isBackgroundDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 658
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v8}, Landroid/app/enterprise/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    .line 659
    :goto_0
    sget-object v8, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 660
    :cond_0
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 661
    :cond_1
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v8, v0}, Lcom/android/settings/SecDropDownPreference;->setEnabled(Z)V

    .line 662
    :cond_2
    if-nez v0, :cond_7

    .line 663
    sget-object v8, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 664
    :cond_3
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 665
    :cond_4
    return-void

    .line 657
    :cond_5
    const/4 v0, 0x0

    .local v0, "canEnableUI":Z
    goto :goto_0

    .end local v0    # "canEnableUI":Z
    :cond_6
    move v6, v7

    .line 663
    goto :goto_1

    .line 670
    :cond_7
    sget-object v8, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_8

    .line 671
    sget-object v9, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_d

    move v8, v6

    :goto_2
    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 673
    :cond_8
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_9

    .line 674
    if-eqz p1, :cond_e

    .line 677
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 685
    :goto_3
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 689
    :cond_9
    sget-boolean v8, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    if-eqz v8, :cond_b

    .line 690
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    if-eqz v8, :cond_b

    .line 691
    move v1, p1

    .line 692
    .local v1, "dataPolicy":Z
    const/4 v3, 0x0

    .line 693
    .local v3, "roamPolicy":I
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v8, :cond_a

    .line 694
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v9, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v9, v9, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/DataSaverBackend;->getRoamingReduction(I)I

    move-result v3

    .line 697
    :cond_a
    const/4 v4, 0x0

    .line 699
    .local v4, "selection":I
    if-eqz p1, :cond_f

    .line 700
    const/4 v4, 0x1

    .line 706
    :goto_4
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {v8, v4}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    .line 711
    .end local v1    # "dataPolicy":Z
    .end local v3    # "roamPolicy":I
    .end local v4    # "selection":I
    :cond_b
    const-string/jumbo v8, "trafficmanager"

    invoke-static {v8}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_c

    .line 712
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v8, Lcom/android/settingslib/AppItem;->key:I

    .line 713
    .local v5, "uid":I
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v8, v8, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v8, v5}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v2

    .line 714
    .local v2, "isEnableAppData":Z
    if-nez v2, :cond_11

    .line 715
    sget-object v7, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 716
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_c

    .line 717
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 654
    .end local v2    # "isEnableAppData":Z
    .end local v5    # "uid":I
    :cond_c
    :goto_5
    return-void

    :cond_d
    move v8, v7

    .line 671
    goto :goto_2

    .line 682
    :cond_e
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_3

    .line 702
    .restart local v1    # "dataPolicy":Z
    .restart local v3    # "roamPolicy":I
    .restart local v4    # "selection":I
    :cond_f
    if-nez v3, :cond_10

    .line 703
    const/4 v4, 0x2

    goto :goto_4

    .line 704
    :cond_10
    const/4 v4, 0x0

    goto :goto_4

    .line 720
    .end local v1    # "dataPolicy":Z
    .end local v3    # "roamPolicy":I
    .end local v4    # "selection":I
    .restart local v2    # "isEnableAppData":Z
    .restart local v5    # "uid":I
    :cond_11
    sget-object v8, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 721
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz v8, :cond_c

    .line 722
    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_12

    :goto_6
    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_12
    move v6, v7

    goto :goto_6
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 817
    const/16 v0, 0x157

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 940
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 277
    invoke-super/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 280
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigPco"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPcoFeature:Ljava/lang/String;

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 286
    .local v2, "args":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v26

    .line 287
    .local v26, "sSalesCode":Ljava/lang/String;
    const-string/jumbo v4, "VZW"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mIsVZW:Z

    .line 290
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "data_usage_display_unit"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/datausage/AppDataUsage;->mSelectDisplayUnit:I

    .line 293
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    if-eqz v2, :cond_7

    const-string/jumbo v4, "app_item"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/AppItem;

    :goto_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 299
    if-eqz v2, :cond_8

    const-string/jumbo v4, "network_template"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    :goto_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v4, :cond_1

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 304
    .local v11, "context":Landroid/content/Context;
    invoke-static {v11}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v4

    .line 303
    invoke-static {v11, v4}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 306
    .end local v11    # "context":Landroid/content/Context;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    if-nez v4, :cond_b

    .line 307
    if-eqz v2, :cond_9

    const-string/jumbo v4, "uid"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 309
    .local v27, "uid":I
    :goto_2
    const/4 v4, -0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_a

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 322
    .end local v27    # "uid":I
    :cond_2
    :goto_3
    const v4, 0x7f08001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->addPreferencesFromResource(I)V

    .line 324
    const-string/jumbo v4, "total_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/preference/Preference;

    .line 325
    const-string/jumbo v4, "foreground_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/preference/Preference;

    .line 326
    const-string/jumbo v4, "background_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/preference/Preference;

    .line 328
    const-string/jumbo v4, "saved_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    .line 330
    const-string/jumbo v4, "cycle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    .line 331
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mCyclePosition:I

    .line 332
    new-instance v4, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    if-lez v4, :cond_17

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 338
    .local v24, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 339
    .local v16, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 340
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 341
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 345
    .end local v16    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 346
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 347
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v4, "spr_roaming_reduction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 349
    const-string/jumbo v4, "divider_3"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 382
    :goto_5
    new-instance v4, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 383
    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/preference/Preference;

    .line 385
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 389
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    const/16 v19, 0x0

    .line 390
    .local v19, "matchFound":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "packageName$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 391
    .local v20, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 393
    const/16 v19, 0x1

    .line 397
    .end local v20    # "packageName":Ljava/lang/String;
    :cond_5
    if-nez v19, :cond_6

    .line 398
    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 399
    const-string/jumbo v4, "divider_2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 400
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/preference/Preference;

    .line 403
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_10

    .line 404
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/preference/PreferenceCategory;

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v22

    .line 406
    .local v22, "packageSize":I
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    move/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 407
    .local v9, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/android/settings/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    .line 408
    sget v5, Lcom/android/settings/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 407
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 409
    .local v3, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v15, v4, :cond_11

    .line 411
    :try_start_2
    new-instance v18, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;)V

    .line 412
    .local v18, "loader":Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v5}, Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 409
    .end local v18    # "loader":Lcom/android/settings/datausage/AppDataUsage$AppPrefLoader;
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 294
    .end local v3    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v9    # "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .end local v15    # "i":I
    .end local v19    # "matchFound":Z
    .end local v21    # "packageName$iterator":Ljava/util/Iterator;
    .end local v22    # "packageSize":I
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v13

    .line 295
    .local v13, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 298
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 300
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 308
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "uid"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    goto/16 :goto_2

    .line 313
    .restart local v27    # "uid":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 314
    new-instance v4, Lcom/android/settingslib/AppItem;

    move/from16 v0, v27

    invoke-direct {v4, v0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/settingslib/AppItem;->addUid(I)V

    goto/16 :goto_3

    .line 318
    .end local v27    # "uid":I
    :cond_b
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_2

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v4, v4, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v15}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 318
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 351
    .end local v15    # "i":I
    :cond_c
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    sput-object v4, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    .line 352
    sget-object v4, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 353
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    .line 354
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b059c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b059d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 361
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_SupportRoamingReduction"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    .line 362
    const-string/jumbo v4, "ro.home.operator.rrenabled"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 363
    const-string/jumbo v4, "AppDataUsage"

    const-string/jumbo v5, "Roaming reduction in chameleon = false"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    .line 367
    :cond_e
    sget-boolean v4, Lcom/android/settings/datausage/AppDataUsage;->bSupportRoamingReduction:Z

    if-eqz v4, :cond_f

    .line 368
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v4, "spr_roaming_reduction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 371
    const v6, 0x7f0b05aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 372
    const v6, 0x7f0b05ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 373
    const v6, 0x7f0b05ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/AppDataUsage;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 370
    invoke-virtual {v4, v5}, Lcom/android/settings/SecDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    const-string/jumbo v6, "0"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string/jumbo v6, "1"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "2"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Lcom/android/settings/SecDropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_5

    .line 378
    :cond_f
    const-string/jumbo v4, "spr_roaming_reduction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 413
    .restart local v3    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .restart local v9    # "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .restart local v15    # "i":I
    .restart local v19    # "matchFound":Z
    .restart local v21    # "packageName$iterator":Ljava/util/Iterator;
    .restart local v22    # "packageSize":I
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v14

    .line 414
    .local v14, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string/jumbo v4, "AppDataUsage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RejectedExecutionException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 418
    .end local v3    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v9    # "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .end local v14    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v15    # "i":I
    .end local v22    # "packageSize":I
    :cond_10
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 457
    .end local v19    # "matchFound":Z
    .end local v21    # "packageName$iterator":Ljava/util/Iterator;
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v4, :cond_12

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 459
    const-string/jumbo v5, "enterprise_policy"

    .line 458
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 461
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v4, :cond_13

    .line 462
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 466
    :cond_13
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getInstance()Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    .line 467
    sget-boolean v4, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->misSupportDataCompression:Z

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSecSummaryLayoutCHN:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->isDataCompressionEnabled()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 474
    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v5, "COMMON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 475
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackgroundPco:Landroid/preference/SwitchPreference;

    .line 476
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedDataPco:Landroid/preference/SwitchPreference;

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 478
    const-string/jumbo v5, "background_data_by_pco"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 480
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    .line 479
    const/4 v7, 0x0

    .line 477
    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 483
    const-string/jumbo v5, "background_data_by_pco"

    const/4 v6, 0x1

    .line 481
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 483
    const/4 v5, 0x1

    .line 481
    if-eq v4, v5, :cond_1e

    const/16 v25, 0x1

    .line 484
    .local v25, "restrictBackgroundbyPco":Z
    :goto_b
    if-eqz v25, :cond_16

    .line 485
    sget-object v4, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_15

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    sget-object v5, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 487
    const/4 v4, 0x0

    sput-object v4, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    .line 489
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_16

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 491
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    .line 498
    .end local v25    # "restrictBackgroundbyPco":Z
    :cond_16
    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 276
    return-void

    .line 421
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    const/4 v5, -0x4

    if-ne v4, v5, :cond_19

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00f6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 449
    :cond_18
    :goto_c
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 450
    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 451
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 452
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 453
    const-string/jumbo v4, "spr_roaming_reduction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 454
    const-string/jumbo v4, "divider_2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 455
    const-string/jumbo v4, "divider_3"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 423
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    const/4 v5, -0x5

    if-ne v4, v5, :cond_1a

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00fb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto :goto_c

    .line 425
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    const/16 v5, -0x64

    if-ne v4, v5, :cond_1b

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b01f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto :goto_c

    .line 428
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v4}, Lcom/android/settingslib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v29

    .line 429
    .local v29, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v28

    .line 430
    .local v28, "um":Landroid/os/UserManager;
    invoke-virtual/range {v28 .. v29}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v17

    .line 431
    .local v17, "info":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 434
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    if-eqz v17, :cond_18

    .line 435
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto/16 :goto_c

    .line 439
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/knox/SemPersonaManager;

    .line 440
    .local v23, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 441
    move-object/from16 v0, v17

    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerIcon(I)[B

    move-result-object v10

    .line 442
    .local v10, "bIcon":[B
    if-eqz v10, :cond_18

    .line 443
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    array-length v6, v10

    const/4 v7, 0x0

    invoke-static {v10, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_c

    .line 468
    .end local v10    # "bIcon":[B
    .end local v17    # "info":Landroid/content/pm/UserInfo;
    .end local v23    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v28    # "um":Landroid/os/UserManager;
    .end local v29    # "userId":I
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 469
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/datausage/AppDataUsage;->mSavedUsage:Landroid/preference/Preference;

    goto/16 :goto_a

    .line 481
    :cond_1e
    const/16 v25, 0x0

    goto/16 :goto_b

    .line 342
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v12

    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x1

    .line 822
    packed-switch p1, :pswitch_data_0

    .line 834
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 824
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 825
    .local v7, "calendar":Ljava/util/Calendar;
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 827
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    .line 828
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 829
    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 830
    const/4 v5, 0x5

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 825
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;IIII)V

    .line 831
    .local v0, "d":Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 832
    return-object v0

    .line 822
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onDataSaverChanged(Z)V
    .locals 0
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 928
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoFeature:Ljava/lang/String;

    const-string/jumbo v1, "COMMON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPcoSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 510
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 502
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 539
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 540
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 543
    :cond_0
    const-string/jumbo v0, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string/jumbo v1, "UDS"

    invoke-static {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MobileData"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 538
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v9, 0x7f0f04b6

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 584
    sget-object v3, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_7

    .line 585
    const-string/jumbo v3, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string/jumbo v6, "UDS"

    invoke-static {v3, v6}, Lcom/android/settings/datausage/AppDataUsage;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "udsState"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 587
    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->show(Lcom/android/settings/datausage/AppDataUsage;)Landroid/app/DialogFragment;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mDialogUDS:Landroid/app/DialogFragment;

    .line 588
    return v5

    .line 592
    :cond_0
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v7, v3, Lcom/android/settingslib/AppItem;->key:I

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v7, v8, v3}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    .line 593
    const-string/jumbo v3, "trafficmanager"

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 596
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/settings/datausage/AppDataUsage;->storeUserBackgroundSet(Z)V

    .line 598
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f008d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/settings/datausage/AppDataUsage;->sAllowBackgroundDataUsage:I

    .line 599
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 601
    .local v2, "screenId":I
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f04ba

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 602
    .local v0, "eventId":I
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    :cond_2
    invoke-static {v3, v2, v0, v4}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    .line 606
    .end local v0    # "eventId":I
    .end local v2    # "screenId":I
    :goto_2
    return v5

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    move v3, v5

    .line 592
    goto :goto_0

    :cond_4
    move v3, v5

    .line 596
    goto :goto_1

    .line 604
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/android/settings/datausage/AppDataUsage;->sAllowBackgroundDataUsage:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_2

    .line 607
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_b

    .line 608
    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v7, v3, Lcom/android/settingslib/AppItem;->key:I

    iget-object v8, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f008e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/android/settings/datausage/AppDataUsage;->sAllowUnrestrictedDataUsage:I

    .line 610
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 612
    .restart local v2    # "screenId":I
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0f04bb

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 613
    .restart local v0    # "eventId":I
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    move v4, v5

    :cond_8
    invoke-static {v3, v2, v0, v4}, Lcom/android/settings/Utils;->sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V

    .line 617
    .end local v0    # "eventId":I
    .end local v2    # "screenId":I
    :goto_3
    return v5

    .line 615
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v6, Lcom/android/settings/datausage/AppDataUsage;->sAllowUnrestrictedDataUsage:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    move v4, v5

    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_3

    .line 618
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_b
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mSPRRoamingReduction:Lcom/android/settings/SecDropDownPreference;

    if-ne p1, v3, :cond_c

    .line 620
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 621
    .local v1, "i":I
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    iget-object v6, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v1}, Lcom/android/settings/datausage/DataSaverBackend;->changeRoamingPolicyIfNeeded(ILjava/lang/String;I)V

    .line 622
    return v5

    .line 624
    .end local v1    # "i":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_c
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 633
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 635
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f04b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 637
    .local v1, "screenId":I
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f04b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 638
    .local v0, "eventId":I
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    .line 640
    .end local v0    # "eventId":I
    .end local v1    # "screenId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v4, Landroid/os/UserHandle;

    .line 641
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v5, v5, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 640
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 642
    const/4 v2, 0x1

    return v2

    .line 646
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 515
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 516
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-static {v1, v2}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 520
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 522
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    .line 523
    iput-boolean v4, p0, Lcom/android/settings/datausage/AppDataUsage;->isClicked:Z

    .line 524
    const-string/jumbo v0, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string/jumbo v1, "UDS"

    invoke-static {v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "udsState"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDialogUDS:Landroid/app/DialogFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDialogUDS:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    invoke-static {p0}, Lcom/android/settings/datausage/AppDataUsage$ConfirmUDSRestrict;->close(Lcom/android/settings/datausage/AppDataUsage;)V

    .line 529
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f04b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "MobileData"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 802
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 804
    const v0, 0x7f040037

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsage;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v7

    .line 805
    .local v7, "header":Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 806
    :goto_0
    const/4 v4, 0x0

    .line 808
    .local v4, "uid":I
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 811
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 812
    invoke-static {p0}, Lcom/android/settings/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v5

    .line 811
    invoke-static/range {v0 .. v8}, Lcom/android/settings/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    .line 801
    return-void

    .line 805
    .end local v4    # "uid":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "pkg":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :cond_1
    move v4, v6

    .line 808
    goto :goto_1

    .line 809
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 933
    :cond_0
    return-void
.end method
