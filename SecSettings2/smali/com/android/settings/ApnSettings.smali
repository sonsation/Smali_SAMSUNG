.class public Lcom/android/settings/ApnSettings;
.super Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/multisim/MultiSimTabInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$10;,
        Lcom/android/settings/ApnSettings$1;,
        Lcom/android/settings/ApnSettings$2;,
        Lcom/android/settings/ApnSettings$3;,
        Lcom/android/settings/ApnSettings$4;,
        Lcom/android/settings/ApnSettings$5;,
        Lcom/android/settings/ApnSettings$6;,
        Lcom/android/settings/ApnSettings$7;,
        Lcom/android/settings/ApnSettings$8;,
        Lcom/android/settings/ApnSettings$9;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

.field static final PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static final PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

.field private static mRestoreDefaultApnMode:Z

.field private static sCurrentTab:I


# instance fields
.field apnList:Landroid/preference/PreferenceGroup;

.field editor:Landroid/content/SharedPreferences$Editor;

.field private hideApnList:[Ljava/lang/String;

.field private mAddApn:Landroid/widget/RadioButton;

.field mAddApnListener:Landroid/view/View$OnClickListener;

.field private mAddCpa:Landroid/widget/RadioButton;

.field mAddCpaListener:Landroid/view/View$OnClickListener;

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAllowAddingApns:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCpaAlertDialog:Landroid/app/AlertDialog;

.field private mDelayHandler:Landroid/os/Handler;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHideImsApn:Z

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mHotSwapStateFilter:Landroid/content/IntentFilter;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mRestoreDlg:Landroid/app/AlertDialog;

.field private mRestoreHandler:Landroid/os/Handler;

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mRestoring:Landroid/app/ProgressDialog;

.field private mSIMchangedObserver:Landroid/database/ContentObserver;

.field private mSelectedKey:Ljava/lang/String;

.field private mSubId:J

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherStateFilter:Landroid/content/IntentFilter;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private mUnavailable:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mccmnc:Ljava/lang/String;

.field private mcfgNetTypeCap:Ljava/lang/String;

.field pref:Landroid/content/SharedPreferences;

.field private pref_vzwdefault:Lcom/android/settings/ApnPreference;

.field private tIntent:Landroid/content/Intent;

.field private tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

.field private vzwapn:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/ApnSettings;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    return-object v0
.end method

.method static synthetic -get12()I
    .locals 1

    sget v0, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/settings/ApnSettings;)Lcom/samsung/android/settings/multisim/MultiSimTabInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/ApnSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/ApnSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/ApnSettings;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/ApnSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/ApnSettings;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/ApnSettings;->mSubId:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    return-object p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic -set2(Lcom/android/settings/ApnSettings;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/settings/ApnSettings;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/ApnSettings;->mSubId:J

    return-wide p1
.end method

.method static synthetic -set4(I)I
    .locals 0

    sput p0, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ApnSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/ApnSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/ApnSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/ApnSettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/ApnSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/ApnSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const-string/jumbo v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 159
    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 161
    const-string/jumbo v0, "content://telephony/carriers/preferapn/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI_USING_SUBID:Landroid/net/Uri;

    .line 162
    const-string/jumbo v0, "content://telephony/carriers/restore/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI_USING_SUBID:Landroid/net/Uri;

    .line 168
    const-string/jumbo v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 167
    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    .line 226
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    const-string/jumbo v0, "no_config_mobile_networks"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mcfgNetTypeCap:Ljava/lang/String;

    .line 195
    iput-object v3, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    .line 196
    iput-object v3, p0, Lcom/android/settings/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreHandler:Landroid/os/Handler;

    .line 210
    iput-object v3, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    .line 219
    iput-object v3, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 221
    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    .line 223
    iput-object v3, p0, Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    .line 227
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/android/settings/ApnSettings;->mSubId:J

    .line 234
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    new-instance v0, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 287
    new-instance v0, Lcom/android/settings/ApnSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$3;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    new-instance v0, Lcom/android/settings/ApnSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$4;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    .line 306
    new-instance v0, Lcom/android/settings/ApnSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$5;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    .line 317
    new-instance v0, Lcom/android/settings/ApnSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$6;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 974
    new-instance v0, Lcom/android/settings/ApnSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$7;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mAddApnListener:Landroid/view/View$OnClickListener;

    .line 985
    new-instance v0, Lcom/android/settings/ApnSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$8;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mAddCpaListener:Landroid/view/View$OnClickListener;

    .line 1362
    new-instance v0, Lcom/android/settings/ApnSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$9;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1376
    new-instance v0, Lcom/android/settings/ApnSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$10;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 198
    return-void
.end method

.method private addApnToList(Lcom/android/settings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings/ApnPreference;
    .param p4, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p5, "mvnoType"    # Ljava/lang/String;
    .param p6, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/ApnPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ApnPreference;",
            ">;",
            "Lcom/android/internal/telephony/uicc/IccRecords;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 813
    .local p2, "mnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .local p3, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    if-eqz p4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    :cond_1
    :goto_0
    return-void

    .line 813
    :cond_2
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    invoke-static {p4, p5, p6}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mvnoMatches(Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 815
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    iput-object p5, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 818
    iput-object p6, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0
.end method

.method private addNewApn()V
    .locals 4

    .prologue
    .line 999
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1000
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 1002
    .local v1, "subId":I
    :goto_0
    const-string/jumbo v2, "sub_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1003
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1008
    :cond_0
    :goto_1
    const-string/jumbo v2, "simSlot"

    sget v3, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1010
    const-string/jumbo v2, "vzw"

    const-string/jumbo v3, "editable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 998
    return-void

    .line 1001
    .end local v1    # "subId":I
    :cond_2
    const/4 v1, -0x1

    .restart local v1    # "subId":I
    goto :goto_0

    .line 1004
    :cond_3
    const-string/jumbo v2, "mvno_type"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    const-string/jumbo v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1011
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1012
    const-string/jumbo v2, "keyString"

    const-string/jumbo v3, "hidden"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1013
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1014
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1015
    const-string/jumbo v2, "vzw"

    const-string/jumbo v3, "editable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1016
    :cond_6
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1017
    const-string/jumbo v2, "keyString"

    const-string/jumbo v3, "hidden"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 1385
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 1384
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private dualSimMPS_DataLock(I)Z
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    .line 608
    const-string/jumbo v1, "AddDataLock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    .line 609
    const-string/jumbo v3, "CscFeature_RIL_ConfigSimLock"

    .line 608
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/Utils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "operator":Ljava/lang/String;
    const-string/jumbo v1, "persist.radio.networklocklist"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    const-string/jumbo v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[DataLockFeature] Enable for operator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v1, 0x1

    return v1

    .line 616
    .end local v0    # "operator":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ApnSettings"

    const-string/jumbo v2, "DataLockFeature is disable"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v1, 0x0

    return v1
.end method

.method private fillList()V
    .locals 31

    .prologue
    .line 651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numeric=\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    sget v5, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v4, v5, v10}, Lcom/android/settings/Utils;->getNumericString(Landroid/content/Intent;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 653
    .local v30, "where":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    sget v10, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-static {v4, v5, v10}, Lcom/android/settings/Utils;->appendWhereString(Landroid/content/Context;Landroid/content/Intent;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-static {v2, v0, v4, v5}, Lcom/android/settings/Utils;->getApnCursor(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 657
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_16

    .line 658
    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "count of apn from telephony db : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    :cond_0
    const/16 v28, 0x0

    .line 663
    .local v28, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_1

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 664
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 665
    const/4 v5, 0x1

    .line 664
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v28

    .line 667
    .end local v28    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    const-string/jumbo v2, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    .line 668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 670
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v18, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v21, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v19, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v23, "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    if-eqz v2, :cond_2

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 681
    :cond_2
    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fillList: where = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 685
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 686
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_12

    .line 687
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 688
    .local v6, "name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 689
    .local v7, "apn":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 690
    .local v8, "key":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 691
    .local v9, "type":Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 692
    .local v24, "mvnoType":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 695
    .local v22, "mvnoMatchData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    sget v10, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-static/range {v2 .. v10}, Lcom/android/settings/Utils;->skipApn(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 696
    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip apn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 700
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/android/settings/Utils;->isHideApn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/android/settings/Utils;->isHideApn([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 701
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 706
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 707
    :cond_6
    new-instance v25, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v4, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    const/4 v5, 0x2

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v5, v4}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;II)V

    .line 716
    .local v25, "pref":Lcom/android/settings/ApnPreference;
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    sget v13, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    move-object v11, v3

    move-object v14, v7

    move-object v15, v6

    invoke-static/range {v10 .. v15}, Lcom/android/settings/Utils;->modifyApn(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 717
    .local v20, "modApn":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v6, v20, v2

    .line 718
    const/4 v2, 0x1

    aget-object v7, v20, v2

    .line 721
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 724
    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/ApnPreference;->setNullPreferAPN()V

    .line 726
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v2

    if-nez v2, :cond_8

    .line 727
    invoke-static {}, Lcom/android/settings/Utils;->isJapanSBMModel()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "fourgsmartphone"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "Application"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 728
    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v4, "do not summary SBM request"

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_8
    :goto_2
    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fillList pref "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " 1/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 736
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object/from16 v10, p0

    move-object v13, v8

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v10 .. v15}, Lcom/android/settings/ApnSettings;->setDefaultVZWAPN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/android/settings/Utils;->getSelectableEnableState(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Z

    move-result-object v29

    .line 747
    .local v29, "states":[Z
    const/4 v2, 0x0

    aget-boolean v2, v29, v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 748
    const-string/jumbo v2, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-boolean v5, v29, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mSelectedKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const/4 v2, 0x1

    aget-boolean v2, v29, v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    .line 750
    const/4 v2, 0x2

    aget-boolean v2, v29, v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/settings/ApnPreference;->setEditable(Z)V

    .line 751
    const/4 v2, 0x0

    aget-boolean v2, v29, v2

    if-eqz v2, :cond_10

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 754
    invoke-virtual/range {v25 .. v25}, Lcom/android/settings/ApnPreference;->setChecked()V

    .line 759
    :cond_9
    invoke-static {}, Lcom/android/settings/Utils;->isSupport3LM()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 771
    :cond_a
    sget v2, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 772
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 708
    .end local v20    # "modApn":[Ljava/lang/String;
    .end local v25    # "pref":Lcom/android/settings/ApnPreference;
    .end local v29    # "states":[Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSprEditable(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 709
    :cond_c
    new-instance v25, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v4, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    const/4 v5, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v5, v4}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;II)V

    .restart local v25    # "pref":Lcom/android/settings/ApnPreference;
    goto/16 :goto_1

    .line 711
    .end local v25    # "pref":Lcom/android/settings/ApnPreference;
    :cond_d
    new-instance v25, Lcom/android/settings/ApnPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v4, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v5, v4}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;II)V

    .restart local v25    # "pref":Lcom/android/settings/ApnPreference;
    goto/16 :goto_1

    .line 730
    .restart local v20    # "modApn":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .restart local v29    # "states":[Z
    :cond_f
    move-object/from16 v10, p0

    move-object/from16 v11, v25

    move-object/from16 v12, v18

    move-object/from16 v13, v21

    move-object/from16 v14, v28

    move-object/from16 v15, v24

    move-object/from16 v16, v22

    .line 776
    invoke-direct/range {v10 .. v16}, Lcom/android/settings/ApnSettings;->addApnToList(Lcom/android/settings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 779
    :cond_10
    sget v2, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 780
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    :cond_11
    move-object/from16 v10, p0

    move-object/from16 v11, v25

    move-object/from16 v12, v19

    move-object/from16 v13, v23

    move-object/from16 v14, v28

    move-object/from16 v15, v24

    move-object/from16 v16, v22

    .line 784
    invoke-direct/range {v10 .. v16}, Lcom/android/settings/ApnSettings;->addApnToList(Lcom/android/settings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/internal/telephony/uicc/IccRecords;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 788
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "apn":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v20    # "modApn":[Ljava/lang/String;
    .end local v22    # "mvnoMatchData":Ljava/lang/String;
    .end local v24    # "mvnoType":Ljava/lang/String;
    .end local v25    # "pref":Lcom/android/settings/ApnPreference;
    .end local v29    # "states":[Z
    :cond_12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 790
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 791
    move-object/from16 v18, v21

    .line 792
    move-object/from16 v19, v23

    .line 797
    :cond_13
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "preference$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/settings/ApnPreference;

    .line 798
    .local v26, "preference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 800
    .end local v26    # "preference":Landroid/preference/Preference;
    :cond_14
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/settings/ApnPreference;

    .line 801
    .restart local v26    # "preference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 804
    .end local v26    # "preference":Landroid/preference/Preference;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    sget v5, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-static {v2, v4, v5}, Lcom/android/settings/ApnSettings;->isEnableApnList(Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;I)Z

    move-result v17

    .line 805
    .local v17, "isEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 632
    .end local v17    # "isEnabled":Z
    .end local v18    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v19    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v21    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v23    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v27    # "preference$iterator":Ljava/util/Iterator;
    :cond_16
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 330
    const-string/jumbo v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 332
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1

    .line 334
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v1
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1065
    const/4 v1, 0x0

    .line 1070
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    iget-wide v4, p0, Lcom/android/settings/ApnSettings;->mSubId:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->getSelectedApnKeyCursor(Landroid/content/Context;IJ)Landroid/database/Cursor;

    move-result-object v0

    .line 1071
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    return-object v7

    .line 1073
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1074
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1075
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1077
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1078
    return-object v1
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 6
    .param p1, "Sim_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 1389
    const/4 v0, 0x0

    .line 1390
    .local v0, "retString":Ljava/lang/String;
    const-string/jumbo v3, "CTC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1391
    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "UNKNOW"

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/settings/ApnSettings;->getSystemProperties(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1392
    .local v1, "simState1":Ljava/lang/String;
    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "UNKNOW"

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/settings/ApnSettings;->getSystemProperties(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1393
    .local v2, "simState2":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1394
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1395
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b054d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1413
    .end local v1    # "simState1":Ljava/lang/String;
    .end local v2    # "simState2":Ljava/lang/String;
    .local v0, "retString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1397
    .local v0, "retString":Ljava/lang/String;
    .restart local v1    # "simState1":Ljava/lang/String;
    .restart local v2    # "simState2":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0

    .line 1400
    .local v0, "retString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1401
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b054e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0

    .line 1403
    .local v0, "retString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0

    .line 1407
    .end local v1    # "simState1":Ljava/lang/String;
    .end local v2    # "simState2":Ljava/lang/String;
    .local v0, "retString":Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_4

    .line 1408
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0

    .line 1410
    .local v0, "retString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "retString":Ljava/lang/String;
    goto :goto_0
.end method

.method private goAddApn()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 952
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 953
    .local v2, "layoutInflator":Landroid/view/LayoutInflater;
    const v4, 0x7f040086

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 954
    .local v0, "alertDialogLayout":Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 955
    .local v3, "mAlertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 956
    const v4, 0x7f0b043d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 957
    const v4, 0x7f1101f5

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/ApnSettings;->mAddApn:Landroid/widget/RadioButton;

    .line 958
    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mAddApn:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mAddApnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 959
    const v4, 0x7f1101f6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/settings/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    .line 960
    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mAddCpaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "kddi_cpa_added"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 962
    .local v1, "isAddedCPA":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 963
    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mAddCpa:Landroid/widget/RadioButton;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 965
    :cond_0
    new-instance v4, Lcom/android/settings/ApnSettings$13;

    invoke-direct {v4, p0}, Lcom/android/settings/ApnSettings$13;-><init>(Lcom/android/settings/ApnSettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 970
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    .line 971
    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 951
    return-void

    .end local v1    # "isAddedCPA":Z
    :cond_1
    move v1, v5

    .line 961
    goto :goto_0
.end method

.method private initSimInfo()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1344
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getEnabledSimCnt()I

    move-result v0

    .line 1345
    .local v0, "mSimCnt":I
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1346
    .local v1, "sIntent":Landroid/content/Intent;
    sput v5, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    .line 1347
    const-string/jumbo v2, "simSlot"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1348
    const-string/jumbo v2, "simSlot"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    .line 1349
    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v3, "mSimSlot is set by intent"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    :cond_0
    :goto_0
    sget v2, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    aget v2, v2, v5

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/settings/ApnSettings;->mSubId:J

    .line 1357
    const-string/jumbo v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sCurrentTab:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSubId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/ApnSettings;->mSubId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in initSimInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    return v0

    .line 1350
    :cond_1
    if-ne v0, v4, :cond_0

    .line 1351
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v3, v2, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "phone2_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1353
    sput v4, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    .line 1354
    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v3, "mSimSlot is set by slot2"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initVZWApnPreference()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 377
    new-instance v0, Lcom/android/settings/ApnPreference;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    .line 378
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string/jumbo v1, "6"

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string/jumbo v1, "LTE - Verizon Internet"

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const-string/jumbo v1, "VZWINTERNET"

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "default_vzwapn"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    .line 385
    :cond_0
    const-string/jumbo v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APN setDefaultVZWAPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->vzwapn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref_vzwdefault:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 376
    return-void
.end method

.method public static isEnableApnList(Landroid/preference/PreferenceGroup;Landroid/preference/PreferenceGroup;I)Z
    .locals 6
    .param p0, "root"    # Landroid/preference/PreferenceGroup;
    .param p1, "apnList"    # Landroid/preference/PreferenceGroup;
    .param p2, "mSimSlot"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1253
    const/4 v1, 0x1

    .line 1255
    .local v1, "ret":Z
    if-nez p2, :cond_0

    .line 1256
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v5, v2, :cond_0

    .line 1257
    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v3, "fillList SIMSLOT1 Not Ready"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    const/4 v1, 0x0

    .line 1269
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 1259
    .restart local v1    # "ret":Z
    :cond_0
    if-ne p2, v4, :cond_1

    .line 1260
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v5, v2, :cond_1

    .line 1261
    const-string/jumbo v2, "ApnSettings"

    const-string/jumbo v3, "fillList SIMSLOT2 Not Ready"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const/4 v1, 0x0

    .line 1260
    goto :goto_0

    .line 1264
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->isEnabled()Z

    move-result v0

    .line 1265
    .local v0, "bEnabled":Z
    const-string/jumbo v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    move v1, v0

    .local v1, "ret":Z
    goto :goto_0
.end method

.method public static isEnabledAdd(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "tIntent"    # Landroid/content/Intent;
    .param p2, "apnList"    # Landroid/preference/PreferenceGroup;
    .param p3, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 1273
    const/4 v0, 0x1

    .line 1274
    .local v0, "ret":Z
    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1275
    invoke-static {p1}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1276
    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1277
    const/4 v0, 0x0

    .line 1300
    :cond_0
    :goto_0
    const-string/jumbo v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "APN enable ADD option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    return v0

    .line 1278
    :cond_1
    invoke-static {p0}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1279
    const/4 v0, 0x0

    goto :goto_0

    .line 1282
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1283
    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    const/4 v0, 0x0

    goto :goto_0

    .line 1286
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGlobalRoamingLRA()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1287
    invoke-static {}, Lcom/android/settings/Utils;->isLRASimInserted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1288
    const/4 v0, 0x0

    goto :goto_0

    .line 1289
    :cond_4
    invoke-static {p0}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    const/4 v0, 0x0

    goto :goto_0

    .line 1292
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1294
    const/4 v0, 0x0

    .line 1296
    :cond_6
    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->isVzwEditable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1297
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabledRestore(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tIntent"    # Landroid/content/Intent;
    .param p2, "apnList"    # Landroid/preference/PreferenceGroup;
    .param p3, "mccmnc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 1305
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1306
    :cond_0
    return v4

    .line 1305
    :cond_1
    if-eqz p3, :cond_0

    .line 1308
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1309
    .local v1, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    .line 1310
    .local v0, "isEmptyApnlist":Z
    :goto_0
    const/4 v2, 0x1

    .line 1311
    .local v2, "ret":Z
    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_2

    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1312
    :cond_2
    const/4 v2, 0x0

    .line 1325
    :cond_3
    :goto_1
    const-string/jumbo v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "APN enable Restore option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    return v2

    .line 1309
    .end local v0    # "isEmptyApnlist":Z
    .end local v2    # "ret":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isEmptyApnlist":Z
    goto :goto_0

    .line 1313
    .restart local v2    # "ret":Z
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1314
    const/4 v2, 0x0

    goto :goto_1

    .line 1315
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isLraImsi()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1316
    const/4 v2, 0x0

    goto :goto_1

    .line 1317
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1318
    invoke-static {p3}, Lcom/android/settings/Utils;->isSPRSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {p3}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1319
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 1321
    :cond_9
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1322
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 1323
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1082
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 1083
    sput-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 1085
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$RestoreApnUiHandler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 1089
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 1091
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    .line 1092
    const-string/jumbo v1, "Restore default APN Handler: Process Thread"

    .line 1091
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 1093
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1094
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 1095
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 1094
    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 1098
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 1100
    return v3
.end method

.method private setDefaultVZWAPN(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "apn"    # Ljava/lang/String;

    .prologue
    .line 1330
    invoke-static {}, Lcom/android/settings/Utils;->isVZWConcept()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isUsOpenModel()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p2}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1331
    const-string/jumbo v0, "Verizon Internet"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "6"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "LTE - Verizon Internet"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "VZW Roaming Internet"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1332
    const-string/jumbo v0, "Tracfone - Verizon"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1331
    if-eqz v0, :cond_2

    .line 1333
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 1334
    const-string/jumbo v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "APN setDefaultVZWAPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 1336
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "default_vzwapn"

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1337
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1329
    :cond_2
    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1056
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1057
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    sget v2, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    iget-wide v4, p0, Lcom/android/settings/ApnSettings;->mSubId:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/settings/Utils;->updateSelectedApnKey(Landroid/content/ContentResolver;Landroid/content/ContentValues;IJ)V

    .line 1052
    return-void
.end method

.method private showWarning()V
    .locals 3

    .prologue
    .line 931
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 932
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0b69

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 933
    new-instance v1, Lcom/android/settings/ApnSettings$11;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnSettings$11;-><init>(Lcom/android/settings/ApnSettings;)V

    const v2, 0x7f0b043b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 941
    new-instance v1, Lcom/android/settings/ApnSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnSettings$12;-><init>(Lcom/android/settings/ApnSettings;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 948
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    .line 930
    return-void
.end method


# virtual methods
.method public getEnabledSimCnt()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1448
    const/4 v4, 0x1

    .line 1450
    .local v4, "enabledSim":I
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1451
    const-string/jumbo v6, "phone1_on"

    .line 1450
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_1

    const/4 v0, 0x1

    .line 1452
    .local v0, "PhoneOnMode1":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1453
    const-string/jumbo v6, "phone2_on"

    .line 1452
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_2

    const/4 v1, 0x1

    .line 1454
    .local v1, "PhoneOnMode2":Z
    :goto_1
    const-string/jumbo v5, "ril.ICC_TYPE"

    const-string/jumbo v6, "0"

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1455
    .local v2, "SimType_1":Ljava/lang/String;
    const-string/jumbo v5, "ril.ICC_TYPE"

    const-string/jumbo v6, "0"

    invoke-static {v5, v8, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1457
    .local v3, "SimType_2":Ljava/lang/String;
    const-string/jumbo v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1461
    :cond_0
    :goto_2
    const-string/jumbo v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enabledSim: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    return v4

    .line 1450
    .end local v0    # "PhoneOnMode1":Z
    .end local v1    # "PhoneOnMode2":Z
    .end local v2    # "SimType_1":Ljava/lang/String;
    .end local v3    # "SimType_2":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "PhoneOnMode1":Z
    goto :goto_0

    .line 1452
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "PhoneOnMode2":Z
    goto :goto_1

    .line 1457
    .restart local v2    # "SimType_1":Ljava/lang/String;
    .restart local v3    # "SimType_2":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1458
    const/4 v4, 0x2

    goto :goto_2
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 340
    const/16 v0, 0xc

    return v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .prologue
    .line 623
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 624
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_mobile_networks"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 627
    :cond_1
    sget-object v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v1
.end method

.method public getSystemProperties(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slot"    # I
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 1425
    move-object v1, p3

    .line 1426
    .local v1, "status":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1428
    :cond_0
    return-object p3

    .line 1430
    :cond_1
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1431
    return-object v0

    .line 1433
    :cond_2
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1434
    return-object p3

    .line 1436
    :cond_3
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1437
    .local v2, "values":[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v4, p2, 0x1

    if-ge v3, v4, :cond_4

    .line 1438
    return-object p3

    .line 1440
    :cond_4
    aget-object v3, v2, p2

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1441
    return-object p3

    .line 1443
    :cond_5
    aget-object v1, v2, p2

    .line 1444
    return-object v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 450
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 453
    .local v0, "emptySummary":Landroid/widget/TextView;
    const v1, 0x7f0b00a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a04c5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 456
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 455
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    .line 459
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->setHasOptionsMenu(Z)V

    .line 460
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v1, :cond_1

    .line 461
    const-string/jumbo v1, "ApnSettings"

    const-string/jumbo v2, "removeAll!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 464
    return-void

    .line 459
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-static {v1, v3}, Lcom/android/settings/Utils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    .line 469
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "default_vzwapn"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->pref:Landroid/content/SharedPreferences;

    .line 470
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVZWSimInserted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 475
    :cond_2
    :goto_1
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 492
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 496
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.UPDATE_CURRENT_CARRIER_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.CSC_CONNECTION_RESET_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    .line 503
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    .line 507
    invoke-static {}, Lcom/android/settings/Utils;->initHideList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->hideApnList:[Ljava/lang/String;

    .line 449
    return-void

    .line 471
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->initVZWApnPreference()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 347
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "sub_id"

    .line 348
    const/4 v7, -0x1

    .line 347
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 351
    .local v4, "subId":I
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    .line 352
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 355
    new-instance v5, Landroid/content/IntentFilter;

    .line 356
    const-string/jumbo v6, "android.intent.action.ANY_DATA_STATE"

    .line 355
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 358
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 360
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 362
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    const-string/jumbo v5, "carrier_config"

    invoke-virtual {p0, v5}, Lcom/android/settings/ApnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 367
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 369
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v2}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 370
    .local v1, "b":Landroid/os/PersistableBundle;
    const-string/jumbo v5, "hide_ims_apn_bool"

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ApnSettings;->mHideImsApn:Z

    .line 371
    const-string/jumbo v5, "allow_adding_apns_bool"

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/ApnSettings;->mAllowAddingApns:Z

    .line 372
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/ApnSettings;->mUserManager:Landroid/os/UserManager;

    .line 344
    return-void

    .line 363
    .end local v1    # "b":Landroid/os/PersistableBundle;
    .end local v2    # "configManager":Landroid/telephony/CarrierConfigManager;
    :catch_0
    move-exception v3

    .line 364
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UiccController not make : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1210
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 1220
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    .line 1221
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b153d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1223
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    return-object v0

    .line 1226
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v6, 0x7f0b043d

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 839
    const/4 v0, 0x1

    .line 840
    .local v0, "isAvailableAdd":Z
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 841
    const-string/jumbo v1, "3"

    const-string/jumbo v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    const/4 v0, 0x0

    .line 845
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-nez v1, :cond_2

    .line 846
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 848
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 858
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b153e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 862
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 826
    return-void

    .line 851
    :cond_3
    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 852
    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 20
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->initSimInfo()I

    move-result v5

    .line 402
    .local v5, "numSims":I
    const/4 v14, 0x1

    if-le v5, v14, :cond_2

    .line 403
    const v14, 0x7f040190

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 404
    .local v13, "view":Landroid/view/View;
    const v14, 0x7f1104bd

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 405
    .local v7, "prefs_container":Landroid/view/ViewGroup;
    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13, v7, v14}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-super {v0, v1, v7, v2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v6

    .line 407
    .local v6, "prefs":Landroid/view/View;
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 409
    const v14, 0x1020012

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v14}, Landroid/widget/TabHost;->setup()V

    .line 411
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ApnSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v14, v15}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v14}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    .line 416
    .local v10, "sm":Landroid/telephony/SubscriptionManager;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 417
    invoke-virtual {v10, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    .line 418
    .local v11, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 419
    if-nez v11, :cond_0

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getContext()Landroid/content/Context;

    move-result-object v14

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const v18, 0x7f0b19ec

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 419
    :goto_1
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/android/settings/ApnSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v14}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v14

    .line 425
    const v15, 0x1020006

    .line 424
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 426
    .local v8, "simIcon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v14, v4}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v3, v14, Landroid/util/DisplayMetrics;->density:F

    .line 428
    .local v3, "SCALE":F
    const/high16 v14, 0x40800000    # 4.0f

    mul-float/2addr v14, v3

    float-to-int v12, v14

    .line 429
    .local v12, "tab_icon_padding":I
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v14, v12, v15}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 430
    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ApnSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v14}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v14

    .line 432
    const v15, 0x1020016

    .line 431
    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 433
    .local v9, "simName":Landroid/widget/TextView;
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 434
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/ApnSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 421
    .end local v3    # "SCALE":F
    .end local v8    # "simIcon":Landroid/widget/ImageView;
    .end local v9    # "simName":Landroid/widget/TextView;
    .end local v12    # "tab_icon_padding":I
    :cond_0
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v14

    goto :goto_1

    .line 438
    .end local v11    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnSettings;->tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

    .line 442
    return-object v13

    .line 444
    .end local v4    # "i":I
    .end local v6    # "prefs":Landroid/view/View;
    .end local v7    # "prefs_container":Landroid/view/ViewGroup;
    .end local v10    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v13    # "view":Landroid/view/View;
    :cond_2
    invoke-super/range {p0 .. p3}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v14

    return-object v14
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 591
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroy()V

    .line 594
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 601
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 590
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 893
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 926
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 897
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "kddi_cpa_added"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    .line 898
    .local v0, "bIsAddedCPA":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 900
    :cond_0
    sget v1, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-direct {p0, v1}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 901
    return v4

    .line 897
    .end local v0    # "bIsAddedCPA":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "bIsAddedCPA":Z
    goto :goto_0

    .line 899
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->goAddApn()V

    .line 906
    :goto_1
    return v4

    .line 903
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_1

    .line 911
    .end local v0    # "bIsAddedCPA":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    .line 912
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 911
    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 913
    sget v1, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-direct {p0, v1}, Lcom/android/settings/ApnSettings;->dualSimMPS_DataLock(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 914
    return v4

    .line 916
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->showWarning()V

    .line 919
    return v4

    .line 922
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V

    .line 923
    return v4

    .line 893
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 565
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onPause()V

    .line 567
    iget-boolean v0, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 568
    return-void

    .line 571
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 575
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 577
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 579
    iput-object v2, p0, Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 585
    :cond_2
    sput-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 564
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1036
    const-string/jumbo v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1037
    const-string/jumbo v2, ", newValue - "

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1037
    const-string/jumbo v2, ", newValue type - "

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1038
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1041
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->setCarrierEnabledStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->reqEnableCpa(Landroid/content/Context;Ljava/lang/String;)V

    .line 1046
    :cond_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 1049
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1029
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1030
    .local v0, "pos":I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1031
    .local v1, "url":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 1032
    const/4 v2, 0x1

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    .line 868
    iget-object v6, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    if-nez v6, :cond_0

    .line 869
    const-string/jumbo v6, "apn_list"

    invoke-virtual {p0, v6}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    iput-object v6, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    .line 871
    :cond_0
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 872
    .local v0, "add":Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 873
    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v6, v8, v9, v10}, Lcom/android/settings/ApnSettings;->isEnabledAdd(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v2

    .line 874
    .local v2, "isEnabledAdd":Z
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 876
    .end local v2    # "isEnabledAdd":Z
    :cond_1
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 877
    .local v4, "restore":Landroid/view/MenuItem;
    if-eqz v4, :cond_2

    .line 878
    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/ApnSettings;->tIntent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    iget-object v10, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    invoke-static {v6, v8, v9, v10}, Lcom/android/settings/ApnSettings;->isEnabledRestore(Landroid/content/Context;Landroid/content/Intent;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    .line 879
    .local v3, "isEnabledRestore":Z
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 881
    .end local v3    # "isEnabledRestore":Z
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v8, "CscFeature_Setting_LockApnDuringTethering"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 882
    iget-object v6, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 883
    .local v5, "tethered":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 884
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v6, v7

    .line 884
    goto :goto_1

    .line 887
    .end local v1    # "i":I
    .end local v5    # "tethered":Z
    :cond_4
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 513
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onResume()V

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->finish()V

    .line 518
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 521
    iget-boolean v3, p0, Lcom/android/settings/ApnSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    .line 522
    return-void

    .line 525
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mTetherStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mHotSwapStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 529
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "select_icon_1"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 530
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "select_icon_2"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 531
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "select_name_1"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 532
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "select_name_2"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 533
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "phone1_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 534
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "phone1_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mSIMchangedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 536
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 537
    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnSettings;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    .line 536
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->refreshUI()V

    .line 541
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Setting_LockApnDuringTethering"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 542
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTetheringEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 543
    .local v0, "tethered":Z
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 512
    .end local v0    # "tethered":Z
    :cond_2
    return-void

    .restart local v0    # "tethered":Z
    :cond_3
    move v1, v2

    .line 543
    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    .line 1245
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1244
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 1246
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->apnList:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->refreshUI()V

    .line 1249
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1242
    return-void
.end method

.method public refreshUI()V
    .locals 2

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/settings/ApnSettings;->sCurrentTab:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getSimOperator(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mccmnc:Ljava/lang/String;

    .line 554
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 551
    :goto_0
    return-void

    .line 558
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0
.end method

.method protected showDialog(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1232
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoring:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    return-void

    .line 1236
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1238
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->showDialog(I)V

    .line 1231
    return-void
.end method
