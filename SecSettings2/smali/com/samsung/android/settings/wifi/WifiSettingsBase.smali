.class public abstract Lcom/samsung/android/settings/wifi/WifiSettingsBase;
.super Lcom/samsung/android/settings/SecRestrictedSettingsFragment;
.source "WifiSettingsBase.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;,
        Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field public static goToWebPageHTTPResponse:I

.field public static goToWebPageLinkClicked:Z

.field public static goToWebPageLinkViewed:Z

.field public static mWpsInProgress:Z


# instance fields
.field private helpMenuCheck:Z

.field protected mAddPreference:Landroid/preference/Preference;

.field private mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

.field private mBackgroundResId:I

.field private mBgThread:Landroid/os/HandlerThread;

.field private final mCheckHttpResponseHandler:Landroid/os/Handler;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mCricketClickListener:Landroid/view/View$OnClickListener;

.field private mCricketManagerHeader:Landroid/view/View;

.field protected mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mGateway:Ljava/lang/String;

.field private mHandlerForKTCM:Landroid/os/Handler;

.field protected mInManageNetwork:Z

.field private mInOffloadDialog:Z

.field private mInPickerDialog:Z

.field protected mInSecPickerActivity:Z

.field protected mInSetupWizardWifiScreen:Z

.field protected mIsEmerMode:Z

.field private mIsFromLocation:Z

.field private mIsShouldSendResult:Z

.field private mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOpenSecurity:I

.field private mOpenSsid:Ljava/lang/String;

.field private mP2pSupported:Z

.field private mRequestConnectionByUser:Z

.field private mRunnableForKTCM:Ljava/lang/Runnable;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScrollTimer:J

.field protected mShowNotInRagededAp:Z

.field private mShowRetryDialog:Z

.field public mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mWifiAdvanced:Landroid/widget/TextView;

.field private mWifiDirect:Landroid/widget/TextView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field protected mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field protected mWpsDialog:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isMobileApON()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    .line 220
    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    .line 221
    sput-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    .line 222
    sput v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    .line 134
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 190
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    .line 197
    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 203
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    .line 204
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    .line 206
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 217
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    .line 228
    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1200
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    .line 1214
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 1213
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    .line 1248
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 1422
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    .line 1742
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1871
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "restrictionKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 190
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    .line 197
    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 203
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    .line 204
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    .line 206
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 217
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 1200
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    .line 1214
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 1213
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    .line 1248
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 1422
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    .line 1742
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 1871
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 234
    return-void
.end method

.method private WifiAdvancetts(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const v4, 0x7f0b0d07

    const v3, 0x7f0b022e

    .line 1556
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1557
    return-void

    .line 1559
    :cond_0
    const-string/jumbo v0, ""

    .line 1560
    .local v0, "WiFiAdvanceMenuTts":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1562
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1569
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 1570
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1555
    :cond_1
    return-void

    .line 1565
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1566
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1566
    const-string/jumbo v2, " "

    .line 1565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1567
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0ce7

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1565
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private WifiDirectTts(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const v3, 0x7f0b11d0

    const v4, 0x7f0b022e

    .line 1535
    const-string/jumbo v1, ""

    .line 1536
    .local v1, "wiFiDirectMenuTts":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1538
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1539
    if-eqz p1, :cond_2

    .line 1540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1541
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1540
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1550
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1534
    :cond_1
    :goto_1
    return-void

    .line 1544
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1545
    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1545
    const-string/jumbo v3, " "

    .line 1544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1546
    const v3, 0x7f0b0ce7

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1551
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private forceScrollToTopOfList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1191
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1192
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 1190
    :cond_1
    :goto_0
    return-void

    .line 1194
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1195
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;
    .locals 8
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 715
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 716
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    .line 717
    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pickedApInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 718
    const-string/jumbo v7, ", bssid: "

    .line 717
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 718
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v7

    .line 717
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 719
    const-string/jumbo v7, ", WifiInfo.bssid: "

    .line 717
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 719
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    .line 717
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 723
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "ssid"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 725
    const-string/jumbo v5, "bssid"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    :goto_0
    const-string/jumbo v5, "security"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    const-string/jumbo v5, "frequency"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getFrequency()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 738
    return-object v2

    .line 727
    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "bssid":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v5, "any"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 729
    :cond_2
    iget-object v5, p1, Lcom/android/settingslib/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v5}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "result$iterator":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 730
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 734
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    .end local v4    # "result$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v5, "bssid"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isCricketManagerSupport()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1835
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    if-eqz v0, :cond_0

    .line 1836
    return v2

    .line 1838
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v0, :cond_2

    .line 1839
    :cond_1
    return v2

    .line 1841
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.smithmicro.netwise.director.cricket"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1842
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "There is no package for Cricket Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    return v2

    .line 1845
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isMobileApON()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1859
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1860
    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    return v3

    .line 1863
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1864
    .local v0, "mWifiApState":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 1865
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1866
    :cond_2
    return v3
.end method

.method private isUsimUseable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1806
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1807
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 1808
    .local v2, "simSate":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 1810
    .local v1, "isAirplaneMode":Z
    :goto_0
    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    if-eqz v1, :cond_3

    .line 1815
    :cond_0
    const-string/jumbo v4, "SKT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1816
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1818
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "45005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1831
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 1808
    .end local v1    # "isAirplaneMode":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isAirplaneMode":Z
    goto :goto_0

    .line 1811
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0cbe

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1812
    return v6

    .line 1818
    .restart local v0    # "imsi":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "45000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1819
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0cc0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1820
    return v6

    .line 1822
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1823
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1825
    .restart local v0    # "imsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string/jumbo v4, "45008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "45002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1826
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0cbf

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1827
    return v6
.end method


# virtual methods
.method protected addMessagePreference(I)V
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 1400
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1402
    .local v0, "emptyTextView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1403
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1405
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v1, :cond_1

    .line 1406
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1399
    :goto_0
    return-void

    .line 1408
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    .line 1409
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_0
.end method

.method protected addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 586
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    .line 587
    .local v0, "wifiIsEnabled":Z
    const v1, 0x7f0b11d2

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 590
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    if-eqz v1, :cond_0

    .line 591
    const v1, 0x7f0b1809

    invoke-interface {p1, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 592
    const v2, 0x7f02015a

    .line 591
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 593
    const/4 v2, 0x1

    .line 591
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v1, :cond_4

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 601
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    :cond_3
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 604
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 585
    :cond_4
    return-void
.end method

.method protected abstract changeNextButtonState(Z)V
.end method

.method protected checkContextMenuUiVisibility()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v0, :cond_1

    .line 642
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 637
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public checkGoToWebPageHTTPResponse()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 646
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 647
    .local v0, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v0, :cond_0

    .line 648
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dhcpInfo.gateway : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v2, :cond_0

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    .line 651
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Go to Webpage: gateway addr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$8;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 689
    .local v1, "gatewayTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Integer;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mGateway:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 645
    .end local v1    # "gatewayTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method protected checkRestrictionAndShowEmptyView()Z
    .locals 2

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1437
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "ui rstricted by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    const v0, 0x7f0b11da

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v0, :cond_1

    .line 1442
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1448
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1444
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    .line 1445
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onDataSetChanged()V

    .line 1446
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestrictedByOnlyAdmin()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView(Z)V

    goto :goto_0

    .line 1450
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected connect(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 839
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 840
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 841
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 837
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 832
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x87

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 833
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 834
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 830
    return-void
.end method

.method protected connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "rssi"    # I

    .prologue
    .line 1849
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1850
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.net.wifi.WECHAT_CONNECT_AP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1851
    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1852
    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1853
    const-string/jumbo v1, "rssi"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1854
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1848
    return-void
.end method

.method protected createAddNetworkPreference()V
    .locals 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const v1, 0x7f0201bd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const v1, 0x7f0b11c9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 423
    :cond_0
    return-void
.end method

.method protected createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 3

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 416
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 417
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    return-object v1

    .line 419
    .end local v0    # "activity":Lcom/android/settings/SettingsActivity;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected abstract disable()V
.end method

.method protected disconnect()V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 844
    return-void
.end method

.method protected abstract dismissDialog(I)V
.end method

.method protected findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1292
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 1293
    .local v0, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ap$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1294
    .local v1, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1295
    return-object v1

    .line 1298
    .end local v1    # "ap":Lcom/android/settingslib/wifi/AccessPoint;
    :cond_1
    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t find configured AP, networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v3, 0x0

    return-object v3
.end method

.method protected forget()V
    .locals 2

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x89

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1313
    return-void
.end method

.method protected forget(I)V
    .locals 2
    .param p1, "networkId"    # I

    .prologue
    .line 823
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 822
    return-void
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0

    .line 1396
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0

    .line 1322
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 819
    const/16 v0, 0x67

    return v0
.end method

.method protected getWifiDialogArgs(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/os/Bundle;
    .locals 5
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v2, 0x0

    .line 802
    if-nez p1, :cond_0

    .line 803
    return-object v2

    .line 805
    :cond_0
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiDialogArgs - apInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 807
    .local v0, "args":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 808
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 809
    .local v1, "linkProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_2

    .line 810
    const-string/jumbo v2, "args_linkproperties"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 813
    .end local v1    # "linkProperties":Landroid/net/LinkProperties;
    :cond_2
    const-string/jumbo v2, "manage_network"

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 814
    return-object v0
.end method

.method protected initFailListener()V
    .locals 1

    .prologue
    .line 1476
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$11;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1493
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$12;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1508
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$13;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1475
    return-void
.end method

.method protected isCoreanVendorAp(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 8
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1764
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1765
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 1766
    return v7

    .line 1767
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1768
    .local v3, "ssid":Ljava/lang/String;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1769
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v1, :cond_6

    .line 1770
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    .line 1771
    .local v2, "method":I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 1772
    const-string/jumbo v4, "T wifi zone_secure"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SKT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1773
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1774
    return v6

    .line 1776
    :cond_1
    const-string/jumbo v4, "ollehWiFi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1777
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1778
    return v6

    .line 1780
    :cond_2
    const-string/jumbo v4, "olleh GiGA WiFi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "KTT"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1781
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1782
    return v6

    .line 1784
    :cond_3
    const-string/jumbo v4, "U+zone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1785
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1786
    return v6

    .line 1788
    :cond_4
    const-string/jumbo v4, "U+zone_5G"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1789
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1790
    return v6

    .line 1792
    :cond_5
    const-string/jumbo v4, "5G_U+zone"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "LGU"

    sget-object v5, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1793
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1794
    return v6

    .line 1800
    .end local v2    # "method":I
    :cond_6
    return v7
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getView()Landroid/view/View;

    move-result-object v0

    .line 1457
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1458
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$10;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1455
    :cond_0
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 0

    .prologue
    .line 997
    return-void
.end method

.method public onAccessPointsChanged(Z)V
    .locals 19
    .param p1, "updatedScanResult"    # Z

    .prologue
    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    .line 1019
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkRestrictionAndShowEmptyView()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1020
    return-void

    .line 1022
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v18

    .line 1024
    .local v18, "wifiState":I
    packed-switch v18, :pswitch_data_0

    .line 1016
    :cond_2
    :goto_0
    return-void

    .line 1028
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v11

    .line 1030
    .local v11, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    const/16 v16, 0x0

    .line 1031
    .local v16, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_6

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->cacheRemoveAllPrefs(Landroid/preference/PreferenceGroup;)V

    .line 1037
    .end local v16    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    :goto_1
    const/4 v12, 0x0

    .line 1038
    .local v12, "hasAvailableAccessPoints":Z
    const/4 v13, 0x0

    .line 1039
    .local v13, "index":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "accessPoint$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1041
    .local v3, "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1042
    :cond_4
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v15

    .line 1043
    .local v15, "key":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1044
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "1"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1046
    :cond_5
    const/4 v12, 0x1

    .line 1048
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getCachedPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    .line 1047
    check-cast v4, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1049
    .local v4, "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    if-eqz v4, :cond_8

    .line 1050
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .local v14, "index":I
    invoke-virtual {v4, v13}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    move v13, v14

    .line 1051
    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto :goto_2

    .line 1034
    .end local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v12    # "hasAvailableAccessPoints":Z
    .end local v13    # "index":I
    .end local v15    # "key":Ljava/lang/String;
    .restart local v16    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    :cond_6
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .local v16, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    goto :goto_1

    .line 1044
    .end local v16    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/settingslib/wifi/AccessPointPreference;>;"
    .restart local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v12    # "hasAvailableAccessPoints":Z
    .restart local v13    # "index":I
    .restart local v15    # "key":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "0"

    goto :goto_3

    .line 1054
    .restart local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :cond_8
    new-instance v2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    .end local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v6, 0x0

    move-object/from16 v7, p0

    .line 1054
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 1056
    .local v2, "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    invoke-virtual {v2, v15}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 1057
    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    invoke-virtual {v2, v13}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1060
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSecurity:I

    if-ne v5, v6, :cond_9

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 1062
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    .line 1064
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_a

    .line 1065
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_17

    .line 1070
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 1071
    invoke-virtual {v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto/16 :goto_2

    .line 1067
    .end local v13    # "index":I
    .restart local v14    # "index":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 1075
    .end local v2    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .end local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .end local v14    # "index":I
    .end local v15    # "key":Ljava/lang/String;
    .restart local v13    # "index":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_e

    .line 1076
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    .line 1077
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v5, :cond_c

    .line 1078
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    .line 1083
    :cond_c
    :goto_5
    if-nez v12, :cond_12

    .line 1084
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v5, :cond_f

    .line 1085
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1089
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_11

    .line 1090
    new-instance v17, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1092
    .local v17, "pref":Landroid/preference/Preference;
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1093
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v5, :cond_10

    .line 1094
    const v5, 0x7f0b0caa

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 1098
    :goto_7
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 1099
    const-string/jumbo v5, "wifi_empty_list"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1111
    .end local v17    # "pref":Landroid/preference/Preference;
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_d

    .line 1112
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1130
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 1131
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScrollToTopOfList()V

    goto/16 :goto_0

    .line 1081
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->removeCachedPrefs(Landroid/preference/PreferenceGroup;)V

    goto :goto_5

    .line 1087
    :cond_f
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_6

    .line 1096
    .restart local v17    # "pref":Landroid/preference/Preference;
    :cond_10
    const v5, 0x7f0b002a

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_7

    .line 1102
    .end local v17    # "pref":Landroid/preference/Preference;
    :cond_11
    new-instance v4, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 1102
    const/4 v5, 0x0

    .line 1103
    const/4 v8, 0x0

    move-object/from16 v9, p0

    .line 1102
    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    .line 1104
    .restart local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSelectable(Z)V

    .line 1105
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 1106
    const-string/jumbo v5, "wifi_empty_list"

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 1107
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_8

    .line 1116
    .end local v4    # "pref":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    if-eqz v5, :cond_14

    .line 1117
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "index":I
    .restart local v14    # "index":I
    invoke-virtual {v5, v13}, Landroid/preference/Preference;->setOrder(I)V

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAddPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move v13, v14

    .line 1126
    .end local v14    # "index":I
    .restart local v13    # "index":I
    :cond_13
    :goto_a
    if-eqz p1, :cond_d

    .line 1127
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_9

    .line 1119
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_13

    .line 1120
    if-eqz p1, :cond_15

    .line 1121
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    goto :goto_a

    .line 1123
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    goto :goto_a

    .line 1136
    .end local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .end local v11    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .end local v12    # "hasAvailableAccessPoints":Z
    .end local v13    # "index":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v5, :cond_16

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1141
    :goto_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 1139
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    goto :goto_b

    .line 1145
    :pswitch_2
    const v5, 0x7f0b11b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 1146
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .line 1150
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setOffMessage()V

    .line 1151
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto/16 :goto_0

    .restart local v2    # "preference":Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .restart local v3    # "accessPoint":Lcom/android/settingslib/wifi/AccessPoint;
    .restart local v10    # "accessPoint$iterator":Ljava/util/Iterator;
    .restart local v11    # "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/wifi/AccessPoint;>;"
    .restart local v12    # "hasAvailableAccessPoints":Z
    .restart local v14    # "index":I
    .restart local v15    # "key":Ljava/lang/String;
    :cond_17
    move v13, v14

    .end local v14    # "index":I
    .restart local v13    # "index":I
    goto/16 :goto_2

    .line 1024
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 308
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 310
    const/16 v21, 0x1

    .line 311
    .local v21, "showRefreshLayout":Z
    const/4 v7, 0x1

    .line 312
    .local v7, "showScanItems":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v2, :cond_6

    .line 313
    const/16 v21, 0x0

    .line 314
    const/4 v7, 0x0

    .line 315
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    .line 319
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowNotInRagededAp:Z

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/WifiTracker;->setAccessPointVisible(Z)V

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.wifi.direct"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mP2pSupported:Z

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->initFailListener()V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 331
    .local v18, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "wifi_start_connect_ssid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 332
    const-string/jumbo v2, "wifi_start_connect_ssid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSsid:Ljava/lang/String;

    .line 333
    const-string/jumbo v2, "wifi_start_connect_security"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    const-string/jumbo v2, "wifi_start_connect_security"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOpenSecurity:I

    .line 345
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v2, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setEnableRefreshLayout(Z)V

    .line 350
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v19

    .line 351
    .local v19, "listview":Landroid/widget/ListView;
    if-eqz v19, :cond_3

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->registerForContextMenu(Landroid/view/View;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 354
    .local v20, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0a0014

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 355
    const v3, 0x7f0a0022

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 354
    add-int v12, v2, v3

    .line 356
    .local v12, "divider_inset_size":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 357
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 358
    .local v8, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 363
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v2, :cond_3

    .line 364
    const v2, 0x7f0205ce

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 368
    .end local v8    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v12    # "divider_inset_size":I
    .end local v20    # "resources":Landroid/content/res/Resources;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v17

    .line 369
    .local v17, "emptyTextView":Landroid/widget/TextView;
    if-eqz v17, :cond_4

    .line 370
    const v2, 0x800033

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 371
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0f0282

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 376
    :cond_4
    const-string/jumbo v2, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 377
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isCricketManagerSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/LayoutInflater;

    .line 379
    .local v16, "cricketInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04035b

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/View;->setTextAlignment(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCricketManagerHeader:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 307
    .end local v16    # "cricketInflater":Landroid/view/LayoutInflater;
    :cond_5
    return-void

    .line 316
    .end local v17    # "emptyTextView":Landroid/widget/TextView;
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "listview":Landroid/widget/ListView;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v2, :cond_0

    .line 317
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 336
    .restart local v18    # "intent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v2, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    .line 338
    const-string/jumbo v2, "extra_location_services"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    const-string/jumbo v2, "extra_location_services"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    goto/16 :goto_1

    .line 360
    .restart local v12    # "divider_inset_size":I
    .restart local v19    # "listview":Landroid/widget/ListView;
    .restart local v20    # "resources":Landroid/content/res/Resources;
    :cond_8
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 361
    .restart local v8    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2
.end method

.method public onAddNetworkPressed()V
    .locals 2

    .prologue
    .line 1385
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x86

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1388
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f10002e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 1384
    return-void
.end method

.method public onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 5
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "isMultipleChanged"    # Z
    .param p3, "reason"    # I

    .prologue
    const/4 v4, 0x0

    .line 1158
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfiguredNetworksChanged: config = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1159
    const-string/jumbo v3, ", isMultipleChanged = "

    .line 1158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1160
    const-string/jumbo v3, ", mRequestConnectionByUser = "

    .line 1158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1160
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    .line 1158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_0
    if-nez p1, :cond_2

    return-void

    .line 1158
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1162
    :cond_2
    if-eqz p2, :cond_3

    return-void

    .line 1164
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    if-eqz v1, :cond_4

    .line 1165
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v1, :cond_5

    .line 1166
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Failed to show retry popup. It\'s default AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_4
    :goto_1
    return-void

    .line 1167
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    if-nez v1, :cond_6

    .line 1168
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiSettingsBase"

    const-string/jumbo v2, "Failed to show retry popup. It\'s none secured (OPEN) AP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1170
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    .line 1171
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    .line 1172
    const/4 v2, 0x3

    .line 1171
    if-eq v1, v2, :cond_7

    .line 1173
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v1

    .line 1174
    const/4 v2, 0x7

    .line 1173
    if-ne v1, v2, :cond_4

    .line 1175
    :cond_7
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_8

    .line 1176
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 1177
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0d28

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1179
    :cond_8
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "WifiSettingsBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfiguredNetworksChanged: mShowRetryDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    if-eqz v1, :cond_a

    .line 1181
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 1182
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 1184
    :cond_a
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    goto :goto_1
.end method

.method public onConnectedChanged()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 943
    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConnectedChanged: isConnected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 945
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mShowRetryDialog:Z

    .line 947
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_4

    .line 948
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 949
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRequestConnectionByUser:Z

    .line 951
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 952
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_4

    .line 953
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 954
    .local v1, "networkId":I
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiSettingsBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEC PICKER from location, networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 957
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 958
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "matches - return picked AP & finish"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v3, v5, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 960
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 961
    return-void

    .line 963
    :cond_3
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "not maches"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "networkId":I
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v3, :cond_5

    .line 969
    const-string/jumbo v3, "WifiSettingsBase"

    const-string/jumbo v4, "onConnectedChanged : isConnected() : mInPickerDialog : Finish!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 971
    return-void

    .line 974
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    if-eqz v3, :cond_6

    .line 975
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    .line 976
    const-string/jumbo v4, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    .line 975
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 977
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 978
    return-void

    .line 983
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 984
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mCheckHttpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 989
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->changeNextButtonState(Z)V

    .line 942
    return-void

    .line 986
    :cond_7
    sput v6, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 240
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 242
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v5, "WifiSettingsBase"

    const/16 v6, 0xa

    invoke-direct {v3, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    .line 243
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 245
    sput-boolean v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    .line 246
    sput-boolean v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    .line 247
    sput v7, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    .line 249
    const/4 v2, 0x1

    .line 250
    .local v2, "useListAnimationFeature":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 251
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 252
    const-string/jumbo v3, "manage_network"

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    .line 254
    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-eqz v3, :cond_1

    .line 255
    const/4 v2, 0x0

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    if-nez v3, :cond_4

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;

    .line 258
    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/wifi/WifiSetupActivity;

    if-eqz v3, :cond_2

    .line 261
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    .line 262
    const/4 v2, 0x0

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    .line 266
    new-instance v3, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 267
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->isSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 268
    new-instance v3, Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    .line 275
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v1

    .line 277
    .local v1, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-virtual {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    .line 283
    .end local v1    # "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_3
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 239
    return-void

    :cond_4
    move v3, v4

    .line 258
    goto :goto_0

    .line 271
    :cond_5
    const v3, 0x7f080159

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addPreferencesFromResource(I)V

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->createAddNetworkPreference()V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f100028

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 631
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 574
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 576
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v0, :cond_3

    .line 579
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 570
    return-void

    .line 577
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addOptionsMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCricketManagerClicked()V
    .locals 5

    .prologue
    .line 1414
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.smithmicro.mnd.MNDSettings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1416
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    :goto_0
    return-void

    .line 1417
    :catch_0
    move-exception v0

    .line 1418
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "WifiSettingsBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 297
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    if-eqz v1, :cond_0

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkClicked:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertBigdataLog(ILjava/lang/String;)V

    .line 301
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 303
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroy()V

    .line 295
    return-void

    .line 298
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 389
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onDestroyView()V

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchBar()V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 388
    :cond_1
    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 1472
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->onLevelChanged()V

    .line 1471
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 610
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    const v1, 0x7f10002d

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLogForUx(I)V

    .line 613
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 615
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 627
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 617
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiAdvancedScreen()V

    .line 618
    return v2

    .line 620
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiConfigSettings()V

    .line 621
    return v2

    .line 623
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startWifiHelpScreen()V

    .line 624
    return v2

    .line 615
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public onP2pMenuPressed()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0b11d0

    const/4 v2, 0x0

    .line 1576
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 1578
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 1577
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1575
    :goto_0
    return-void

    .line 1582
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 1583
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1584
    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, p0

    .line 1583
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1589
    :cond_1
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 1590
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 1589
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 547
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onPause()V

    .line 548
    sput-boolean v4, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 550
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 553
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->stopTracking()V

    .line 554
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 556
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 557
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 558
    .local v0, "isScreenOn":Z
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsInProgress:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_2

    .line 566
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 546
    return-void

    .line 559
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v2, :cond_1

    .line 560
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    .line 561
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 433
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onResume()V

    .line 436
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->resetPeriodicScanTime()V

    .line 438
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v5, :cond_0

    .line 439
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 441
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->startTracking()V

    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isSharedDeviceKeyguardOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 446
    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "isSharedDeviceKeyguardOn!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 450
    :cond_1
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 451
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x4a

    iput v5, v3, Landroid/os/Message;->what:I

    .line 453
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "enable"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 455
    const-string/jumbo v5, "lock"

    invoke-virtual {v1, v5, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 458
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    if-nez v5, :cond_2

    .line 459
    const-string/jumbo v5, "WifiSettingsBase"

    const-string/jumbo v6, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_2
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mP2pSupported:Z

    if-eqz v5, :cond_3

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 464
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 465
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v5, :cond_a

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 467
    const v5, 0x7f0b11ad

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 468
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->updateActionBar()V

    .line 477
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_3
    :goto_0
    const-string/jumbo v5, "KTT"

    sget-object v6, Lcom/android/settings/Utils;->CONFIG_WIFI_AUTOCONNECT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 478
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_skip_auto_conn"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v11, :cond_b

    const/4 v4, 0x1

    .line 479
    .local v4, "skipAutoConnection":Z
    :goto_1
    const-string/jumbo v5, "WifiSettingsBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResume : MANUAL_CONN_ENABLE_QUERY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-eqz v4, :cond_4

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_skip_auto_conn"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 483
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.kt.wifiapi.OEMExtension.MANUAL_CONN_ENABLE_QUERY"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHandlerForKTCM:Landroid/os/Handler;

    .line 487
    new-instance v5, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRunnableForKTCM:Ljava/lang/Runnable;

    .line 507
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mHandlerForKTCM:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mRunnableForKTCM:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 512
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "skipAutoConnection":Z
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsEmerMode:Z

    if-eqz v5, :cond_c

    .line 513
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 514
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 517
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :cond_6
    iput-boolean v10, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->helpMenuCheck:Z

    .line 531
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 532
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    .line 535
    :cond_8
    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onAccessPointsChanged(Z)V

    .line 537
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-nez v5, :cond_9

    .line 538
    sput-boolean v11, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 542
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v8, "WiFiSettings"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 432
    return-void

    .line 472
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_a
    const v5, 0x7f0b0d1a

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    .line 478
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "skipAutoConnection":Z
    goto/16 :goto_1

    .line 522
    .end local v4    # "skipAutoConnection":Z
    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    .line 523
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    :cond_d
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    .line 526
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onScanStateChange(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 1005
    if-ne p1, v0, :cond_0

    .line 1006
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1004
    :cond_0
    return-void
.end method

.method public onShowButtonBackgroundChange(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1526
    if-eqz p1, :cond_1

    .line 1527
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const v1, 0x108073f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1524
    :cond_0
    :goto_0
    return-void

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 401
    invoke-super {p0}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->onStart()V

    .line 402
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 405
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInManageNetwork:Z

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 400
    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 888
    packed-switch p1, :pswitch_data_0

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 890
    :pswitch_0
    const v0, 0x7f0b11b1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->addMessagePreference(I)V

    .line 891
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 894
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 901
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 903
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 904
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 907
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 908
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    goto :goto_0

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 897
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 898
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    goto :goto_1

    .line 911
    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 913
    return-void

    .line 917
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->dismissDialog(I)V

    .line 918
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setOffMessage()V

    .line 919
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 920
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 921
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 922
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 923
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 924
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 926
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 927
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 930
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInOffloadDialog:Z

    if-eqz v0, :cond_0

    .line 931
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 932
    const-string/jumbo v1, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    .line 931
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 934
    return-void

    .line 888
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected saveConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 826
    return-void
.end method

.method protected sendPickedAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 5
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 695
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsFromLocation:Z

    if-eqz v1, :cond_2

    .line 697
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 699
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 701
    return v3

    .line 705
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mIsShouldSendResult:Z

    .line 706
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mLastUserPickedAp:Lcom/android/settingslib/wifi/AccessPoint;

    .line 711
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 707
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSecPickerActivity:Z

    if-eqz v1, :cond_1

    .line 708
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPickedApInfo(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 709
    return v3
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v0, :cond_0

    return-void

    .line 1432
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecRestrictedSettingsFragment;->setEmptyView(Landroid/view/View;)V

    .line 1430
    return-void
.end method

.method protected setFooterView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1326
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1325
    return-void
.end method

.method protected setOffMessage()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1330
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->checkRestrictionAndShowEmptyView()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1331
    return-void

    .line 1334
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 1335
    .local v2, "emptyTextView":Landroid/widget/TextView;
    if-nez v2, :cond_1

    .line 1336
    return-void

    .line 1339
    :cond_1
    const v6, 0x7f0b11d9

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1344
    .local v0, "briefText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1346
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v6, "wifi_scan_always_enabled"

    .line 1345
    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 1348
    .local v4, "wifiScanningMode":Z
    :goto_0
    if-eqz v4, :cond_2

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mInSetupWizardWifiScreen:Z

    if-eqz v6, :cond_4

    .line 1351
    :cond_2
    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1366
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1373
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->setProgressBarVisible(Z)V

    .line 1374
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-eqz v5, :cond_5

    .line 1375
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    .line 1376
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    .line 1329
    :goto_2
    return-void

    .end local v4    # "wifiScanningMode":Z
    :cond_3
    move v4, v5

    .line 1345
    goto :goto_0

    .line 1354
    .restart local v4    # "wifiScanningMode":Z
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1355
    .local v1, "contentBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1356
    const-string/jumbo v6, "\n\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    const v6, 0x7f0b11bf

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1358
    const-string/jumbo v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$9;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-static {v2, v1, v6}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    goto :goto_1

    .line 1378
    .end local v1    # "contentBuilder":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto :goto_2
.end method

.method protected abstract setProgressBarVisible(Z)V
.end method

.method protected setSecBssidWhitelist(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 11
    .param p1, "candidateAccessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 855
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 856
    :cond_0
    return-void

    .line 858
    :cond_1
    const-string/jumbo v8, "iptime"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 859
    const-string/jumbo v8, "iptime5G"

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 858
    if-eqz v8, :cond_5

    .line 860
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v8

    if-nez v8, :cond_5

    .line 861
    const-string/jumbo v1, ""

    .line 863
    .local v1, "bssid":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 864
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 865
    .local v2, "count":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "result$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 866
    .local v5, "result":Landroid/net/wifi/ScanResult;
    const/16 v8, 0x64

    if-le v2, v8, :cond_6

    .line 873
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, "data":Ljava/lang/String;
    const-string/jumbo v8, "WifiSettingsBase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSecBssidWhitelist : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 876
    .local v4, "msg":Landroid/os/Message;
    const/16 v8, 0x52

    iput v8, v4, Landroid/os/Message;->what:I

    .line 877
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 878
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v8, "BSSID"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 880
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 854
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "bssid":Ljava/lang/String;
    .end local v2    # "count":I
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v6    # "result$iterator":Ljava/util/Iterator;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    return-void

    .line 868
    .restart local v1    # "bssid":Ljava/lang/String;
    .restart local v2    # "count":I
    .restart local v5    # "result":Landroid/net/wifi/ScanResult;
    .restart local v6    # "result$iterator":Ljava/util/Iterator;
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_6
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 869
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected abstract showDialogForModify()V
.end method

.method protected abstract showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V
.end method

.method protected abstract showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V
.end method

.method protected startScan()V
    .locals 2

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x88

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 850
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceScan()V

    .line 848
    return-void
.end method

.method protected startScanningSettings()V
    .locals 10

    .prologue
    const v3, 0x7f0b0820

    const/4 v2, 0x0

    .line 754
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 756
    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 757
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    .line 755
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 753
    :goto_0
    return-void

    .line 759
    :cond_0
    const-class v0, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 760
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 759
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected startWifiAdvancedScreen()V
    .locals 10

    .prologue
    const v3, 0x7f0b0d07

    const/4 v2, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 744
    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 745
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 743
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 741
    :goto_0
    return-void

    .line 747
    :cond_0
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 748
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 747
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method protected startWifiConfigSettings()V
    .locals 10

    .prologue
    const v3, 0x7f0b1227

    const/4 v2, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 768
    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 769
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 767
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 765
    :goto_0
    return-void

    .line 771
    :cond_0
    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 772
    const/4 v8, -0x1

    move-object v4, p0

    move-object v5, p0

    move v7, v3

    move-object v9, v2

    .line 771
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public startWifiHelpScreen()V
    .locals 7

    .prologue
    .line 779
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 780
    .local v2, "info":Landroid/content/pm/PackageInfo;
    const-string/jumbo v4, "WifiSettingsBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onHelpMenuPressed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 776
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 782
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 783
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "wifi"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 786
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 795
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 796
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 790
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_3
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 791
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "helphub:appid"

    const-string/jumbo v5, "wi_fi"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method protected submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4
    .param p1, "configController"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 1303
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mScrollTimer:J

    .line 1304
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->forceScrollToTopOfList()V

    .line 1305
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1306
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1307
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->disconnect()V

    .line 1302
    :cond_0
    return-void
.end method

.method public updateActionBar()V
    .locals 14

    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1596
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1598
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const v11, 0x800015

    invoke-direct {v6, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 1599
    .local v6, "mLayoutParams":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04035f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1600
    .local v5, "mCustomLayout":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1601
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f11080e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    return-void

    .line 1602
    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1603
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1604
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1606
    :cond_1
    const v9, 0x7f11080e

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    .line 1608
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1609
    const v9, 0x7f11080f

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    .line 1610
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1612
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 1613
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v11, "action_bar"

    const-string/jumbo v12, "id"

    const-string/jumbo v13, "android"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1612
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 1614
    .local v8, "toolbar":Landroid/view/ViewGroup;
    if-eqz v8, :cond_3

    .line 1615
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 1618
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    .line 1620
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 1621
    .local v7, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x11600cb

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1625
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 1624
    .local v3, "curFontScale":F
    const v9, 0x3f99999a    # 1.2f

    .line 1627
    cmpl-float v9, v3, v9

    if-lez v9, :cond_4

    .line 1624
    const v3, 0x3f99999a    # 1.2f

    .line 1631
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    .line 1623
    const/high16 v10, 0x41700000    # 15.0f

    .line 1631
    mul-float/2addr v10, v3

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1633
    iget v9, v7, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_c

    const/4 v4, 0x1

    .line 1634
    .local v4, "isThemeDeviceDefaultFamily":Z
    :goto_0
    if-eqz v4, :cond_5

    .line 1635
    sget-object v9, Lcom/android/internal/R$styleable;->View:[I

    const/4 v10, 0x0

    .line 1636
    const v11, 0x10102d8

    const/4 v12, 0x0

    .line 1635
    invoke-virtual {v1, v10, v9, v11, v12}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1637
    .local v2, "av":Landroid/content/res/TypedArray;
    const/16 v9, 0xd

    .line 1638
    const v10, 0x1080739

    .line 1637
    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 1639
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1640
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 1641
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onShowButtonBackgroundChange(Z)V

    .line 1649
    .end local v2    # "av":Landroid/content/res/TypedArray;
    :cond_5
    :goto_1
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1650
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSettingsBase$14;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$14;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1683
    .end local v3    # "curFontScale":F
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1685
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 1686
    .restart local v7    # "outValue":Landroid/util/TypedValue;
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x11600cb

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1690
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->fontScale:F

    .line 1689
    .restart local v3    # "curFontScale":F
    const v9, 0x3f99999a    # 1.2f

    .line 1692
    cmpl-float v9, v3, v9

    if-lez v9, :cond_7

    .line 1689
    const v3, 0x3f99999a    # 1.2f

    .line 1696
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    .line 1688
    const/high16 v10, 0x41700000    # 15.0f

    .line 1696
    mul-float/2addr v10, v3

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1697
    iget v9, v7, Landroid/util/TypedValue;->data:I

    if-eqz v9, :cond_e

    const/4 v4, 0x1

    .line 1698
    .restart local v4    # "isThemeDeviceDefaultFamily":Z
    :goto_2
    if-eqz v4, :cond_8

    .line 1699
    sget-object v9, Lcom/android/internal/R$styleable;->View:[I

    const/4 v10, 0x0

    .line 1700
    const v11, 0x10102d8

    const/4 v12, 0x0

    .line 1699
    invoke-virtual {v1, v10, v9, v11, v12}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1701
    .restart local v2    # "av":Landroid/content/res/TypedArray;
    const/16 v9, 0xd

    .line 1702
    const v10, 0x1080739

    .line 1701
    invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    .line 1703
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1704
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 1705
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    const v10, 0x108073f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1710
    .end local v2    # "av":Landroid/content/res/TypedArray;
    :cond_8
    :goto_3
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 1711
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSettingsBase$15;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase$15;-><init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1720
    .end local v3    # "curFontScale":F
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1727
    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v9, :cond_b

    .line 1728
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_11

    .line 1729
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1730
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1731
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1732
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    .line 1594
    :cond_b
    :goto_4
    return-void

    .line 1633
    .restart local v3    # "curFontScale":F
    .restart local v7    # "outValue":Landroid/util/TypedValue;
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1644
    .restart local v2    # "av":Landroid/content/res/TypedArray;
    .restart local v4    # "isThemeDeviceDefaultFamily":Z
    :cond_d
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onShowButtonBackgroundChange(Z)V

    goto/16 :goto_1

    .line 1697
    .end local v2    # "av":Landroid/content/res/TypedArray;
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_2

    .line 1707
    .restart local v2    # "av":Landroid/content/res/TypedArray;
    .restart local v4    # "isThemeDeviceDefaultFamily":Z
    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiAdvanced:Landroid/widget/TextView;

    iget v10, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mBackgroundResId:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 1721
    .end local v2    # "av":Landroid/content/res/TypedArray;
    .end local v3    # "curFontScale":F
    .end local v4    # "isThemeDeviceDefaultFamily":Z
    .end local v7    # "outValue":Landroid/util/TypedValue;
    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v9, :cond_b

    .line 1722
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1723
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1724
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    goto :goto_4

    .line 1733
    :cond_11
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b

    .line 1734
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1735
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiDirect:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1736
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiDirectTts(Z)V

    .line 1737
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->WifiAdvancetts(Z)V

    goto :goto_4
.end method
