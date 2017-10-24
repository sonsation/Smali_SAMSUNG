.class public Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;
.super Landroid/preference/PreferenceActivity;
.source "NetworkConnectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$1;,
        Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;,
        Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;
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

.field private mDataSelectAllFlag:Z

.field public mDataTemplate:Landroid/net/NetworkTemplate;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEmailUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

.field private mIsDataLoadFinished:Z

.field private mListView:Landroid/widget/ListView;

.field private mMobileCheckBox:Landroid/widget/CheckBox;

.field private mMobileText:Landroid/widget/TextView;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private mSubscriberId:Ljava/lang/String;

.field private mUidAllowedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

.field private mWIFICheckBox:Landroid/widget/CheckBox;

.field private mWIFISelectAllFlag:Z

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

.field private mWlanText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWlanText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;)Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    return p1
.end method

.method static synthetic -wrap0(J)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # J

    .prologue
    invoke-static {p0, p1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->formatFileSizeMB(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getStartTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 102
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

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    .line 350
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mRowComparator:Ljava/util/Comparator;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    .line 93
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    .line 94
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    .line 358
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$2;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 403
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$3;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWifiCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 77
    return-void
.end method

.method private dataReset()V
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 202
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 203
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 204
    sget-object v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    return-void
.end method

.method private static formatFileSizeMB(J)Ljava/lang/String;
    .locals 10
    .param p0, "number"    # J

    .prologue
    const/4 v9, 0x0

    .line 498
    const/4 v1, 0x0

    .line 499
    .local v1, "index":I
    long-to-int v3, p0

    .line 500
    .local v3, "iresult":I
    long-to-float v0, p0

    .line 501
    .local v0, "fresult":F
    const-string/jumbo v4, ""

    .local v4, "value":Ljava/lang/String;
    move v2, v1

    .line 502
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-lez v3, :cond_1

    sget-object v5, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 503
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

    sget-object v6, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->DATA_SIZE_SUFFIX:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v0, v5

    .line 505
    float-to-int v3, v0

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 503
    :cond_0
    float-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    .line 507
    :cond_1
    return-object v4
.end method

.method private getActiveSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 511
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 512
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, "actualSubscriberId":Ljava/lang/String;
    return-object v0
.end method

.method private getStartTime()J
    .locals 20

    .prologue
    .line 517
    const-wide/16 v18, 0x0

    .line 518
    .local v18, "startTime":J
    const-string/jumbo v16, "set_package_start_date_value"

    .line 519
    .local v16, "startDayString":Ljava/lang/String;
    const/4 v5, 0x1

    .line 521
    .local v5, "startDay":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 526
    :goto_0
    const/4 v3, 0x1

    if-lt v5, v3, :cond_0

    const/16 v3, 0x1f

    if-le v5, v3, :cond_1

    .line 527
    :cond_0
    const/4 v5, 0x1

    .line 529
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 530
    .local v13, "currentCalendar":Ljava/util/Calendar;
    const/4 v3, 0x5

    invoke-virtual {v13, v3}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 531
    .local v14, "currentDay":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 532
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

    .line 533
    if-lt v14, v5, :cond_2

    .line 534
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 541
    :goto_1
    return-wide v18

    .line 522
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v13    # "currentCalendar":Ljava/util/Calendar;
    .end local v14    # "currentDay":I
    :catch_0
    move-exception v15

    .line 523
    .local v15, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "NetworkConnect"

    const-string/jumbo v4, "startDay SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v5, 0x1

    goto :goto_0

    .line 536
    .end local v15    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v13    # "currentCalendar":Ljava/util/Calendar;
    .restart local v14    # "currentDay":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 537
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

    .line 538
    const/4 v12, 0x0

    move v9, v5

    .line 537
    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    .line 539
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    goto :goto_1
.end method

.method private getWarningWhiteList()V
    .locals 3

    .prologue
    .line 345
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 346
    .local v0, "utils":Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "data_warning_app_whitelist_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    .line 347
    const-string/jumbo v1, "data_normal_app_whitelist"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    .line 344
    return-void
.end method

.method private init()V
    .locals 17

    .prologue
    .line 291
    const-string/jumbo v14, "NetworkConnect"

    const-string/jumbo v15, "init"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    sget-boolean v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    if-eqz v14, :cond_7

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 294
    .local v13, "pm":Landroid/content/pm/PackageManager;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->dataReset()V

    .line 295
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getWarningWhiteList()V

    .line 296
    const/16 v14, 0x80

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v10

    .line 298
    .local v10, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    .line 299
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_7

    .line 300
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 301
    .local v9, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 303
    .local v12, "intent":Landroid/content/Intent;
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.samsung.android.email"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    iget v15, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_0
    const-string/jumbo v14, "android.permission.INTERNET"

    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_1

    .line 307
    if-eqz v12, :cond_1

    iget v14, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v15, 0x2710

    if-lt v14, v15, :cond_1

    iget v14, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v15, 0x4e1f

    if-gt v14, v15, :cond_1

    .line 308
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 309
    .local v2, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->isInWhiteList(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 299
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 312
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_2
    iget v4, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 313
    .local v4, "uid":I
    invoke-virtual {v9, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "appLabel":Ljava/lang/String;
    sget-object v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 315
    .local v6, "isDataAllowed":Z
    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v14, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 316
    sget-object v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_3
    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v14, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleMobileData(I)Z

    move-result v6

    .line 319
    .end local v6    # "isDataAllowed":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v14, v4}, Landroid/net/NetworkPolicyManager;->getFirewallRuleWifi(I)Z

    move-result v7

    .line 321
    .local v7, "isWlanAllowed":Z
    if-eqz v6, :cond_6

    sget-object v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 323
    :goto_3
    const/4 v5, 0x0

    .line 324
    .local v5, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v15, "com.samsung.android.email"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 325
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mEmailUids:Ljava/util/ArrayList;

    .line 327
    .end local v5    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    new-instance v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;ZZZ)V

    .line 329
    .local v1, "applicationNetInfo":Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;
    sget-object v14, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 318
    .end local v1    # "applicationNetInfo":Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;
    .end local v7    # "isWlanAllowed":Z
    .restart local v6    # "isDataAllowed":Z
    :cond_5
    const/4 v6, 0x1

    .local v6, "isDataAllowed":Z
    goto :goto_2

    .line 321
    .end local v6    # "isDataAllowed":Z
    .restart local v7    # "isWlanAllowed":Z
    :cond_6
    const/4 v8, 0x0

    .local v8, "isWarningAllowed":Z
    goto :goto_3

    .line 290
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "appLabel":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v7    # "isWlanAllowed":Z
    .end local v8    # "isWarningAllowed":Z
    .end local v9    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v11    # "i":I
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    return-void
.end method

.method private isInWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 337
    sget-object v1, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const/4 v1, 0x1

    return v1

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 546
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "checkBox"    # Landroid/view/View;

    .prologue
    .line 209
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    .line 210
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_0

    .line 211
    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 213
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    const v4, 0x7f0b03cb

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 215
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 216
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 208
    :goto_0
    :pswitch_0
    return-void

    .line 219
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 220
    .local v1, "mobile_checked":Z
    if-eqz v1, :cond_2

    .line 221
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 223
    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    .line 225
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setApplicationNetInfoList(Ljava/util/List;)V

    .line 228
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 229
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$4;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 266
    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    :cond_2
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 242
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 243
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 244
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    .line 245
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    .line 246
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 248
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setApplicationNetInfoList(Ljava/util/List;)V

    .line 249
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 250
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$5;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 269
    .end local v0    # "i":I
    .end local v1    # "mobile_checked":Z
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 270
    .local v2, "wifi_checked":Z
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 271
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWlanAllowed(Z)V

    .line 272
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUidAllowedMap:Ljava/util/Map;

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 274
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    sget-object v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setApplicationNetInfoList(Ljava/util/List;)V

    .line 275
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mFirewallAdapter:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 276
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity$6;-><init>(Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 283
    iput-boolean v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    goto/16 :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x7f1104c6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f040195

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->setContentView(I)V

    .line 109
    iput-object p0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 112
    const v0, 0x7f1104c7

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWlanText:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f11028c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileText:Landroid/widget/TextView;

    .line 114
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 117
    const v0, 0x7f1104c6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    .line 118
    const v0, 0x7f1104c8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 196
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 192
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 178
    return-void
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v9, -0x1

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 126
    const-string/jumbo v7, "NetworkConnect"

    const-string/jumbo v8, "onResume"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    .line 128
    iget v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    if-eq v7, v9, :cond_0

    .line 129
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mUtils:Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;

    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerUtils;->getSubscriptionId(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    .line 131
    :cond_0
    iget v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    if-ne v7, v9, :cond_1

    .line 132
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubId:I

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getActiveSubscriberId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    .line 135
    :cond_1
    iput-boolean v13, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mIsDataLoadFinished:Z

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->init()V

    .line 137
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWifiTemplate:Landroid/net/NetworkTemplate;

    .line 138
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    .line 139
    const-string/jumbo v7, "netstats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsService:Landroid/net/INetworkStatsService;

    .line 141
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v7}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 148
    .local v4, "now":J
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getStartTime()J

    move-result-wide v10

    invoke-static {v8, v10, v11, v4, v5}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataCallback:Landroid/app/LoaderManager$LoaderCallbacks;

    const/16 v10, 0xb

    invoke-virtual {v7, v10, v8, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 149
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWlanText:Landroid/widget/TextView;

    const v8, 0x7f0b0cca

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileText:Landroid/widget/TextView;

    const v8, 0x7f0b0cc9

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "data_count":I
    const/4 v6, 0x0

    .line 153
    .local v6, "wlan_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 154
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 155
    add-int/lit8 v0, v0, 0x1

    .line 157
    :cond_2
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 158
    add-int/lit8 v6, v6, 0x1

    .line 153
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    .end local v0    # "data_count":I
    .end local v3    # "i":I
    .end local v4    # "now":J
    .end local v6    # "wlan_count":I
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e1":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v2    # "e1":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 143
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 161
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "data_count":I
    .restart local v3    # "i":I
    .restart local v4    # "now":J
    .restart local v6    # "wlan_count":I
    :cond_4
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v0, v7, :cond_5

    .line 162
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    iput-boolean v12, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    .line 168
    :goto_2
    sget-object v7, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 169
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v12}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    iput-boolean v12, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    .line 124
    :goto_3
    return-void

    .line 165
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mMobileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    iput-boolean v13, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mDataSelectAllFlag:Z

    goto :goto_2

    .line 172
    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFICheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 173
    iput-boolean v12, p0, Lcom/samsung/android/settings/datausage/networkconnect/NetworkConnectActivity;->mWIFISelectAllFlag:Z

    goto :goto_3
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 183
    return-void
.end method
