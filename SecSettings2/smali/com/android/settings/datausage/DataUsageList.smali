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
    .line 158
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings/datausage/DataUsageList;->CPU_COUNT:I

    .line 159
    sget v0, Lcom/android/settings/datausage/DataUsageList;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/DataUsageList;->CORE_POOL_SIZE:I

    .line 160
    sget v0, Lcom/android/settings/datausage/DataUsageList;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/datausage/DataUsageList;->MAXIMUM_POOL_SIZE:I

    .line 162
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageList;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 163
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/settings/datausage/DataUsageList;->CORE_POOL_SIZE:I

    .line 164
    sget v3, Lcom/android/settings/datausage/DataUsageList;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/android/settings/datausage/DataUsageList;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 163
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/settings/datausage/DataUsageList;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mMobileDataEnabled:Ljava/util/Map;

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    .line 621
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 645
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 669
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 753
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    .line 784
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->rilHandler:Landroid/os/Handler;

    .line 816
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    .line 840
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    .line 857
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$7;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$7;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    .line 105
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
    .line 554
    .local p1, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 555
    .local v1, "uid":I
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    .line 556
    .local v0, "item":Lcom/android/settingslib/AppItem;
    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/android/settingslib/AppItem;

    .end local v0    # "item":Lcom/android/settingslib/AppItem;
    invoke-direct {v0, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 558
    .restart local v0    # "item":Lcom/android/settingslib/AppItem;
    iput p3, v0, Lcom/android/settingslib/AppItem;->category:I

    .line 559
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget v2, v0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 562
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 563
    iget-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    .line 564
    iget-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private connectToRilService_lifetime()V
    .locals 4

    .prologue
    .line 705
    const-string/jumbo v1, "DataUsage"

    const-string/jumbo v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 707
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 704
    return-void
.end method

.method private getTimeData(II)V
    .locals 6
    .param p1, "mainOemid"    # I
    .param p2, "subOemid"    # I

    .prologue
    .line 712
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 713
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 715
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 716
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 717
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 718
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 720
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 721
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
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

    .line 727
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 711
    return-void

    .line 722
    :catch_0
    move-exception v2

    .line 723
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

    .line 724
    return-void
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 575
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 576
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 579
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 581
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 583
    return v8

    .line 586
    :cond_0
    const/4 v1, 0x1

    .line 587
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

    .line 588
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

    .line 591
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v1

    .line 598
    .local v2, "retVal":Z
    :goto_2
    return v2

    .end local v2    # "retVal":Z
    :cond_3
    move v2, v8

    .line 591
    goto :goto_2
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 769
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 770
    .local v1, "req":Landroid/os/Bundle;
    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 772
    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 773
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 776
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 768
    :goto_0
    return-void

    .line 779
    :cond_0
    const-string/jumbo v2, "DataUsage"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
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

    .line 731
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 732
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 734
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 735
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 736
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 737
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 738
    if-nez p1, :cond_0

    .line 739
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 744
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 745
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
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

    .line 750
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 730
    return-void

    .line 741
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v2

    .line 747
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

    .line 828
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v0

    .line 829
    .local v0, "rx":J
    invoke-virtual {p0, p1, v9, v10}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v6

    .line 830
    .local v6, "tx":J
    invoke-virtual {p0, p1, v10, v11}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v2

    .line 831
    .local v2, "total_rx":J
    const/16 v8, 0x18

    invoke-virtual {p0, p1, v11, v8}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v4

    .line 832
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

    .line 833
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/android/settings/datausage/MTRPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/MTRPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 834
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/android/settings/datausage/MTRPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/MTRPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 835
    cmp-long v8, v2, v12

    if-lez v8, :cond_0

    cmp-long v8, v4, v12

    if-lez v8, :cond_0

    .line 836
    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/android/settings/datausage/MTRPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    add-long v10, v2, v4

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/datausage/MTRPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 827
    :cond_0
    return-void
.end method

.method private startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/settingslib/AppItem;

    .prologue
    .line 538
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 539
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "app_item"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 540
    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 541
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b1980

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 537
    return-void
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 300
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/datausage/DataUsageList;->mBinding:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 308
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    .line 309
    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v5, v6}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 308
    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 314
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/datausage/DataUsageList;->mBinding:Z

    .line 316
    const v4, 0x7f0d0089

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 317
    .local v2, "seriesColor":I
    iget v4, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 318
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 319
    iget v5, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 318
    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 321
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_1

    .line 322
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v2

    .line 326
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 327
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 326
    const/16 v7, 0x7f

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 328
    .local v1, "secondaryColor":I
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v4, v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    .line 299
    return-void
.end method

.method private updateDetailData()V
    .locals 20

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v4

    .line 390
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v6

    .line 391
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 393
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 395
    .local v2, "context":Landroid/content/Context;
    const/4 v11, 0x0

    .line 396
    .local v11, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v3, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    .line 401
    .end local v11    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    .line 402
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v10, v4, v5, v6, v7}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 401
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v3, v0, v10, v15}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 404
    if-eqz v11, :cond_1

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v18, v0

    add-long v12, v16, v18

    .line 405
    .local v12, "totalBytes":J
    :goto_0
    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 406
    .local v14, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/preference/Preference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v14, v10, v15

    const v15, 0x7f0b1a83

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 386
    return-void

    .line 404
    .end local v12    # "totalBytes":J
    .end local v14    # "totalPhrase":Ljava/lang/String;
    :cond_1
    const-wide/16 v12, 0x0

    goto :goto_0
.end method

.method private updatePolicy(Z)V
    .locals 8
    .param p1, "refreshCycle"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const v4, 0x7f11016b

    .line 336
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 338
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/datausage/DataUsageList;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/settings/datausage/DataUsageList;->isMobileDataAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 341
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_3

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 347
    new-instance v3, Lcom/android/settings/datausage/DataUsageList$10;

    invoke-direct {v3, p0}, Lcom/android/settings/datausage/DataUsageList$10;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    .line 346
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    :goto_1
    if-eqz p1, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 366
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 368
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 370
    .local v0, "emptyView":Landroid/widget/TextView;
    const v2, 0x7f0b0461

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 371
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->setEmptyView(Landroid/view/View;)V

    .line 376
    .end local v0    # "emptyView":Landroid/widget/TextView;
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    .line 335
    :cond_2
    return-void

    .line 344
    :cond_3
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 358
    :cond_4
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v7}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 359
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 373
    :cond_5
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 31
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 413
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/AppItem;>;"
    const-wide/16 v8, 0x0

    .line 416
    .local v8, "largest":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 417
    .local v2, "currentUserId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v30

    .line 418
    .local v30, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v30 .. v30}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v26

    .line 419
    .local v26, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 421
    .local v4, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settingslib/AppItem;>;"
    const/4 v5, 0x0

    .line 422
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v28

    .line 423
    .local v28, "size":I
    :goto_0
    const/4 v10, 0x0

    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .local v10, "i":I
    :goto_1
    move/from16 v0, v28

    if-ge v10, v0, :cond_b

    .line 424
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 427
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    iget v15, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 431
    .local v15, "uid":I
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v29

    .line 432
    .local v29, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v12, 0x64

    if-ge v6, v12, :cond_9

    .line 433
    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 434
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v29

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 435
    move/from16 v0, v29

    if-eq v0, v2, :cond_0

    .line 437
    invoke-static/range {v29 .. v29}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    .line 438
    .local v3, "managedKey":I
    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    .line 442
    .end local v3    # "managedKey":I
    :cond_0
    const/16 v6, 0x64

    move/from16 v0, v29

    if-lt v0, v6, :cond_3

    .line 423
    .end local v15    # "uid":I
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 422
    .end local v10    # "i":I
    .end local v28    # "size":I
    .end local v29    # "userId":I
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    :cond_2
    const/16 v28, 0x0

    .restart local v28    # "size":I
    goto :goto_0

    .line 446
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    .restart local v10    # "i":I
    .restart local v15    # "uid":I
    .restart local v29    # "userId":I
    :cond_3
    move v11, v15

    .line 447
    .local v11, "collapseKey":I
    const/4 v14, 0x2

    .local v14, "category":I
    :goto_3
    move-object v12, v4

    move-object v13, v5

    move-object v15, v7

    move-wide/from16 v16, v8

    .line 467
    invoke-static/range {v11 .. v17}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    .end local v15    # "uid":I
    move-result-wide v8

    goto :goto_2

    .line 450
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .restart local v15    # "uid":I
    :cond_4
    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v24

    .line 451
    .local v24, "info":Landroid/content/pm/UserInfo;
    if-nez v24, :cond_5

    .line 452
    const/4 v11, -0x4

    .line 453
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 456
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_5
    invoke-static/range {v29 .. v29}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v11

    .line 457
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x0

    .restart local v14    # "category":I
    goto :goto_3

    .line 460
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .end local v24    # "info":Landroid/content/pm/UserInfo;
    :cond_6
    const/4 v6, -0x4

    if-eq v15, v6, :cond_7

    const/4 v6, -0x5

    if-ne v15, v6, :cond_8

    .line 461
    :cond_7
    move v11, v15

    .line 462
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .line 460
    .restart local v14    # "category":I
    goto :goto_3

    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_8
    const/16 v6, -0x64

    if-eq v15, v6, :cond_7

    const/16 v6, 0x1391

    if-eq v15, v6, :cond_7

    .line 464
    const/16 v11, 0x3e8

    .line 465
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 470
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_9
    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 471
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move/from16 v0, v29

    if-ne v0, v6, :cond_a

    .line 473
    const/4 v6, -0x4

    if-eq v15, v6, :cond_1

    const/4 v6, -0x5

    if-eq v15, v6, :cond_1

    const/16 v6, 0x3e8

    if-eq v15, v6, :cond_1

    .line 476
    move v11, v15

    .line 477
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v14

    move-object/from16 v19, v7

    move-wide/from16 v20, v8

    .line 478
    invoke-static/range {v15 .. v21}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    goto :goto_2

    .line 481
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_a
    const/4 v6, -0x4

    if-eq v15, v6, :cond_1

    const/4 v6, -0x5

    if-eq v15, v6, :cond_1

    const/16 v6, 0x3e8

    if-eq v15, v6, :cond_1

    .line 484
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

    .line 492
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v15    # "uid":I
    .end local v29    # "userId":I
    :cond_b
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0

    .line 493
    .local v27, "restrictedUidsMax":I
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-nez v6, :cond_e

    .line 494
    const/4 v10, 0x0

    :goto_4
    move/from16 v0, v27

    if-ge v10, v0, :cond_e

    .line 495
    aget v15, p2, v10

    .line 497
    .restart local v15    # "uid":I
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 494
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 501
    :cond_c
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settingslib/AppItem;

    .line 502
    .local v25, "item":Lcom/android/settingslib/AppItem;
    if-nez v25, :cond_d

    .line 503
    new-instance v25, Lcom/android/settingslib/AppItem;

    .end local v25    # "item":Lcom/android/settingslib/AppItem;
    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Lcom/android/settingslib/AppItem;-><init>(I)V

    .line 504
    .restart local v25    # "item":Lcom/android/settingslib/AppItem;
    const-wide/16 v12, -0x1

    move-object/from16 v0, v25

    iput-wide v12, v0, Lcom/android/settingslib/AppItem;->total:J

    .line 505
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/settingslib/AppItem;->key:I

    move-object/from16 v0, v25

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 508
    :cond_d
    const/4 v6, 0x1

    move-object/from16 v0, v25

    iput-boolean v6, v0, Lcom/android/settingslib/AppItem;->restricted:Z

    goto :goto_5

    .line 512
    .end local v15    # "uid":I
    .end local v25    # "item":Lcom/android/settingslib/AppItem;
    :cond_e
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 514
    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v10, v6, :cond_10

    .line 515
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

    .line 517
    .local v19, "percentTotal":I
    :goto_7
    new-instance v16, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 518
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/AppItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/settings/datausage/DataUsageList;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 517
    invoke-direct/range {v16 .. v21}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 519
    .local v16, "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    new-instance v6, Lcom/android/settings/datausage/DataUsageList$11;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/datausage/DataUsageList$11;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 514
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 515
    .end local v16    # "preference":Lcom/android/settings/datausage/AppDataUsagePreference;
    .end local v19    # "percentTotal":I
    :cond_f
    const/16 v19, 0x0

    .restart local v19    # "percentTotal":I
    goto :goto_7

    .line 531
    .end local v19    # "percentTotal":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-eqz v6, :cond_11

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 412
    :cond_11
    return-void
.end method

.method byteToLong([BII)J
    .locals 8
    .param p1, "data"    # [B
    .param p2, "idx_from"    # I
    .param p3, "idx_to"    # I

    .prologue
    .line 819
    const-wide/16 v2, 0x0

    .line 820
    .local v2, "value":J
    array-length v1, p1

    if-ge v1, p3, :cond_0

    .line 821
    return-wide v2

    .line 822
    :cond_0
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 823
    const/16 v1, 0x8

    shl-long v4, v2, v1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 822
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 825
    :cond_1
    return-wide v2
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x155

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 177
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    const-string/jumbo v3, "DataUsage"

    const-string/jumbo v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 183
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    new-instance v3, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 190
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->addPreferencesFromResource(I)V

    .line 191
    const-string/jumbo v3, "usage_amount"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/preference/Preference;

    .line 192
    const-string/jumbo v3, "chart_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    .line 193
    const-string/jumbo v3, "apps_group"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/preference/PreferenceGroup;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 196
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "sub_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    .line 197
    const-string/jumbo v3, "network_template"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 200
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    .line 202
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->connectToRilService_lifetime()V

    .line 203
    const-string/jumbo v3, "total_received_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/MTRPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/android/settings/datausage/MTRPreference;

    .line 204
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/android/settings/datausage/MTRPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/MTRPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    const-string/jumbo v3, "total_sent_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/MTRPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/android/settings/datausage/MTRPreference;

    .line 206
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/android/settings/datausage/MTRPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/MTRPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const-string/jumbo v3, "lifetime_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/MTRPreference;

    iput-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/android/settings/datausage/MTRPreference;

    .line 173
    :goto_0
    return-void

    .line 184
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 209
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v3, "total_received_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v3, "total_sent_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v3, "lifetime_data"

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    .line 279
    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    .line 281
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 284
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    .line 287
    const-string/jumbo v0, "DataUsage"

    const-string/jumbo v1, "onDestroy: unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 277
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 251
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    .line 254
    new-instance v0, Lcom/android/settings/datausage/DataUsageList$9;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$9;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    .line 273
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 254
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageList$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 219
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 221
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f11016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 223
    new-instance v0, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$8;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageList$8;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    .line 243
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 223
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/datausage/DataUsageList;->setLoading(ZZ)V

    .line 218
    return-void
.end method
