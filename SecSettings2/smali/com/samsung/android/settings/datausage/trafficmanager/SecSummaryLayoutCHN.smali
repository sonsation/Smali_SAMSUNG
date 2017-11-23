.class public Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
.super Ljava/lang/Object;
.source "SecSummaryLayoutCHN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$1;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$4;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;
    }
.end annotation


# static fields
.field public static mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

.field public static misSupportDataCompression:Z

.field private static sCurrentTabSubId:I

.field private static sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

.field private mDataStatus:I

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

.field private mDataUsedNoLimit:Landroid/widget/TextView;

.field private mDataUsedNoLimit_land:Landroid/widget/TextView;

.field private final mDataUsgaeObserver:Landroid/database/ContentObserver;

.field private mDividerView:Landroid/view/View;

.field private mDividerView_land:Landroid/view/View;

.field private mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mGraphFreeColor:I

.field private mGraphLineColor:I

.field private mGraphOccupiedColor:I

.field private mIndexNum:I

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPieChartInfoLayout:Landroid/view/View;

.field private mPieChartInfoLayout_land:Landroid/view/View;

.field private mRamFree:Landroid/widget/TextView;

.field private mRamFreePercent:Landroid/widget/TextView;

.field private mRamFreePercent_land:Landroid/widget/TextView;

.field private mRamFree_land:Landroid/widget/TextView;

.field private mRelativeLayoutRaminfo:Landroid/view/View;

.field private mRelativeLayoutRaminfo_land:Landroid/view/View;

.field private mResInstance:Landroid/content/res/Resources;

.field private mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

.field private mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

.field private mSavedTV:Landroid/widget/TextView;

.field private mSavedTV_land:Landroid/widget/TextView;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

.field private mUseDataTotalPercent:Landroid/widget/TextView;

.field private mUseDataTotalPercent_land:Landroid/widget/TextView;

.field private mUsedText:Landroid/widget/TextView;

.field private mUsedText_land:Landroid/widget/TextView;

.field private mViewDetailButton:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mViewDetailButton_land:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mViewDetailListener:Landroid/view/View$OnClickListener;

.field private mtvTotalRam:Landroid/widget/TextView;

.field private mtvTotalRam_land:Landroid/widget/TextView;

.field public savedString:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/android/settings/datausage/DataUsageSummary;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)V
    .locals 0
    .param p0, "subId"    # I

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setCurrentTabSubId(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->showErrorWarningDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    .line 156
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->misSupportDataCompression:Z

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/datausage/DataUsageSummary;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsgaeObserver:Landroid/database/ContentObserver;

    .line 270
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 290
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 802
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$4;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailListener:Landroid/view/View$OnClickListener;

    .line 196
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 199
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    .line 201
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 202
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    .line 195
    return-void
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "isMultiSim"    # Z

    .prologue
    const/4 v7, 0x0

    .line 357
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 358
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {p1, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    if-eqz p3, :cond_1

    .line 360
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    .line 361
    .local v1, "num":I
    const-string/jumbo v4, "SummaryPreferenceCHN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subInfo.getSimSlotIndex()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->toString()Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, "simIcon":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 364
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "simIcon":Landroid/widget/ImageView;
    check-cast v2, Landroid/widget/ImageView;

    .line 365
    .local v2, "simIcon":Landroid/widget/ImageView;
    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 367
    .local v0, "SCALE":F
    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v0

    float-to-int v3, v4

    .line 368
    .local v3, "tab_icon_padding":I
    invoke-virtual {v2, v7, v7, v3, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 369
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    .line 356
    .end local v0    # "SCALE":F
    .end local v1    # "num":I
    .end local v2    # "simIcon":Landroid/widget/ImageView;
    .end local v3    # "tab_icon_padding":I
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 373
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f0b18c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    .line 377
    :cond_2
    const-string/jumbo v4, "SummaryPreferenceCHN"

    const-string/jumbo v5, "addMobileTab: subInfoList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 301
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method public static colorToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 768
    const-string/jumbo v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveSubscriptionInfoCount(Landroid/content/Context;)I
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "count":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 337
    .local v1, "subManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_0

    .line 338
    return v0

    .line 340
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 341
    const-string/jumbo v2, "SummaryPreferenceCHN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the ActiveSubscriptionInfoCount is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return v0
.end method

.method public static getCurrentTabSubId()I
    .locals 1

    .prologue
    .line 401
    sget v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    return v0
.end method

.method private getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 382
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    if-eqz v5, :cond_1

    .line 383
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 384
    .local v0, "currentTagIndex":I
    const/4 v1, 0x0

    .line 385
    .local v1, "i":I
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 386
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {p1, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-ne v1, v0, :cond_2

    .line 388
    return-object v3

    .line 393
    .end local v0    # "currentTagIndex":I
    .end local v2    # "i":I
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v6

    .restart local v0    # "currentTagIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v4    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public static getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 405
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v0

    .line 406
    .local v0, "currentSubId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 407
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    .line 409
    :cond_0
    invoke-static {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
    .locals 1

    .prologue
    .line 1174
    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    return-object v0
.end method

.method public static getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 1062
    const/4 v2, 0x0

    .line 1063
    .local v2, "category":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1065
    .local v7, "mSavedIDlist":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1066
    const-string/jumbo v12, "com.samsung.android.app.sreminder"

    const/16 v13, 0x80

    .line 1065
    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1067
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1068
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "lifeservice.category.OP"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1069
    .local v2, "category":Ljava/lang/String;
    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "result:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "category":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_4

    .line 1076
    const/4 v9, 0x0

    .line 1077
    .local v9, "mSavedReadingModeNums":I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1078
    const-string/jumbo v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1079
    .local v7, "mSavedIDlist":[Ljava/lang/String;
    array-length v9, v7

    .line 1081
    .end local v7    # "mSavedIDlist":[Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 1082
    return-object v7

    .line 1072
    .end local v9    # "mSavedReadingModeNums":I
    .local v7, "mSavedIDlist":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1073
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1070
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 1071
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1084
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "mSavedIDlist":[Ljava/lang/String;
    .restart local v9    # "mSavedReadingModeNums":I
    :cond_1
    const/4 v10, 0x0

    .line 1086
    .local v10, "res":Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1087
    const-string/jumbo v12, "com.samsung.android.app.sreminder"

    .line 1086
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 1092
    .end local v10    # "res":Landroid/content/res/Resources;
    :goto_1
    new-array v8, v9, [Ljava/lang/String;

    .line 1093
    .local v8, "mSavedLabel":[Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1094
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v9, :cond_3

    .line 1095
    aget-object v11, v7, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "string"

    .line 1096
    const-string/jumbo v13, "com.samsung.android.app.sreminder"

    .line 1095
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1097
    .local v6, "id":I
    if-eqz v6, :cond_2

    .line 1098
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v5

    .line 1094
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1088
    .end local v5    # "i":I
    .end local v6    # "id":I
    .end local v8    # "mSavedLabel":[Ljava/lang/String;
    .restart local v10    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v3

    .line 1090
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "com.samsung.android.app.sreminder name exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1102
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "res":Landroid/content/res/Resources;
    .restart local v8    # "mSavedLabel":[Ljava/lang/String;
    :cond_3
    return-object v8

    .line 1104
    .end local v8    # "mSavedLabel":[Ljava/lang/String;
    .end local v9    # "mSavedReadingModeNums":I
    .restart local v7    # "mSavedIDlist":[Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    return-object v11
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 348
    .local v0, "simName":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "simName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 351
    .local v0, "simName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "simName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 413
    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v8, 0x0

    .line 492
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 493
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 494
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 495
    .local v3, "slotId":I
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    const/4 v1, 0x1

    .line 497
    .local v1, "isReady":Z
    :goto_0
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v1

    .line 498
    :goto_1
    const-string/jumbo v5, "SummaryPreferenceCHN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasReadyMobileRadio: subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 499
    const-string/jumbo v7, " conn.isNetworkSupported(TYPE_MOBILE)="

    .line 498
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 499
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    .line 498
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 500
    const-string/jumbo v7, " isReady="

    .line 498
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    return v2

    .line 495
    .end local v1    # "isReady":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "isReady":Z
    goto :goto_0

    .line 497
    :cond_1
    const/4 v2, 0x0

    .local v2, "retVal":Z
    goto :goto_1
.end method

.method private initDonutLandLayout(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 575
    const-string/jumbo v6, "SummaryPreferenceCHN/LPF"

    const-string/jumbo v7, "initDonutLandLayout() orientation:"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const v6, 0x7f110275

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    .line 577
    const v6, 0x7f11003b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    .line 578
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 579
    const v6, 0x7f110047

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    .line 580
    const v6, 0x7f110046

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    .line 581
    const v6, 0x7f110048

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    .line 587
    :goto_0
    const v6, 0x7f110279

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree_land:Landroid/widget/TextView;

    .line 588
    const v6, 0x7f11027a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam_land:Landroid/widget/TextView;

    .line 589
    const v6, 0x7f110277

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    .line 590
    const v6, 0x7f11027b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton_land:Lcom/samsung/android/settings/widget/RoundButtonView;

    .line 591
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton_land:Lcom/samsung/android/settings/widget/RoundButtonView;

    invoke-virtual {v6, v8}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    .line 592
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton_land:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 594
    const v6, 0x7f110044

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 598
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 599
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-nez v6, :cond_0

    .line 600
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree_land:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 605
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f0a0319

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 606
    .local v5, "radius":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 607
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f0a05d6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 608
    .local v4, "mSize":I
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f0a05d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 609
    .local v3, "mRadius":I
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v6, v4, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    .line 613
    .end local v3    # "mRadius":I
    .end local v4    # "mSize":I
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 614
    const v7, 0x7f0a066a

    .line 613
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 615
    .local v0, "donutLayoutHeight":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-nez v6, :cond_1

    .line 616
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v0, v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    .line 617
    const/4 v2, 0x0

    .line 618
    .local v2, "mIsDirectionRTL":Z
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    .line 619
    const/4 v7, 0x1

    .line 618
    if-ne v6, v7, :cond_6

    const/4 v2, 0x1

    .line 620
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v2}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    .line 624
    .end local v2    # "mIsDirectionRTL":Z
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 625
    const v6, 0x7f110278

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    .line 626
    const v6, 0x7f110276

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/datasaving/SavedDataCircleView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    .line 629
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    .line 630
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v7

    .line 629
    invoke-virtual {v6, v7}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    .line 631
    .local v1, "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInfoData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 632
    sget-object v6, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 574
    return-void

    .line 583
    .end local v0    # "donutLayoutHeight":I
    .end local v1    # "info":Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .end local v5    # "radius":I
    :cond_3
    const v6, 0x7f110039

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView_land:Landroid/view/View;

    .line 584
    const v6, 0x7f11003a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    .line 585
    const v6, 0x7f110038

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 596
    :cond_4
    const v6, 0x7f110036

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    goto/16 :goto_1

    .line 611
    .restart local v5    # "radius":I
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v8, v8, v5}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    goto/16 :goto_2

    .line 618
    .restart local v0    # "donutLayoutHeight":I
    .restart local v2    # "mIsDirectionRTL":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private initDonutLayout(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 505
    const-string/jumbo v5, "SummaryPreferenceCHN/LPF"

    const-string/jumbo v6, "initDonutLayout() orientation:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const v5, 0x7f11026e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    .line 508
    const v5, 0x7f110034

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo:Landroid/view/View;

    .line 509
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 510
    const v5, 0x7f110041

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    .line 511
    const v5, 0x7f110040

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    .line 512
    const v5, 0x7f110042

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    .line 518
    :goto_0
    const v5, 0x7f110272

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree:Landroid/widget/TextView;

    .line 519
    const v5, 0x7f110273

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam:Landroid/widget/TextView;

    .line 520
    const v5, 0x7f110270

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    .line 521
    const v5, 0x7f110274

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/RoundButtonView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    .line 522
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    .line 523
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton:Lcom/samsung/android/settings/widget/RoundButtonView;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 527
    const v5, 0x7f110271

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    .line 528
    const v5, 0x7f11026f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/datasaving/SavedDataCircleView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    .line 531
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 532
    const v5, 0x7f11003e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    .line 536
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 537
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-nez v5, :cond_1

    .line 538
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0a0319

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 544
    .local v4, "radius":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 545
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0a05d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 546
    .local v3, "mSize":I
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0a05d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 547
    .local v2, "mRadius":I
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v5, v3, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    .line 551
    .end local v2    # "mRadius":I
    .end local v3    # "mSize":I
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 552
    const v6, 0x7f0a066a

    .line 551
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 553
    .local v0, "donutLayoutHeight":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-nez v5, :cond_2

    .line 554
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v0, v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    .line 555
    const/4 v1, 0x0

    .line 556
    .local v1, "mIsDirectionRTL":Z
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    .line 557
    const/4 v6, 0x1

    .line 556
    if-ne v5, v6, :cond_6

    const/4 v1, 0x1

    .line 558
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v1}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    .line 504
    .end local v1    # "mIsDirectionRTL":Z
    :cond_2
    return-void

    .line 514
    .end local v0    # "donutLayoutHeight":I
    .end local v4    # "radius":I
    :cond_3
    const v5, 0x7f110032

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView:Landroid/view/View;

    .line 515
    const v5, 0x7f110033

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    .line 516
    const v5, 0x7f110031

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 534
    :cond_4
    const v5, 0x7f11002f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    goto/16 :goto_1

    .line 549
    .restart local v4    # "radius":I
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v7, v7, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    goto :goto_2

    .line 556
    .restart local v0    # "donutLayoutHeight":I
    .restart local v1    # "mIsDirectionRTL":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    .line 418
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 420
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 421
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 422
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "mobileTag":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 426
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "mobileTag":Ljava/lang/String;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method

.method private initTabView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 223
    const v1, 0x1020012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    .line 224
    const v1, 0x7f11027d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabsContainer:Landroid/view/ViewGroup;

    .line 225
    const v1, 0x1020013

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabWidget;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    .line 226
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateTabs()V

    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 229
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 230
    const-string/jumbo v1, "SummaryPreferenceCHN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the init current tab sub id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setCurrentTabSubId(I)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    .line 235
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/DataUsageSummary;->addEnt1Section(I)V

    .line 222
    return-void
.end method

.method private setColorOnStatus(F)V
    .locals 3
    .param p1, "percentage"    # F

    .prologue
    const/4 v2, 0x0

    .line 668
    cmpg-float v1, p1, v2

    if-gtz v1, :cond_1

    .line 669
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 674
    .local v0, "colorSet":I
    :goto_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    .line 690
    :goto_1
    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphOccupiedColor:I

    .line 691
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphFreeColor:I

    .line 692
    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    .line 693
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 694
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 695
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 696
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 697
    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    .line 666
    return-void

    .line 672
    .end local v0    # "colorSet":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "colorSet":I
    goto :goto_0

    .line 675
    .end local v0    # "colorSet":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    sub-float v1, p1, v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 676
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 677
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 681
    .restart local v0    # "colorSet":I
    :goto_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    goto :goto_1

    .line 679
    .end local v0    # "colorSet":I
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "colorSet":I
    goto :goto_2

    .line 683
    .end local v0    # "colorSet":I
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 684
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 688
    .restart local v0    # "colorSet":I
    :goto_3
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    goto :goto_1

    .line 686
    .end local v0    # "colorSet":I
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .restart local v0    # "colorSet":I
    goto :goto_3
.end method

.method private static setCurrentTabSubId(I)V
    .locals 0
    .param p0, "subId"    # I

    .prologue
    .line 397
    sput p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    .line 396
    return-void
.end method

.method private setDonut(F)V
    .locals 12
    .param p1, "percentage"    # F

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    .line 641
    const-string/jumbo v3, "SummaryPreferenceCHN/LPF"

    const-string/jumbo v4, "setDonut()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-nez v3, :cond_1

    .line 643
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v1, "pieInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;>;"
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 645
    .local v2, "position":[I
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 646
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 647
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getY()F

    move-result v3

    .line 648
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f0a05ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 647
    add-float/2addr v3, v4

    .line 649
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 647
    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 650
    .local v0, "lineFreeY":I
    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    sub-float v4, v6, p1

    .line 651
    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphOccupiedColor:I

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v5

    .line 650
    invoke-direct {v3, v4, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    .line 653
    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    .line 654
    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphFreeColor:I

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    .line 653
    invoke-direct {v3, p1, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 657
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v7, v10, v11}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    .line 658
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 659
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v7, v10, v11}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    .line 660
    return-void

    .line 662
    .end local v0    # "lineFreeY":I
    .end local v1    # "pieInfoArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;>;"
    .end local v2    # "position":[I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    sub-float v4, v6, p1

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    invoke-virtual {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 663
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    sub-float v4, v6, p1

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    invoke-virtual {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    .line 640
    return-void
.end method

.method private setTrafficText(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f0b0fa5

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 701
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0b18ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0b18ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 712
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 748
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 749
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0b0fa6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0b0fa6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const v3, 0x7f0b0fa4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const v3, 0x7f0b0fa4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    return-void

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 730
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 731
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 740
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 751
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 759
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0b0fa7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0b0fa7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 752
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 753
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 756
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private showErrorWarningDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1047
    if-nez p1, :cond_0

    .line 1048
    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;-><init>()V

    .line 1049
    .local v1, "dnsDialog":Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1050
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "titleResId"

    .line 1051
    const v3, 0x7f0b0447

    .line 1050
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1052
    const-string/jumbo v2, "positiveResId"

    const v3, 0x7f0b0440

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1053
    const-string/jumbo v2, "negativeResId"

    const v3, 0x7f0b0437

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1054
    const-string/jumbo v2, "bodyResId"

    const v3, 0x7f0b0fb3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1055
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1056
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "wlan"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1046
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dnsDialog":Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;
    :cond_0
    return-void
.end method

.method private updateSavedTvState()V
    .locals 9

    .prologue
    const v8, 0x7f0b0fb6

    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1143
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1144
    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1147
    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "updateSavedTvState "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    .line 1150
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v2

    .line 1151
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v4

    .line 1149
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/datausage/DataSavingChnPreference;->getSavedBytesForAllUid(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/datausage/DataSavingChnPreference;->getUsageText(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1154
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1155
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    .line 1156
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 1155
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1159
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    .line 1161
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 1160
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    :cond_3
    :goto_0
    return-void

    .line 1164
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTabs()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 306
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 307
    iput v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    .line 308
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getActiveSubscriptionInfoCount(Landroid/content/Context;)I

    move-result v2

    .line 309
    .local v2, "simCount":I
    const-string/jumbo v6, "SummaryPreferenceCHN"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simCount"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->toString()Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 312
    .local v5, "sirs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v5, :cond_1

    .line 313
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "sir$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 315
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    if-le v2, v7, :cond_0

    move v6, v7

    :goto_1
    invoke-direct {p0, v9, v3, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    goto :goto_0

    :cond_0
    move v6, v8

    goto :goto_1

    .line 319
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "sir$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v1, 0x1

    .line 320
    .local v1, "noTabs":Z
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-le v6, v7, :cond_3

    const/4 v0, 0x1

    .line 321
    .local v0, "multipleTabs":Z
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v6, v8}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 305
    return-void

    .line 319
    .end local v0    # "multipleTabs":Z
    .end local v1    # "noTabs":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "noTabs":Z
    goto :goto_2

    .line 320
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "multipleTabs":Z
    goto :goto_3

    .line 321
    :cond_4
    const/16 v8, 0x8

    goto :goto_4
.end method


# virtual methods
.method public changeLayoutOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 772
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 771
    :goto_0
    return-void

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getIMSIBySoltId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 265
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 266
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    sget v2, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "IMSI":Ljava/lang/String;
    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 811
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v7

    .line 812
    .local v7, "mTemplate":Landroid/net/NetworkTemplate;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 813
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "network_template"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 814
    const-string/jumbo v0, "sub_id"

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 815
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 816
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0b1bfa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v6, v4

    .line 815
    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSavedBytesByUid(I)J
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v0, :cond_1

    .line 1180
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataSavingChnPreference;->getSavedBytesByUid(IJJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 1183
    :catch_0
    move-exception v6

    .line 1184
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "getSavedBytesByUid failed with exception "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1187
    :cond_1
    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "mDataSavingService is nulll ,getSavedBytesByUid failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initAutoCalibrationStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1018
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1019
    .local v0, "currentStatus":I
    const-string/jumbo v1, "SummaryPreferenceCHN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initAutoCalibrationStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    if-eq v0, v5, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1021
    :cond_0
    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "register the receiver again"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1023
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1024
    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsgaeObserver:Landroid/database/ContentObserver;

    .line 1023
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1017
    :cond_1
    :goto_0
    return-void

    .line 1025
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1026
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1025
    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1
.end method

.method public initDataSavingLayout()V
    .locals 5

    .prologue
    .line 246
    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "initDataSavingLayout "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v3, v3, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v3, :cond_0

    .line 250
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 251
    .local v1, "currentTabSlotid":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getIMSIBySoltId()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "currentIMSI":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v3, v3, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v3, v0}, Lcom/samsung/android/datasaving/IDataSavingService;->setCurrentIMSI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "currentIMSI":Ljava/lang/String;
    .end local v1    # "currentTabSlotid":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateSavedTvState()V

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateSavedDataCircleView()V

    .line 245
    :goto_1
    return-void

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "exception happen when Called mDataSavingService interface"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "mDataSavingChnPreference is null "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 206
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    .line 207
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initTabView(Landroid/view/View;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDonutLayout(Landroid/view/View;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDonutLandLayout(Landroid/view/View;)V

    .line 210
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 211
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-static {v3}, Lcom/android/settings/Utils;->setAutoVerfiyTrafficEnable(Z)V

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 214
    const-string/jumbo v2, "donnotshow_checked_flag"

    .line 213
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, "flag":I
    if-eqz v0, :cond_0

    .line 216
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/Utils;->setAutoVerfiyTrafficEnable(Z)V

    .line 217
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->startAutoCalibrationService(I)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initAutoCalibrationStatus()V

    .line 205
    .end local v0    # "flag":I
    :cond_1
    return-void
.end method

.method public isDataCompressionEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1193
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "opera_max_china_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setDataSavingChnPreference(Lcom/android/settings/datausage/DataSavingChnPreference;)V
    .locals 2
    .param p1, "Preference"    # Lcom/android/settings/datausage/DataSavingChnPreference;

    .prologue
    .line 241
    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "setDataSavingChnPreference "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    .line 240
    return-void
.end method

.method public setInfoData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    .prologue
    .line 785
    sput-object p1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    .line 784
    return-void
.end method

.method public setInstance(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V
    .locals 0
    .param p1, "mInstance"    # Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    .prologue
    .line 1170
    sput-object p1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    .line 1169
    return-void
.end method

.method public showWarningDialog(Landroid/os/Bundle;Z)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "isNeedSendSms"    # Z

    .prologue
    .line 1030
    const-string/jumbo v3, "wlan"

    .line 1031
    .local v3, "tagWlan":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1032
    .local v2, "isShowing":Z
    if-nez p1, :cond_0

    .line 1033
    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    .line 1034
    .local v1, "dnsDialog":Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1035
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "titleResId"

    .line 1036
    const v5, 0x7f0b0fad

    .line 1035
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1037
    const-string/jumbo v4, "positiveResId"

    const v5, 0x7f0b0445

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1038
    const-string/jumbo v4, "negativeResId"

    const v5, 0x7f0b0446

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1039
    const-string/jumbo v4, "bodyResId"

    const v5, 0x7f0b0fac

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1040
    const-string/jumbo v4, "isneedsendsms"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1041
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1042
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1043
    const/4 v2, 0x1

    .line 1029
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dnsDialog":Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;
    :cond_0
    return-void
.end method

.method public startAutoCalibrationService(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x2

    .line 988
    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "startAutoCalibrationService()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 990
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.sm_cn"

    const-string/jumbo v4, "com.samsung.android.sm.enhancedatausage.AutoCalibrationService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 991
    const-string/jumbo v2, "sub_id"

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    const-string/jumbo v2, "service_action"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 995
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-ne p1, v5, :cond_1

    .line 996
    :cond_0
    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "register the observer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_auto_calibration_result"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 998
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 999
    const-string/jumbo v3, "key_auto_calibration_result"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsgaeObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    .line 998
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    :cond_1
    :goto_0
    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAutoCalibrationService()V
    .locals 5

    .prologue
    .line 1007
    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "stopAutoCalibrationService()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1009
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.sm_cn"

    const-string/jumbo v4, "com.samsung.android.sm.enhancedatausage.AutoCalibrationService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1011
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :goto_0
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePolicy()V
    .locals 2

    .prologue
    .line 922
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy(IZ)V

    .line 921
    return-void
.end method

.method public updatePolicy(IZ)V
    .locals 14
    .param p1, "subId"    # I
    .param p2, "isCurrentTab"    # Z

    .prologue
    .line 925
    const/4 v9, 0x0

    .line 927
    .local v9, "total":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set_data_limit"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 931
    .local v9, "total":Ljava/lang/String;
    :goto_0
    const-string/jumbo v10, "off"

    .line 933
    .local v10, "warningValue":Ljava/lang/String;
    :try_start_1
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "data_warning_set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 937
    :goto_1
    const/4 v6, 0x0

    .line 938
    .local v6, "restrictOn":Z
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 939
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restrict_data_check_box"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 938
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_2

    .line 939
    const/4 v6, 0x0

    .line 940
    :goto_2
    const/4 v7, 0x1

    .line 941
    .local v7, "startDay":I
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set_package_start_date_value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 942
    const/4 v3, 0x0

    .line 943
    .local v3, "isEnable":Z
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 944
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "switch_traffic_settings"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 943
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_3

    .line 944
    const/4 v3, 0x0

    .line 946
    :goto_3
    new-instance v4, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {v4, v11}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    .line 947
    .local v4, "mTrafficUtils":Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;
    invoke-virtual {v4, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    .line 948
    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 949
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v8

    .line 950
    .local v8, "template":Landroid/net/NetworkTemplate;
    if-nez p2, :cond_0

    .line 951
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v8

    .line 953
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v5

    .line 954
    .local v5, "manager":Landroid/net/NetworkPolicyManager;
    new-instance v2, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v2, v5}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    .line 955
    .local v2, "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    invoke-virtual {v2}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    .line 956
    if-eqz v3, :cond_7

    .line 957
    const-string/jumbo v11, "max"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 974
    :cond_1
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 975
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 983
    :goto_4
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    iget-object v0, v11, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 984
    .local v0, "cycleTimezone":Ljava/lang/String;
    invoke-virtual {v2, v8, v7, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 924
    return-void

    .line 928
    .end local v0    # "cycleTimezone":Ljava/lang/String;
    .end local v2    # "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    .end local v3    # "isEnable":Z
    .end local v4    # "mTrafficUtils":Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;
    .end local v5    # "manager":Landroid/net/NetworkPolicyManager;
    .end local v6    # "restrictOn":Z
    .end local v7    # "startDay":I
    .end local v8    # "template":Landroid/net/NetworkTemplate;
    .end local v10    # "warningValue":Ljava/lang/String;
    .local v9, "total":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 929
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "max"

    .local v9, "total":Ljava/lang/String;
    goto/16 :goto_0

    .line 934
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v10    # "warningValue":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 935
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "off"

    goto/16 :goto_1

    .line 939
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "restrictOn":Z
    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_2

    .line 944
    .restart local v3    # "isEnable":Z
    .restart local v7    # "startDay":I
    :cond_3
    const/4 v3, 0x1

    goto :goto_3

    .line 958
    .restart local v2    # "editor":Lcom/android/settingslib/NetworkPolicyEditor;
    .restart local v4    # "mTrafficUtils":Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;
    .restart local v5    # "manager":Landroid/net/NetworkPolicyManager;
    .restart local v8    # "template":Landroid/net/NetworkTemplate;
    :cond_4
    const-string/jumbo v11, "off"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 960
    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningByte()J

    move-result-wide v12

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 965
    :goto_5
    if-eqz v6, :cond_6

    .line 967
    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getlimiValue()J

    move-result-wide v12

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_4

    .line 963
    :cond_5
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_5

    .line 970
    :cond_6
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_4

    .line 979
    :cond_7
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 980
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_4
.end method

.method public updateSavedDataCircleView()V
    .locals 9

    .prologue
    const v8, 0x7f0a031a

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1109
    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v4, "updateSavedDataCircleView "

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1111
    const-string/jumbo v4, "SummaryPreferenceCHN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataSavingChnPreference: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "mTrafficDataSummary: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    .line 1114
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v4

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v6

    .line 1113
    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/settings/datausage/DataSavingChnPreference;->getSavedBytesForAllUid(JJ)J

    move-result-wide v4

    long-to-float v1, v4

    .line 1115
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalData()J

    move-result-wide v4

    long-to-float v2, v4

    .line 1113
    div-float/2addr v1, v2

    .line 1115
    const/high16 v2, 0x42c80000    # 100.0f

    .line 1113
    mul-float v0, v1, v2

    .line 1117
    .local v0, "savedPercentage":F
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    if-eqz v1, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    .line 1119
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f0a031b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f0a031c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    .line 1120
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f0a05c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    .line 1121
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f0d0131

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPaintColor(I)V

    .line 1122
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setRadius(F)V

    .line 1123
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPercent(F)V

    .line 1124
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1}, Lcom/samsung/android/datasaving/SavedDataCircleView;->invalidate()V

    .line 1126
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    if-eqz v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    .line 1128
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0a031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f0a031c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    .line 1129
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0a05c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    .line 1130
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0d0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPaintColor(I)V

    .line 1131
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setRadius(F)V

    .line 1132
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPercent(F)V

    .line 1133
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1}, Lcom/samsung/android/datasaving/SavedDataCircleView;->invalidate()V

    .line 1108
    .end local v0    # "savedPercentage":F
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 1111
    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto/16 :goto_1

    .line 1137
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    .line 1138
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    .line 791
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    .line 792
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setColorOnStatus(F)V

    .line 793
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setDonut(F)V

    .line 794
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setTrafficText(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    .line 797
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDataSavingLayout()V

    .line 788
    :cond_1
    return-void
.end method
