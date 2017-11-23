.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageList$1;,
        Lcom/android/settings/datausage/DataUsageList$2;,
        Lcom/android/settings/datausage/DataUsageList$3;,
        Lcom/android/settings/datausage/DataUsageList$4;,
        Lcom/android/settings/datausage/DataUsageList$5;,
        Lcom/android/settings/datausage/DataUsageList$6;,
        Lcom/android/settings/datausage/DataUsageList$7;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

.field private mAlertTotalSentListener:Landroid/view/View$OnClickListener;

.field private mApps:Landroid/preference/PreferenceGroup;

.field private mBinding:Z

.field private mBound:Z

.field private mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

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

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/View;

.field private mLifetime:Lcom/android/settings/datausage/MTRPreference;

.field private final mMobileDataEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalReceive:Lcom/android/settings/datausage/MTRPreference;

.field private mTotalSent:Lcom/android/settings/datausage/MTRPreference;

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUsageAmount:Landroid/preference/Preference;

.field private mlifetimeMessenger:Landroid/os/Messenger;

.field private rilHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageList;)Landroid/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settingslib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/DataUsageList;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/DataUsageList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/datausage/DataUsageList;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/DataUsageList;II)V
    .locals 0
    .param p1, "mainOemid"    # I
    .param p2, "subOemid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->getTimeData(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/DataUsageList;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->resetTimeData(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/DataUsageList;[B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->setSummaryfortimedata([B)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/settingslib/AppItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->startAppDataUsage(Lcom/android/settingslib/AppItem;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/datausage/DataUsageList;Z)V
    .locals 0
    .param p1, "refreshCycle"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings/datausage/DataUsageList;->CPU_COUNT:I

    .line 158
    sget v0, Lcom/android/settings/datausage/DataUsageList;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/DataUsageList;->CORE_POOL_SIZE:I

    .line 159
    sget v0, Lcom/android/settings/datausage/DataUsageList;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/datausage/DataUsageList;->MAXIMUM_POOL_SIZE:I

    .line 161
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageList;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 162
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/settings/datausage/DataUsageList;->CORE_POOL_SIZE:I

    .line 163
    sget v3, Lcom/android/settings/datausage/DataUsageList;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/android/settings/datausage/DataUsageList;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 162
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/settings/datausage/DataUsageList;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mMobileDataEnabled:Ljava/util/Map;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    .line 617
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 641
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 665
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 749
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    .line 780
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->rilHandler:Landroid/os/Handler;

    .line 812
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    .line 836
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    .line 853
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$7;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$7;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    .line 104
    return-void
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J
    .locals 9
    .param p0, "collapseKey"    # I
    .param p2, "entry"    # Landroid/net/NetworkStats$Entry;
    .param p3, "itemCategory"    # I
    .param p5, "largest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 551
    .local v1, "uid":I
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    .line 552
    .local v0, "item":Lcom/android/settingslib/AppItem;
    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcom/android/settingslib/AppItem;

    .end local v0    # "item":Lcom/android/settingslib/AppItem;
    invoke-direct {v0, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 554
    .restart local v0    # "item":Lcom/android/settingslib/AppItem;
    iput p3, v0, Lcom/android/settingslib/AppItem;->category:I

    .line 555
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    iget v2, v0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 558
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 559
    iget-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    .line 560
    iget-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private connectToRilService_lifetime()V
    .locals 4

    .prologue
    .line 701
    const-string/jumbo v1, "DataUsage"

    const-string/jumbo v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 703
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 700
    return-void
.end method

.method private getTimeData(II)V
    .locals 6
    .param p1, "mainOemid"    # I
    .param p2, "subOemid"    # I

    .prologue
    .line 708
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 709
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 711
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 712
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 713
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 714
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 716
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 717
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    const-string/jumbo v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " getOemData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 707
    return-void

    .line 718
    :catch_0
    move-exception v2

    .line 719
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 571
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 572
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 575
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 577
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 579
    return v8

    .line 582
    :cond_0
    const/4 v1, 0x1

    .line 583
    .local v1, "isReady":Z
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "isReady":Z
    .local v4, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 584
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_1
    and-int/2addr v1, v7

    .local v1, "isReady":Z
    goto :goto_0

    .end local v1    # "isReady":Z
    :cond_1
    move v7, v8

    goto :goto_1

    .line 587
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v1

    .line 594
    .local v2, "retVal":Z
    :goto_2
    return v2

    .end local v2    # "retVal":Z
    :cond_3
    move v2, v8

    .line 587
    goto :goto_2
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 765
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 766
    .local v1, "req":Landroid/os/Bundle;
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 768
    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 769
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 772
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 773
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 764
    :goto_0
    return-void

    .line 775
    :cond_0
    const-string/jumbo v2, "DataUsage"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private resetTimeData(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/16 v6, 0xb

    .line 727
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 728
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 730
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 731
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 732
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 733
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 734
    if-nez p1, :cond_0

    .line 735
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 740
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 741
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    const-string/jumbo v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " resetTimeData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 726
    return-void

    .line 737
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 742
    :catch_0
    move-exception v2

    .line 743
    .local v2, "e":Ljava/io/IOException;
    return-void
.end method

.method private setSummaryfortimedata([B)V
    .locals 14
    .param p1, "data"    # [B

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    .line 824
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v0

    .line 825
    .local v0, "rx":J
    invoke-virtual {p0, p1, v9, v10}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v6

    .line 826
    .local v6, "tx":J
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v2

    .line 827
    .local v2, "total_rx":J
    const/16 v8, 0x18

    invoke-virtual {p0, p1, v11, v8}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v4

    .line 828
    .local v4, "total_tx":J
    const-string/jumbo v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSummaryfortimedata :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/android/settings/datausage/MTRPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/MTRPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/android/settings/datausage/MTRPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/MTRPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 831
    cmp-long v8, v2, v12

    if-lez v8, :cond_0

    cmp-long v8, v4, v12

    if-lez v8, :cond_0

    .line 832
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/android/settings/datausage/MTRPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    add-long v10, v2, v4

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/MTRPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 823
    :cond_0
    return-void
.end method

.method private startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/settingslib/AppItem;

    .prologue
    .line 534
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 535
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "app_item"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 536
    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 537
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b1b06

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 533
    return-void
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 299
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/datausage/DataUsageList;->mBinding:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 307
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    .line 308
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v5, v6}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 307
    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 313
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/datausage/DataUsageList;->mBinding:Z

    .line 315
    const v4, 0x7f0d0089

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 316
    .local v2, "seriesColor":I
    iget v4, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 317
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 318
    iget v5, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 317
    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 320
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_1

    .line 321
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v2

    .line 325
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 326
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 325
    const/16 v7, 0x7f

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 327
    .local v1, "secondaryColor":I
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v4, v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    .line 298
    return-void
.end method

.method private updateDetailData()V
    .locals 20

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v4

    .line 386
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v6

    .line 387
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 389
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 391
    .local v2, "context":Landroid/content/Context;
    const/4 v11, 0x0

    .line 392
    .local v11, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v3, :cond_0

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 397
    .end local v11    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 398
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v10, v4, v5, v6, v7}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 397
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v3, v0, v10, v15}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 400
    if-eqz v11, :cond_1

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v18, v0

    add-long v12, v16, v18

    .line 401
    .local v12, "totalBytes":J
    :goto_0
    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 402
    .local v14, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/preference/Preference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v10, v15

    const v15, 0x7f0b1c09

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 382
    return-void

    .line 400
    .end local v12    # "totalBytes":J
    .end local v14    # "totalPhrase":Ljava/lang/String;
    :cond_1
    const-wide/16 v12, 0x0

    goto :goto_0
.end method

.method private updatePolicy(Z)V
    .locals 7
    .param p1, "refreshCycle"    # Z

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x7f11016b

    .line 335
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 337
    .local v0, "policy":Landroid/net/NetworkPolicy;
    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/datausage/DataUsageList;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->isMobileDataAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 338
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 340
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_3

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 346
    new-instance v2, Lcom/android/settings/datausage/DataUsageList$10;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageList$10;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    .line 345
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    :goto_1
    if-eqz p1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 367
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    .line 334
    :cond_2
    return-void

    .line 343
    :cond_3
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 358
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 369
    :cond_5
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 31
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 409
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    const-wide/16 v8, 0x0

    .line 412
    .local v8, "largest":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 413
    .local v2, "currentUserId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v30

    .line 414
    .local v30, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v26

    .line 415
    .local v26, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 417
    .local v4, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    const/4 v5, 0x0

    .line 418
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v28

    .line 419
    .local v28, "size":I
    :goto_0
    const/4 v10, 0x0

    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .local v10, "i":I
    :goto_1
    move/from16 v0, v28

    if-ge v10, v0, :cond_b

    .line 420
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 423
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    iget v15, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 427
    .local v15, "uid":I
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    .line 428
    .local v29, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v12, 0x64

    if-ge v6, v12, :cond_9

    .line 429
    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 430
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v29

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 431
    move/from16 v0, v29

    if-eq v0, v2, :cond_0

    .line 433
    invoke-static/range {v29 .. v29}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    .line 434
    .local v3, "managedKey":I
    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    .line 438
    .end local v3    # "managedKey":I
    :cond_0
    const/16 v6, 0x64

    move/from16 v0, v29

    if-lt v0, v6, :cond_3

    .line 419
    .end local v15    # "uid":I
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 418
    .end local v10    # "i":I
    .end local v28    # "size":I
    .end local v29    # "userId":I
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    :cond_2
    const/16 v28, 0x0

    .restart local v28    # "size":I
    goto :goto_0

    .line 442
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    .restart local v10    # "i":I
    .restart local v15    # "uid":I
    .restart local v29    # "userId":I
    :cond_3
    move v11, v15

    .line 443
    .local v11, "collapseKey":I
    const/4 v14, 0x2

    .local v14, "category":I
    :goto_3
    move-object v12, v4

    move-object v13, v5

    move-object v15, v7

    move-wide/from16 v16, v8

    .line 463
    invoke-static/range {v11 .. v17}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    .end local v15    # "uid":I
    move-result-wide v8

    goto :goto_2

    .line 446
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .restart local v15    # "uid":I
    :cond_4
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    .line 447
    .local v24, "info":Landroid/content/pm/UserInfo;
    if-nez v24, :cond_5

    .line 448
    const/4 v11, -0x4

    .line 449
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 452
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_5
    invoke-static/range {v29 .. v29}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v11

    .line 453
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x0

    .restart local v14    # "category":I
    goto :goto_3

    .line 456
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .end local v24    # "info":Landroid/content/pm/UserInfo;
    :cond_6
    const/4 v6, -0x4

    if-eq v15, v6, :cond_7

    const/4 v6, -0x5

    if-ne v15, v6, :cond_8

    .line 457
    :cond_7
    move v11, v15

    .line 458
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .line 456
    .restart local v14    # "category":I
    goto :goto_3

    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_8
    const/16 v6, -0x64

    if-eq v15, v6, :cond_7

    const/16 v6, 0x1391

    if-eq v15, v6, :cond_7

    .line 460
    const/16 v11, 0x3e8

    .line 461
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 466
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_9
    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 467
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move/from16 v0, v29

    if-ne v0, v6, :cond_a

    .line 469
    const/4 v6, -0x4

    if-eq v15, v6, :cond_1

    const/4 v6, -0x5

    if-eq v15, v6, :cond_1

    const/16 v6, 0x3e8

    if-eq v15, v6, :cond_1

    .line 472
    move v11, v15

    .line 473
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v14

    move-object/from16 v19, v7

    move-wide/from16 v20, v8

    .line 474
    invoke-static/range {v15 .. v21}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    goto :goto_2

    .line 477
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_a
    const/4 v6, -0x4

    if-eq v15, v6, :cond_1

    const/4 v6, -0x5

    if-eq v15, v6, :cond_1

    const/16 v6, 0x3e8

    if-eq v15, v6, :cond_1

    .line 480
    invoke-static/range {v29 .. v29}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v17

    const/16 v20, 0x0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    move-wide/from16 v22, v8

    invoke-static/range {v17 .. v23}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    goto :goto_2

    .line 488
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "uid":I
    .end local v29    # "userId":I
    :cond_b
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0

    .line 489
    .local v27, "restrictedUidsMax":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-nez v6, :cond_e

    .line 490
    const/4 v10, 0x0

    :goto_4
    move/from16 v0, v27

    if-ge v10, v0, :cond_e

    .line 491
    aget v15, p2, v10

    .line 493
    .restart local v15    # "uid":I
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 490
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 497
    :cond_c
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settingslib/AppItem;

    .line 498
    .local v25, "item":Lcom/android/settingslib/AppItem;
    if-nez v25, :cond_d

    .line 499
    new-instance v25, Lcom/android/settingslib/AppItem;

    .end local v25    # "item":Lcom/android/settingslib/AppItem;
    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 500
    .restart local v25    # "item":Lcom/android/settingslib/AppItem;
    const-wide/16 v12, -0x1

    move-object/from16 v0, v25

    iput-wide v12, v0, Lcom/android/settingslib/AppItem;->total:J

    .line 501
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/settingslib/AppItem;->key:I

    move-object/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    :cond_d
    const/4 v6, 0x1

    move-object/from16 v0, v25

    iput-boolean v6, v0, Lcom/android/settingslib/AppItem;->restricted:Z

    goto :goto_5

    .line 508
    .end local v15    # "uid":I
    .end local v25    # "item":Lcom/android/settingslib/AppItem;
    :cond_e
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 510
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v10, v6, :cond_10

    .line 511
    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-eqz v6, :cond_f

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/AppItem;

    iget-wide v12, v6, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v20, 0x64

    mul-long v12, v12, v20

    div-long/2addr v12, v8

    long-to-int v0, v12

    move/from16 v19, v0

    .line 513
    .local v19, "percentTotal":I
    :goto_7
    new-instance v16, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 514
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/AppItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/settings/datausage/DataUsageList;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 513
    invoke-direct/range {v16 .. v21}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 515
    .local v16, "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    new-instance v6, Lcom/android/settings/datausage/DataUsageList$11;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/datausage/DataUsageList$11;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 510
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 511
    .end local v16    # "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    .end local v19    # "percentTotal":I
    :cond_f
    const/16 v19, 0x0

    .restart local v19    # "percentTotal":I
    goto :goto_7

    .line 527
    .end local v19    # "percentTotal":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-eqz v6, :cond_11

    .line 528
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 408
    :cond_11
    return-void
.end method

.method byteToLong([BII)J
    .locals 8
    .param p1, "data"    # [B
    .param p2, "idx_from"    # I
    .param p3, "idx_to"    # I

    .prologue
    .line 815
    const-wide/16 v2, 0x0

    .line 816
    .local v2, "value":J
    array-length v1, p1

    if-ge v1, p3, :cond_0

    .line 817
    return-wide v2

    .line 818
    :cond_0
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 819
    const/16 v1, 0x8

    shl-long v4, v2, v1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 818
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 821
    :cond_1
    return-wide v2
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x155

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 176
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    const-string/jumbo v3, "DataUsage"

    const-string/jumbo v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 182
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    new-instance v3, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 189
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->addPreferencesFromResource(I)V

    .line 190
    const-string/jumbo v3, "usage_amount"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/preference/Preference;

    .line 191
    const-string/jumbo v3, "chart_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    .line 192
    const-string/jumbo v3, "apps_group"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/preference/PreferenceGroup;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "sub_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 196
    const-string/jumbo v3, "network_template"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 199
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    .line 201
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->connectToRilService_lifetime()V

    .line 202
    const-string/jumbo v3, "total_received_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/MTRPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/android/settings/datausage/MTRPreference;

    .line 203
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/android/settings/datausage/MTRPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/MTRPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const-string/jumbo v3, "total_sent_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/MTRPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/android/settings/datausage/MTRPreference;

    .line 205
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/android/settings/datausage/MTRPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/MTRPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const-string/jumbo v3, "lifetime_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/MTRPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/android/settings/datausage/MTRPreference;

    .line 172
    :goto_0
    return-void

    .line 183
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 184
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 208
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v3, "total_received_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v3, "total_sent_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v3, "lifetime_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    .line 278
    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 280
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 283
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    .line 286
    const-string/jumbo v0, "DataUsage"

    const-string/jumbo v1, "onDestroy: unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 276
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    .line 253
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$9;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$9;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    .line 272
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 253
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageList$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 247
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 218
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 220
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f11016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 222
    new-instance v0, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$8;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageList$8;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    .line 242
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 222
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/datausage/DataUsageList;->setLoading(ZZ)V

    .line 217
    return-void
.end method
