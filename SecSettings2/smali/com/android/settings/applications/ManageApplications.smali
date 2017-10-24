.class public Lcom/android/settings/applications/ManageApplications;
.super Lcom/samsung/android/settings/SecInstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$1;,
        Lcom/android/settings/applications/ManageApplications$2;,
        Lcom/android/settings/applications/ManageApplications$3;,
        Lcom/android/settings/applications/ManageApplications$4;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/settings/applications/ManageApplications$SectionInfo;,
        Lcom/android/settings/applications/ManageApplications$SummaryProvider;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_LABELS:[I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static hide_app_list:Ljava/lang/String;

.field private static hide_app_notification_list:[Ljava/lang/String;

.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

.field private static mHideApp:Z

.field private static mSkipApp:Z


# instance fields
.field final handler:Landroid/os/Handler;

.field public mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mFuncDesc:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

.field private mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/applications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->mSkipApp:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/ManageApplications;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/applications/ManageApplications;->mSkipApp:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/applications/ManageApplications;->hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->addRelativeView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->removeRelativeView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v1, 0x10

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 156
    const-string/jumbo v0, "ManageApplications"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    .line 207
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    .line 227
    new-array v0, v1, [Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 228
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 229
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 228
    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v1, v0, v4

    .line 230
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 231
    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 230
    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 232
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 233
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v5

    .line 234
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 235
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 236
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 237
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 238
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 239
    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 240
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 241
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 242
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 243
    sget-object v1, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 244
    sget-object v1, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 245
    sget-object v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 227
    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 256
    sput-boolean v4, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    .line 257
    sput-boolean v4, Lcom/android/settings/applications/ManageApplications;->mSkipApp:Z

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    .line 2044
    new-instance v0, Lcom/android/settings/applications/ManageApplications$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ManageApplications$2;-><init>()V

    .line 2043
    sput-object v0, Lcom/android/settings/applications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 2056
    new-instance v0, Lcom/android/settings/applications/ManageApplications$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ManageApplications$3;-><init>()V

    .line 2055
    sput-object v0, Lcom/android/settings/applications/ManageApplications;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 152
    return-void

    .line 207
    :array_0
    .array-data 4
        0x7f0b19cb
        0x7f0b1990
        0x7f0b1990
        0x7f0b1991
        0x7f0b14a9
        0x7f0b1999
        0x7f0b1994
        0x7f0b1996
        0x7f0b1998
        0x7f0b1997
        0x7f0b1992
        0x7f0b1993
        0x7f0b1995
        0x7f0b1990
        0x7f0b1a1f
        0x7f0b1a25
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;-><init>()V

    .line 249
    const v0, 0x7f1108b0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    .line 326
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    .line 2090
    new-instance v0, Lcom/android/settings/applications/ManageApplications$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$4;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 152
    return-void
.end method

.method private addRelativeView()V
    .locals 11

    .prologue
    .line 596
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-eqz v9, :cond_0

    .line 597
    return-void

    .line 600
    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v2

    .line 601
    .local v2, "isSecureFolder":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v9, :cond_1

    if-eqz v2, :cond_2

    .line 595
    :cond_1
    :goto_0
    return-void

    .line 602
    :cond_2
    new-instance v9, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 604
    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 605
    .local v3, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 606
    .local v6, "storageIntent":Landroid/content/Intent;
    const-string/jumbo v9, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-direct {p0, v9}, Lcom/android/settings/applications/ManageApplications;->isIntentEnabledInSM(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 607
    const-string/jumbo v9, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    :goto_1
    iput-object v6, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 612
    const v9, 0x7f0b1303

    iput v9, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 614
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 615
    .local v4, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 616
    .local v0, "batteryIntent":Landroid/content/Intent;
    const-string/jumbo v9, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {p0, v9}, Lcom/android/settings/applications/ManageApplications;->isIntentEnabledInSM(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 617
    const-string/jumbo v9, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    :goto_2
    iput-object v0, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 622
    const v9, 0x7f0b15da

    iput v9, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 624
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 625
    .local v5, "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.settings.INFO_APP_SHORTCUTS"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v1, "infoAppIntent":Landroid/content/Intent;
    iput-object v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 627
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 628
    .local v8, "useQuicktools":Z
    const v7, 0x7f0b0892

    .line 629
    .local v7, "titleRes":I
    if-eqz v8, :cond_3

    .line 630
    const v7, 0x7f0b089b

    .line 632
    :cond_3
    iput v7, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 634
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v9, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 635
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v9, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 636
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 638
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    goto/16 :goto_0

    .line 609
    .end local v0    # "batteryIntent":Landroid/content/Intent;
    .end local v1    # "infoAppIntent":Landroid/content/Intent;
    .end local v4    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v5    # "linkedData3":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v7    # "titleRes":I
    .end local v8    # "useQuicktools":Z
    :cond_4
    const-string/jumbo v9, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 619
    .restart local v0    # "batteryIntent":Landroid/content/Intent;
    .restart local v4    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    :cond_5
    const-string/jumbo v9, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private createHeader()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 516
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f11027e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 517
    .local v2, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 518
    const v5, 0x7f040042

    .line 517
    invoke-virtual {v4, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    .line 519
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v5, 0x7f11016c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 520
    new-instance v4, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    .line 521
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 523
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 524
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v2, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 526
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 527
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v4, v7, :cond_3

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    .line 530
    .local v3, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 531
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 532
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 533
    add-int/lit8 v1, v1, -0x1

    .line 530
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 543
    .end local v1    # "i":I
    .end local v3    # "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v4, v7, :cond_4

    .line 544
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v8}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 545
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 546
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 547
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 548
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 550
    :cond_4
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v4, v8, :cond_5

    .line 551
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v7}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 553
    :cond_5
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 554
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    new-instance v5, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 514
    :cond_6
    return-void

    .line 537
    .restart local v1    # "i":I
    .restart local v3    # "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_7
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 538
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    goto :goto_1
.end method

.method private getDefaultFilter()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 584
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 574
    :pswitch_1
    const/16 v0, 0xc

    return v0

    .line 576
    :pswitch_2
    const/16 v0, 0xd

    return v0

    .line 578
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 580
    :pswitch_4
    const/16 v0, 0xe

    return v0

    .line 582
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 881
    const/4 v8, 0x0

    .line 883
    .local v8, "isWhitelisted":Z
    const/4 v1, 0x0

    .line 884
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 886
    .local v6, "cr":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 887
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 888
    const-string/jumbo v3, "getAllPackagesFromBatteryOptimizationWhiteList"

    .line 887
    const/4 v2, 0x0

    .line 889
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 887
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 890
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 891
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    const/4 v9, 0x0

    .line 895
    :goto_0
    const-string/jumbo v0, "getAllPackagesFromBatteryOptimizationWhiteList"

    .line 894
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 896
    .local v9, "pkgInWhiteList":Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 897
    const/4 v8, 0x1

    .line 898
    const-string/jumbo v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "white list app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    .end local v9    # "pkgInWhiteList":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 910
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cr":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v8

    .line 901
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cr":Landroid/database/Cursor;
    .restart local v9    # "pkgInWhiteList":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 904
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cr":Landroid/database/Cursor;
    .end local v9    # "pkgInWhiteList":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 905
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "ManageApplications"

    const-string/jumbo v2, "failed to get white list by MDM."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 907
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 906
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 907
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_3
    throw v0
.end method

.method private isFastScrollEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 643
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 652
    :pswitch_0
    return v0

    .line 650
    :pswitch_1
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v2, 0x7f1108b0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isIntentEnabledInSM(Ljava/lang/String;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 688
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 691
    .local v1, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 692
    const/4 v2, 0x1

    return v2

    .line 694
    :cond_0
    return v3
.end method

.method private removeRelativeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 589
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 591
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 588
    :cond_0
    return-void
.end method

.method private searchAndLaunchApp()V
    .locals 17

    .prologue
    .line 2190
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v16

    .line 2191
    .local v16, "stateId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v15

    .line 2192
    .local v15, "size":I
    const/4 v3, 0x1

    if-eq v15, v3, :cond_0

    .line 2193
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePramAction)size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    return-void

    .line 2197
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 2198
    .local v14, "queryAppName":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePramAction)queryAppName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    const-string/jumbo v10, ""

    .line 2200
    .local v10, "appName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getBaseEntries()Ljava/util/ArrayList;

    move-result-object v9

    .line 2201
    .local v9, "allEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    if-nez v9, :cond_1

    .line 2202
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePramAction)allEntries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v5, "Applications"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;)V

    .line 2204
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    .line 2205
    return-void

    .line 2208
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2209
    .local v12, "matchedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_3

    .line 2210
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 2211
    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2212
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2209
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2216
    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2217
    .local v13, "matchedSize":I
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePramAction)matchedSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v13, :cond_4

    .line 2219
    sget-object v4, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exePramAction)app_name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2220
    const-string/jumbo v5, ", uid="

    .line 2219
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2220
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2219
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2222
    :cond_4
    const/4 v3, 0x1

    if-le v13, v3, :cond_5

    .line 2223
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "There are many matched apps for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v3, "Applications"

    .line 2225
    const-string/jumbo v4, "AppName"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    .line 2224
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2226
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    .line 2227
    return-void

    .line 2228
    :cond_5
    if-nez v13, :cond_6

    .line 2229
    sget-object v3, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "There is no matched apps for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v3, "Applications"

    .line 2231
    const-string/jumbo v4, "AppName"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    .line 2230
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    .line 2233
    return-void

    .line 2236
    :cond_6
    const/4 v3, 0x1

    if-ne v13, v3, :cond_8

    .line 2237
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    .line 2238
    .local v1, "bixbyFragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const v2, 0x7f0b147d

    .line 2239
    .local v2, "bixbyTitleRes":I
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "AppNotifications"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2240
    const-class v1, Lcom/android/settings/notification/AppNotificationSettings;

    .line 2241
    const v2, 0x7f0b18e2

    .line 2244
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 2245
    const/4 v6, 0x1

    .line 2243
    invoke-static/range {v1 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Activity;I)V

    .line 2246
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v5, "ApplicationInfo"

    .line 2247
    const-string/jumbo v6, "AppName"

    const-string/jumbo v7, "Match"

    const-string/jumbo v8, "yes"

    .line 2246
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    .line 2189
    .end local v1    # "bixbyFragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "bixbyTitleRes":I
    :cond_8
    return-void
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 6
    .param p2, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    .line 915
    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    .line 914
    invoke-static/range {v0 .. v5}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    .line 913
    return-void
.end method

.method private startApplicationDetailsActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 779
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 806
    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    const v1, 0x7f0b147d

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 778
    :goto_0
    return-void

    .line 781
    :pswitch_0
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    .line 782
    const v1, 0x7f0b18e2

    .line 781
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 785
    :pswitch_1
    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    const v1, 0x7f0b03a1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 788
    :pswitch_2
    const-class v0, Lcom/android/settings/applications/UsageAccessDetails;

    const v1, 0x7f0b19bb

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 791
    :pswitch_3
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f0b1303

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 794
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchHighPower(Landroid/view/View;)V

    goto :goto_0

    .line 797
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchOverlay(Landroid/view/View;)V

    goto :goto_0

    .line 800
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchWriteSettings(Landroid/view/View;)V

    goto :goto_0

    .line 779
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private toggleSwitchHighPower(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    .line 813
    .local v0, "holder":Lcom/android/settings/applications/AppViewHolder;
    if-eqz v0, :cond_3

    .line 814
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    .line 815
    :try_start_0
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/settings/applications/ManageApplications;->hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 815
    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    .line 817
    return-void

    .line 820
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setPowerWhitelisted(Ljava/lang/String;)V

    .line 821
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_2

    .line 822
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    .line 811
    :cond_3
    return-void

    .line 814
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private toggleSwitchOverlay(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 829
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppViewHolder;

    .line 830
    .local v1, "holder":Lcom/android/settings/applications/AppViewHolder;
    if-eqz v1, :cond_2

    .line 831
    iget-object v5, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v5

    .line 832
    const/4 v2, 0x0

    .line 833
    .local v2, "overlayState":Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 835
    :try_start_1
    new-instance v3, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/AppStateOverlayBridge;

    .line 836
    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 835
    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "overlayState":Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
    .local v3, "overlayState":Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
    move-object v2, v3

    .line 842
    .end local v3    # "overlayState":Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
    :cond_0
    if-eqz v2, :cond_3

    :try_start_2
    iget-boolean v4, v2, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    if-eqz v4, :cond_3

    .line 845
    new-instance v6, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-direct {v6}, Lcom/android/settings/applications/DrawOverlayDetails;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/settings/applications/DrawOverlayDetails;->setCanDrawOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 847
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v4, :cond_1

    .line 848
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v5

    .line 828
    :cond_2
    return-void

    .line 837
    .restart local v2    # "overlayState":Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "ManageApplications"

    const-string/jumbo v6, "Click disabled app"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 839
    return-void

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "overlayState":Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;
    :cond_3
    monitor-exit v5

    .line 843
    return-void

    .line 845
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 831
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private toggleSwitchWriteSettings(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 855
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppViewHolder;

    .line 856
    .local v1, "holder":Lcom/android/settings/applications/AppViewHolder;
    if-eqz v1, :cond_2

    .line 857
    iget-object v5, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v5

    .line 858
    const/4 v2, 0x0

    .line 859
    .local v2, "writeSettingsState":Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 861
    :try_start_1
    new-instance v3, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    .line 862
    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 861
    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "writeSettingsState":Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    .local v3, "writeSettingsState":Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    move-object v2, v3

    .line 868
    .end local v3    # "writeSettingsState":Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    :cond_0
    if-eqz v2, :cond_3

    :try_start_2
    iget-boolean v4, v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z

    if-eqz v4, :cond_3

    .line 871
    new-instance v6, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-direct {v6}, Lcom/android/settings/applications/WriteSettingsDetails;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/settings/applications/WriteSettingsDetails;->setCanWriteSettings(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 873
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v4, :cond_1

    .line 874
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v5

    .line 854
    :cond_2
    return-void

    .line 863
    .restart local v2    # "writeSettingsState":Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v4, "ManageApplications"

    const-string/jumbo v6, "Click disabled app"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 865
    return-void

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "writeSettingsState":Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    :cond_3
    monitor-exit v5

    .line 869
    return-void

    .line 871
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 857
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public exeCustomAction()V
    .locals 5

    .prologue
    .line 2175
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/applications/EmHandler;->exeOptBasicAction(Landroid/content/Context;Landroid/view/Menu;)Z

    move-result v0

    .line 2176
    .local v0, "isSuccess":Z
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 2177
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "ApplicationInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2178
    const-string/jumbo v2, "AppNotifications"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 2177
    if-eqz v2, :cond_1

    .line 2179
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->searchAndLaunchApp()V

    .line 2174
    :cond_1
    return-void
.end method

.method public exeOptAction()V
    .locals 5

    .prologue
    .line 2156
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/applications/EmHandler;->exeOptBasicAction(Landroid/content/Context;Landroid/view/Menu;)Z

    move-result v0

    .line 2157
    .local v0, "isSuccess":Z
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 2158
    .local v1, "stateId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2159
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;)V

    .line 2160
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    .line 2155
    :goto_0
    return-void

    .line 2162
    :cond_0
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;)V

    .line 2163
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    goto :goto_0
.end method

.method public exePrefAction()V
    .locals 0

    .prologue
    .line 2168
    return-void
.end method

.method public exeViewAction()V
    .locals 0

    .prologue
    .line 2171
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    const/16 v1, 0xdd

    .line 658
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 676
    const/4 v0, 0x0

    return v0

    .line 660
    :pswitch_0
    const/16 v0, 0x41

    return v0

    .line 662
    :pswitch_1
    const/16 v0, 0x85

    return v0

    .line 664
    :pswitch_2
    const/16 v0, 0x8f

    return v0

    .line 666
    :pswitch_3
    const/16 v0, 0xb6

    return v0

    .line 668
    :pswitch_4
    const/16 v0, 0x5f

    return v0

    .line 670
    :pswitch_5
    const/16 v0, 0xb8

    return v0

    .line 672
    :pswitch_6
    return v1

    .line 674
    :pswitch_7
    return v1

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 682
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 684
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->addRelativeView()V

    .line 681
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 756
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 757
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 761
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_4

    .line 762
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 760
    :cond_3
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    .line 767
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    .line 768
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_0

    .line 769
    if-eqz p3, :cond_0

    const-string/jumbo v0, "chg"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const-string/jumbo v0, "chg"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    goto :goto_0

    .line 764
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 338
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 339
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 340
    new-instance v3, Lcom/samsung/android/settings/applications/EmHandler;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/applications/EmHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;)V

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    .line 341
    new-instance v3, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    .line 342
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 348
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "className":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 351
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 353
    :cond_1
    const-class v3, Lcom/android/settings/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    .line 386
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    .line 388
    if-eqz p1, :cond_2

    .line 389
    const-string/jumbo v3, "sortOrder"

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 390
    const-string/jumbo v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    .line 395
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    .line 396
    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v3, v5, :cond_3

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 407
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b14c7

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 409
    new-instance v3, Lcom/android/settings/applications/ManageApplications$5;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/ManageApplications$5;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    .line 418
    new-instance v3, Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/applications/ResetAppsHelper;-><init>(Landroid/content/Context;Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    .line 419
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 337
    return-void

    .line 355
    :cond_4
    const-class v3, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 356
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 357
    new-instance v3, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    goto :goto_0

    .line 358
    :cond_5
    const-class v3, Lcom/android/settings/Settings$DomainsURLsAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 359
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 360
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_0

    .line 361
    :cond_6
    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 362
    if-eqz v0, :cond_7

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 363
    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 364
    const-string/jumbo v3, "volumeName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    .line 365
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 370
    :goto_2
    const v3, 0x7f1108b1

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_0

    .line 368
    :cond_7
    iput v6, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto :goto_2

    .line 371
    :cond_8
    const-class v3, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 372
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 373
    :cond_9
    const-class v3, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 374
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 376
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_0

    .line 377
    :cond_a
    const-class v3, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 378
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 380
    :cond_b
    const-class v3, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 381
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 384
    :cond_c
    iput v6, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 397
    :cond_d
    sput-boolean v5, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    .line 398
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_notification_list:[Ljava/lang/String;

    .line 399
    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v3, :cond_3

    .line 400
    const-string/jumbo v3, "ManageApplications"

    const-string/jumbo v4, "Hide app notification list is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    sput-boolean v6, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 920
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 921
    return-void

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_1

    .line 924
    const v0, 0x7f0b1812

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 923
    invoke-static {v1, p1, v0, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 925
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 926
    const v0, 0x7f140006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 927
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 919
    return-void

    .line 924
    :cond_1
    const v0, 0x7f0b1811

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 431
    const v2, 0x7f040181

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 433
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f110467

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 434
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f110491

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 436
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 438
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 439
    .local v9, "emptyView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 440
    .local v12, "lv":Landroid/widget/ListView;
    if-eqz v9, :cond_0

    .line 441
    invoke-virtual {v12, v9}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 443
    :cond_0
    invoke-virtual {v12, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 444
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 445
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 446
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 447
    iput-object v12, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 448
    new-instance v2, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications;I)V

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 449
    if-eqz p3, :cond_1

    .line 450
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 451
    const-string/jumbo v3, "hasEntries"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 450
    invoke-static {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 452
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 453
    const-string/jumbo v3, "hasBridge"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 452
    invoke-static {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 456
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 458
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 459
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    .line 460
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    .line 463
    .local v11, "isRTL":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 464
    .local v13, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0a04c4

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 465
    const v3, 0x7f0a04ba

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 464
    add-int/2addr v2, v3

    .line 466
    const v3, 0x7f0a0022

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 464
    add-int v5, v2, v3

    .line 468
    .local v5, "divider_inset_size":I
    if-eqz v11, :cond_6

    .line 469
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 470
    .local v1, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 478
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 479
    const v3, 0x7f040271

    const/4 v4, 0x0

    .line 478
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 480
    .local v10, "headerView":Landroid/view/View;
    const v2, 0x7f110623

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    .line 481
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 482
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    .line 483
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    const v3, 0x7f0b1a1a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 492
    :cond_2
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 493
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 494
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 498
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 503
    .end local v1    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v5    # "divider_inset_size":I
    .end local v9    # "emptyView":Landroid/view/View;
    .end local v10    # "headerView":Landroid/view/View;
    .end local v11    # "isRTL":Z
    .end local v12    # "lv":Landroid/widget/ListView;
    .end local v13    # "resources":Landroid/content/res/Resources;
    :cond_4
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_5

    .line 504
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 507
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->createHeader()V

    .line 509
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 511
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v2

    .line 472
    .restart local v5    # "divider_inset_size":I
    .restart local v9    # "emptyView":Landroid/view/View;
    .restart local v11    # "isRTL":Z
    .restart local v12    # "lv":Landroid/widget/ListView;
    .restart local v13    # "resources":Landroid/content/res/Resources;
    :cond_6
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 473
    .restart local v1    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 484
    .restart local v10    # "headerView":Landroid/view/View;
    :cond_7
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    .line 485
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    const v3, 0x7f0b1a2a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 486
    :cond_8
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    .line 487
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    const v3, 0x7f0b0797

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 489
    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 936
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 746
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onDestroyView()V

    .line 748
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 751
    :cond_0
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 745
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1120
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 1121
    if-gez p3, :cond_0

    .line 1122
    return-void

    .line 1125
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p3, :cond_1

    .line 1126
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 1127
    .local v0, "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 1128
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    .line 1129
    invoke-direct {p0, p2}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity(Landroid/view/View;)V

    .line 1118
    .end local v0    # "entry":Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    :cond_1
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    .line 1149
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    .line 1150
    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1154
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 18
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1026
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v17

    .line 1027
    .local v17, "menuId":I
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1111
    const/4 v2, 0x0

    return v2

    .line 1030
    :pswitch_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 1032
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v3, 0x7f1108b0

    if-ne v3, v2, :cond_1

    const/16 v16, 0x3e8

    .line 1033
    .local v16, "mSortAlpha":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1000d6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1033
    const/16 v6, 0x41

    invoke-static {v2, v6, v3, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_0

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 1113
    .end local v16    # "mSortAlpha":I
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1114
    const/4 v2, 0x1

    return v2

    .line 1032
    :cond_1
    const/16 v16, 0x0

    .restart local v16    # "mSortAlpha":I
    goto :goto_0

    .line 1044
    .end local v16    # "mSortAlpha":I
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1000f2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-nez v2, :cond_2

    const/16 v2, 0x3e8

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1044
    const/16 v6, 0x41

    invoke-static {v3, v6, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 1047
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_1

    .line 1045
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 1047
    :cond_3
    const/4 v2, 0x1

    goto :goto_3

    .line 1051
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1000f6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1051
    const/16 v5, 0x41

    invoke-static {v2, v5, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v2}, Lcom/android/settings/applications/ResetAppsHelper;->buildResetDialog()V

    .line 1055
    const/4 v2, 0x1

    return v2

    .line 1057
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 1058
    const-class v3, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0b19bf

    .line 1059
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    .line 1057
    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1060
    const/4 v2, 0x1

    return v2

    .line 1062
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 1063
    const-class v3, Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0b03a6

    .line 1064
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    .line 1062
    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1065
    const/4 v2, 0x1

    return v2

    .line 1081
    :pswitch_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1082
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.ACTION_MANAGE_PERMISSIONS_CHN"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v15, "intent":Landroid/content/Intent;
    :goto_4
    if-eqz v15, :cond_4

    .line 1087
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/applications/ManageApplications;->startActivity(Landroid/content/Intent;)V

    .line 1089
    :cond_4
    const/4 v2, 0x1

    return v2

    .line 1084
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v15    # "intent":Landroid/content/Intent;
    goto :goto_4

    .line 1091
    .end local v15    # "intent":Landroid/content/Intent;
    :pswitch_6
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1092
    .local v4, "sBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "classname"

    const-string/jumbo v3, "com.android.settings.Settings$OverlaySettingsActivity"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 1094
    const-class v3, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v5

    .line 1095
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    .line 1093
    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1096
    const/4 v2, 0x1

    return v2

    .line 1098
    .end local v4    # "sBundle":Landroid/os/Bundle;
    :pswitch_7
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1099
    .local v7, "wBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "classname"

    const-string/jumbo v3, "com.android.settings.Settings$WriteSettingsActivity"

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SettingsActivity;

    .line 1101
    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v8

    .line 1102
    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p0

    .line 1100
    invoke-virtual/range {v5 .. v11}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1103
    const/4 v2, 0x1

    return v2

    .line 1105
    .end local v7    # "wBundle":Landroid/os/Bundle;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsActivity;

    .line 1106
    const-class v2, Lcom/android/settings/applications/SpecialAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const v11, 0x7f0b1abe

    .line 1107
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v13, p0

    .line 1105
    invoke-virtual/range {v8 .. v14}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1108
    const/4 v2, 0x1

    return v2

    .line 1027
    nop

    :pswitch_data_0
    .packed-switch 0x7f1108b0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 728
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onPause()V

    .line 729
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Applications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 727
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 931
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 699
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onResume()V

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateView()V

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 702
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 704
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-wrap1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Applications"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 698
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 714
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 715
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 716
    const-string/jumbo v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 717
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 718
    const-string/jumbo v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 721
    const-string/jumbo v0, "hasEntries"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get3(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 722
    const-string/jumbo v0, "hasBridge"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 713
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 740
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onStop()V

    .line 741
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/ResetAppsHelper;->stop()V

    .line 739
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 560
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 561
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f11027e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 563
    .local v5, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    const/4 v4, -0x1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/ViewGroup;)V

    .line 565
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f110492

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 566
    .local v6, "dividerView":Landroid/view/View;
    if-eqz v6, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 559
    .end local v5    # "pinnedHeader":Landroid/widget/FrameLayout;
    .end local v6    # "dividerView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 7
    .param p1, "stateId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x2710

    .line 2105
    const-string/jumbo v0, "ApplicationsChangeSystemSettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2106
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f1108b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    .line 2104
    :cond_0
    :goto_0
    return-void

    .line 2107
    :cond_1
    const-string/jumbo v0, "ApplicationsAppsThatCanAppearOnTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2108
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f1108b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 2109
    :cond_2
    const-string/jumbo v0, "ApplicationsSystemapps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2110
    const-string/jumbo v0, "AdvancedNotificationsMoreOptionsShowSystemApps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2109
    if-eqz v0, :cond_4

    .line 2111
    :cond_3
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f1108b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 2112
    :cond_4
    const-string/jumbo v0, "ApplicationsOrderbySize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2113
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f1108b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 2114
    :cond_5
    const-string/jumbo v0, "DefaultApplications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2115
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f1108b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 2116
    :cond_6
    const-string/jumbo v0, "ApplicationInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2117
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    .line 2118
    :cond_7
    const-string/jumbo v0, "AppPermissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2119
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f1108b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 2120
    :cond_8
    const-string/jumbo v0, "FilteredAdvancedNotificationsAllApps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2121
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2122
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Advancednotifications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2124
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2125
    :cond_a
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithBlockedNoti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2126
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithPrioritizedNoti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2125
    if-nez v0, :cond_b

    .line 2127
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithNotiHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2125
    if-nez v0, :cond_b

    .line 2128
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithContentHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2125
    if-eqz v0, :cond_11

    .line 2129
    :cond_b
    const v0, 0x7f0b1994

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2130
    .local v6, "bixbyFilter":Ljava/lang/CharSequence;
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithPrioritizedNoti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2131
    const v0, 0x7f0b1996

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2137
    :cond_c
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_10

    .line 2138
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2139
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2140
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2141
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Advancednotifications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 2142
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 2143
    return-void

    .line 2132
    .end local v3    # "i":I
    :cond_d
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithNotiHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2133
    const v0, 0x7f0b1998

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 2134
    :cond_e
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithContentHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2135
    const v0, 0x7f0b1997

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 2137
    .restart local v3    # "i":I
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2146
    :cond_10
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 2147
    .end local v3    # "i":I
    .end local v6    # "bixbyFilter":Ljava/lang/CharSequence;
    :cond_11
    const-string/jumbo v0, "AdvancedNotificationsMoreOptionsResetAppPreferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2148
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f1108ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_0

    .line 2149
    :cond_12
    const-string/jumbo v0, "AppNotifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2150
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method public setHasDisabled(Z)V
    .locals 2
    .param p1, "hasDisabledApps"    # Z

    .prologue
    .line 1166
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    .line 1167
    return-void

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 1170
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 1165
    return-void
.end method

.method public stopAction()V
    .locals 2

    .prologue
    .line 2185
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    .line 2186
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    .line 2184
    return-void
.end method

.method updateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const v5, 0x7f1108b2

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 941
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v1, :cond_0

    .line 942
    return-void

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v0

    .line 948
    .local v0, "isHeroView":Z
    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_4

    .line 949
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 956
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_6

    .line 960
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b3

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 961
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b4

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 964
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b7

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 965
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b8

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 966
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b9

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 978
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b0

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 979
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v1, v7, :cond_9

    .line 980
    :cond_2
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v5, 0x7f1108b0

    if-eq v1, v5, :cond_8

    move v1, v2

    .line 978
    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 981
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b1

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 982
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v1, v7, :cond_b

    .line 983
    :cond_3
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v5, 0x7f1108b1

    if-eq v1, v5, :cond_a

    move v1, v2

    .line 981
    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 985
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b5

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-nez v1, :cond_d

    .line 986
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v1, v6, :cond_c

    move v1, v2

    .line 985
    :goto_5
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 987
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b6

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v1, :cond_f

    .line 988
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v1, v6, :cond_e

    move v1, v2

    .line 987
    :goto_6
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 990
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108ba

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v4, v6, :cond_10

    :goto_7
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 940
    return-void

    .line 950
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_5

    .line 951
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 953
    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 956
    :cond_6
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_1

    .line 957
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b3

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 958
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f1108b4

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 966
    goto/16 :goto_2

    :cond_8
    move v1, v3

    .line 980
    goto/16 :goto_3

    :cond_9
    move v1, v3

    .line 979
    goto/16 :goto_3

    :cond_a
    move v1, v3

    .line 983
    goto/16 :goto_4

    :cond_b
    move v1, v3

    .line 982
    goto/16 :goto_4

    :cond_c
    move v1, v3

    .line 986
    goto :goto_5

    :cond_d
    move v1, v3

    .line 985
    goto/16 :goto_5

    :cond_e
    move v1, v3

    .line 988
    goto :goto_6

    :cond_f
    move v1, v3

    .line 987
    goto :goto_6

    :cond_10
    move v2, v3

    .line 990
    goto :goto_7
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1159
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1160
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1157
    :cond_0
    return-void
.end method
