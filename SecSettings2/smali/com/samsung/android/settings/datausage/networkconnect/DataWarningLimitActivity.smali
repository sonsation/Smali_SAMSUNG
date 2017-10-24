.class public Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;
.super Landroid/preference/PreferenceActivity;
.source "DataWarningLimitActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;,
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;,
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$3;,
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$4;,
        Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;
    }
.end annotation


# static fields
.field private static final DATA_SIZE_SUFFIX:[Ljava/lang/String;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public mDataTemplate:Landroid/net/NetworkTemplate;

.field private mDataWarningAdapter:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

.field private mEnableWarningStatus:I

.field private mIsDataLoadFinished:Z

.field private mListView:Landroid/widget/ListView;

.field private mMobileText:Landroid/widget/TextView;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private mSubscriberId:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Landroid/widget/LinearLayout;

.field public mSwitchBarClickListener:Landroid/view/View$OnClickListener;

.field public mSwitchChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchtext:Landroid/widget/TextView;

.field private mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

.field private mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public mWifiTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;)Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->isWarningFunctionActive()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(J)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # J

    .prologue
    invoke-static {p0, p1}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->formatFileSizeMB(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "B"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "KB"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "MB"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "GB"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    .line 302
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mRowComparator:Ljava/util/Comparator;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 84
    const-string/jumbo v0, "DataWarningLimitActivity"

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->TAG:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    .line 100
    iput v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    .line 101
    iput v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    .line 197
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 235
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchBarClickListener:Landroid/view/View$OnClickListener;

    .line 310
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$4;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 355
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$5;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 83
    return-void
.end method

.method private dataReset()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 192
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 193
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 194
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 189
    return-void
.end method

.method private static formatFileSizeMB(J)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # J

    .prologue
    const/4 v9, 0x0

    .line 411
    const/4 v1, 0x0

    .line 412
    .local v1, "index":I
    long-to-int v3, p0

    .line 413
    .local v3, "iresult":I
    long-to-float v0, p0

    .line 414
    .local v0, "fresult":F
    const-string/jumbo v4, ""

    .local v4, "value":Ljava/lang/String;
    move v2, v1

    .line 415
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-lez v3, :cond_1

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x2

    if-le v2, v5, :cond_0

    const-string/jumbo v5, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v0, v5

    .line 418
    float-to-int v3, v0

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 416
    :cond_0
    float-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 420
    :cond_1
    return-object v4
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 425
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "actualSubscriberId":Ljava/lang/String;
    return-object v0
.end method

.method private getStartTime()J
    .locals 20

    .prologue
    .line 430
    const-wide/16 v18, 0x0

    .line 431
    .local v18, "startTime":J
    const-string/jumbo v16, "set_package_start_date_value"

    .line 432
    .local v16, "startDayString":Ljava/lang/String;
    const/4 v5, 0x1

    .line 434
    .local v5, "startDay":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 439
    :goto_0
    const/4 v3, 0x1

    if-lt v5, v3, :cond_0

    const/16 v3, 0x1f

    if-le v5, v3, :cond_1

    .line 440
    :cond_0
    const/4 v5, 0x1

    .line 442
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 443
    .local v13, "currentCalendar":Ljava/util/Calendar;
    const/4 v3, 0x5

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 444
    .local v14, "currentDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 445
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 446
    if-lt v14, v5, :cond_2

    .line 447
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 454
    :goto_1
    return-wide v18

    .line 435
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v13    # "currentCalendar":Ljava/util/Calendar;
    .end local v14    # "currentDay":I
    :catch_0
    move-exception v15

    .line 436
    .local v15, "e":Landroid/provider/Settings$SettingNotFoundException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startDay SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v5, 0x1

    goto :goto_0

    .line 449
    .end local v15    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v13    # "currentCalendar":Ljava/util/Calendar;
    .restart local v14    # "currentDay":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 450
    .local v6, "newCalendar":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 451
    const/4 v12, 0x0

    move v9, v5

    .line 450
    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    .line 452
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    goto :goto_1
.end method

.method private getWarningWhiteList()V
    .locals 3

    .prologue
    .line 297
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, "utils":Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "data_warning_app_whitelist_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    .line 299
    const-string/jumbo v1, "data_normal_app_whitelist"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    .line 296
    return-void
.end method

.method private init()V
    .locals 18

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "init"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-boolean v15, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v15, :cond_7

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 246
    .local v14, "pm":Landroid/content/pm/PackageManager;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->dataReset()V

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getWarningWhiteList()V

    .line 248
    const/16 v15, 0x80

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 250
    .local v10, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v11, "emailUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_7

    .line 252
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 253
    .local v9, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 255
    .local v13, "intent":Landroid/content/Intent;
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v16, "com.samsung.android.email"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 256
    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    const-string/jumbo v15, "android.permission.INTERNET"

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_1

    .line 259
    if-eqz v13, :cond_1

    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v16, 0x2710

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v16, 0x4e1f

    move/from16 v0, v16

    if-gt v15, v0, :cond_1

    .line 260
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 261
    .local v2, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->isInWhiteList(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 251
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 264
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 265
    .local v4, "uid":I
    invoke-virtual {v9, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "appLabel":Ljava/lang/String;
    sget-object v15, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 267
    .local v6, "isDataAllowed":Z
    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v15, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 268
    sget-object v15, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_3
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v15, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v6

    .line 271
    .end local v6    # "isDataAllowed":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v15, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v7

    .line 273
    .local v7, "isWlanAllowed":Z
    if-eqz v6, :cond_6

    sget-object v15, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 275
    :goto_3
    const/4 v5, 0x0

    .line 276
    .local v5, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v16, "com.samsung.android.email"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 277
    move-object v5, v11

    .line 279
    .end local v5    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    new-instance v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZZZ)V

    .line 281
    .local v1, "applicationNetInfo":Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;
    sget-object v15, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 270
    .end local v1    # "applicationNetInfo":Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;
    .end local v7    # "isWlanAllowed":Z
    .restart local v6    # "isDataAllowed":Z
    :cond_5
    const/4 v6, 0x1

    .local v6, "isDataAllowed":Z
    goto :goto_2

    .line 273
    .end local v6    # "isDataAllowed":Z
    .restart local v7    # "isWlanAllowed":Z
    :cond_6
    const/4 v8, 0x0

    .local v8, "isWarningAllowed":Z
    goto :goto_3

    .line 242
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "appLabel":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v7    # "isWlanAllowed":Z
    .end local v8    # "isWarningAllowed":Z
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "emailUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    return-void
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 289
    sget-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const/4 v1, 0x1

    return v1

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isWarningFunctionActive()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 463
    const-string/jumbo v0, "max"

    .line 464
    .local v0, "allData":Ljava/lang/String;
    const-string/jumbo v3, "off"

    .line 465
    .local v3, "warningValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 466
    .local v1, "isTrafficSettingEnable":Z
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_data_limit"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data_warning_set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "switch_traffic_settings"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 469
    .local v2, "trafficSetting":I
    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 470
    :goto_0
    if-nez v0, :cond_0

    .line 471
    const-string/jumbo v0, "max"

    .line 473
    :cond_0
    if-nez v3, :cond_1

    .line 474
    const-string/jumbo v3, "off"

    .line 476
    :cond_1
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    const-string/jumbo v4, "max"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 477
    :cond_2
    return v7

    .line 469
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 479
    :cond_4
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const v0, 0x7f0400b9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->setContentView(I)V

    .line 111
    iput-object p0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 114
    const v0, 0x7f110288

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchBar:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f11028a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f110289

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f11028c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    .line 120
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 186
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 182
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsBixBySwitchOnOff:Z

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 12

    .prologue
    const v11, 0x7f0b0cc9

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 128
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    .line 129
    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    if-eq v8, v10, :cond_0

    .line 130
    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getSubscriptionId(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    .line 132
    :cond_0
    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    if-ne v8, v10, :cond_1

    .line 133
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getActiveSubscriberId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    .line 136
    :cond_1
    iput-boolean v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mIsDataLoadFinished:Z

    .line 137
    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "data_warning_whitelist_enable_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    .line 138
    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    if-ne v8, v6, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->isWarningFunctionActive()Z

    move-result v0

    .line 139
    .local v0, "checked":Z
    :goto_0
    if-eqz v0, :cond_4

    :goto_1
    iput v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    .line 140
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data_warning_whitelist_enable_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mEnableWarningStatus:I

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->init()V

    .line 142
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mWifiTemplate:Landroid/net/NetworkTemplate;

    .line 143
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    .line 144
    const-string/jumbo v6, "netstats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsService:Landroid/net/INetworkStatsService;

    .line 146
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v6}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 153
    .local v4, "now":J
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getStartTime()J

    move-result-wide v8

    invoke-static {v7, v8, v9, v4, v5}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    const/16 v9, 0xb

    invoke-virtual {v6, v9, v7, v8}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 154
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 156
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const v6, 0x7f0b1952

    :goto_3
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    .line 157
    new-instance v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 158
    .local v3, "utils":Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSubId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->putUsedSubId(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->sortInWarningStatus()V

    .line 160
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mMobileText:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    sget-boolean v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsBixBySwitchOnOff:Z

    if-eqz v6, :cond_2

    .line 162
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->performClick()Z

    .line 126
    :cond_2
    return-void

    .end local v0    # "checked":Z
    .end local v3    # "utils":Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
    .end local v4    # "now":J
    :cond_3
    move v0, v7

    .line 138
    goto/16 :goto_0

    .restart local v0    # "checked":Z
    :cond_4
    move v6, v7

    .line 139
    goto/16 :goto_1

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 147
    .end local v2    # "e1":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 148
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 156
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "now":J
    :cond_5
    const v6, 0x7f0b1953

    goto :goto_3
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 173
    return-void
.end method
