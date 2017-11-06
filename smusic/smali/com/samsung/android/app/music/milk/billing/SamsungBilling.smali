.class public Lcom/samsung/android/app/music/milk/billing/SamsungBilling;
.super Ljava/lang/Object;
.source "SamsungBilling.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/activity/ActivityResultCallback;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBilling$UPCallbackHandler;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTION_FOR_PAYMENT:Ljava/lang/String; = "PAYMENT"

.field private static final DOWNLOAD_SERVICE_PREPARE_TIME_OUT:I = 0x1f40

.field public static final INVALID_BILLING:I = -0x1

.field private static final INVOKE_LOCK:I = 0xfa0

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungBilling"

.field private static REQUEST_CODE_FOR_PAYMENT:I = 0x0

.field public static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final SA_TOKEN_EXPIRED:I = 0x4b1

.field public static final UNKNOWN_BILLING_ERROR:I = -0xa

.field private static mInstance:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;


# instance fields
.field private bLocked:Z

.field private mActivity:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

.field private mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

.field private mOrderId:Ljava/lang/String;

.field private mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

.field private mProgress:Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

.field private mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

.field private mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mUPCallback:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$UPCallbackHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->bLocked:Z

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mMainHandler:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mContext:Ljava/lang/ref/WeakReference;

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xfffe

    rem-int/2addr v0, v1

    sput v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->REQUEST_CODE_FOR_PAYMENT:I

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$UPCallbackHandler;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$UPCallbackHandler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mUPCallback:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$UPCallbackHandler;

    .line 96
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->bLocked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mMainHandler:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mProgress:Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mActivity:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;Landroid/app/Activity;Lcom/samsung/android/app/music/common/model/UserInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->requestBilling(Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;Landroid/app/Activity;Lcom/samsung/android/app/music/common/model/UserInfo;)Z

    move-result v0

    return v0
.end method

.method private checkAccount()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->isSamsungAccountDisabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    const/4 v0, 0x0

    .line 150
    :goto_1
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mActivity:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->launchSamsungAccount(Landroid/content/Context;)Z

    goto :goto_0

    .line 150
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 696
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/billing/SamsungBilling;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mInstance:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    if-nez v0, :cond_1

    .line 82
    const-class v1, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mInstance:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mInstance:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    .line 86
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mInstance:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method private requestBilling(Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;Landroid/app/Activity;Lcom/samsung/android/app/music/common/model/UserInfo;)Z
    .locals 10
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "userInfo"    # Lcom/samsung/android/app/music/common/model/UserInfo;

    .prologue
    .line 608
    :try_start_0
    const-string v0, "SamsungBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestBilling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;>;"
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, p3}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->createtUnifiedPaymentData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/app/music/common/model/UserInfo;)Lcom/sec/android/app/billing/helper/UnifiedPaymentData;

    move-result-object v5

    .line 616
    .local v5, "paymentData":Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    const-string v0, "SamsungBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestBilling REQUEST_CODE_FOR_PAYMENT :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->REQUEST_CODE_FOR_PAYMENT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mActivity:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    sget v1, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->REQUEST_CODE_FOR_PAYMENT:I

    .line 619
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->registActivityResultCallback(ILcom/samsung/android/app/music/common/activity/ActivityResultCallback;)V

    .line 620
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v0

    const/16 v2, 0x4e88

    sget v3, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->REQUEST_CODE_FOR_PAYMENT:I

    const-string v4, "PAYMENT"

    const-string v6, ""

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mUPCallback:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$UPCallbackHandler;

    move-object v1, p2

    .line 621
    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/billing/helper/UPHelper;->requestBilling(Landroid/app/Activity;IILjava/lang/String;Lcom/sec/android/app/billing/helper/UnifiedPaymentData;Ljava/lang/String;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    const/4 v0, 0x1

    .end local v5    # "paymentData":Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;>;"
    :goto_0
    return v0

    .line 623
    :catch_0
    move-exception v8

    .line 624
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 625
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showBillingUpdateDialog()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method private startDownloadByPackageName()V
    .locals 2

    .prologue
    .line 293
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, "downloadServiceApi":Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$2;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->setObserver(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;)V

    .line 360
    return-void
.end method

.method private validAppsDownloadService()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 398
    const/4 v1, -0x1

    .line 400
    .local v1, "code":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.android.app.samsungapps"

    const/4 v6, 0x0

    .line 401
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 403
    .local v0, "apps":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 404
    const-string v4, "SamsungBilling"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "validAppsDownloadService current apps version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    const v4, 0x1281fa4e

    if-lt v1, v4, :cond_0

    const/4 v3, 0x1

    .end local v0    # "apps":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 405
    :catch_0
    move-exception v2

    .line 406
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private windowDisable(J)V
    .locals 3
    .param p1, "milli"    # J

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->bLocked:Z

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mMainHandler:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$1;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    return-void
.end method


# virtual methods
.method public buySubscription(Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)V
    .locals 3
    .param p1, "activity"    # Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
    .param p2, "subscription"    # Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .prologue
    .line 161
    const-string v0, "SamsungBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buySubscription Activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->bLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 163
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->bLocked:Z

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->init(Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;)V

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->checkAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-wide/16 v0, 0xfa0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->windowDisable(J)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0, p2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPaymentDataSubscription(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)I

    .line 171
    :cond_0
    return-void
.end method

.method public buySubscription(Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;)V
    .locals 0
    .param p1, "activity"    # Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
    .param p2, "subscription"    # Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    .param p3, "l"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

    .prologue
    .line 155
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

    .line 156
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->buySubscription(Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)V

    .line 157
    return-void
.end method

.method public buyTrack(Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;)V
    .locals 3
    .param p1, "activity"    # Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
    .param p2, "trackList"    # Ljava/lang/String;
    .param p3, "promotionId"    # Ljava/lang/String;
    .param p4, "payYn"    # Z
    .param p5, "l"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

    .prologue
    .line 175
    const-string v0, "SamsungBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buyTrack Activity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->bLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->bLocked:Z

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->init(Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;)V

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->checkAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-wide/16 v0, 0xfa0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->windowDisable(J)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPaymentDataTrack(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 185
    :cond_0
    return-void
.end method

.method public checkBillingValidation()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 450
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.billing"

    const/16 v4, 0x40

    .line 451
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 454
    .local v1, "signature1":Landroid/content/pm/Signature;
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v1    # "signature1":Landroid/content/pm/Signature;
    :goto_0
    return v5

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleError(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 209
    .line 210
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "ErrorMsg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 263
    :goto_0
    return-void

    .line 213
    :sswitch_0
    const-string v1, "SamsungBilling"

    const-string v2, "handleBillingError BILLING_RESULT_OK"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0414

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 225
    :sswitch_1
    const-string v1, "SamsungBilling"

    const-string v2, "handleBillingError SA_TOKEN_EXPIRED"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :sswitch_2
    const-string v1, "SamsungBilling"

    const-string v2, "handleBillingError ALREADY_USED_PROMOTION"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :sswitch_3
    const-string v1, "SamsungBilling"

    const-string v2, "handleServerError invalid billing apk"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "invalid billing apk"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 260
    :sswitch_4
    const-string v1, "SamsungBilling"

    const-string v2, "handleServerError UNKNOWN_BILLING_ERROR"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    nop

    :sswitch_data_0
    .sparse-switch
        -0xa -> :sswitch_4
        -0x1 -> :sswitch_3
        0x4b1 -> :sswitch_1
        0x1771 -> :sswitch_0
        0x1778 -> :sswitch_2
    .end sparse-switch
.end method

.method public hasBillingUpdate()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 416
    const/4 v2, -0x1

    .line 418
    .local v2, "deployedCode":I
    if-gez v2, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v5

    .line 421
    :cond_1
    const-string v4, ""

    .line 422
    .local v4, "name":Ljava/lang/String;
    const/4 v1, -0x1

    .line 424
    .local v1, "code":I
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.sec.android.app.billing"

    const/4 v9, 0x0

    .line 425
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 426
    .local v0, "billing":Landroid/content/pm/PackageInfo;
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 431
    if-le v2, v1, :cond_0

    .line 432
    const-string v5, "SamsungBilling"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasBillingUpdate current versioCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   deployedCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v5, "SamsungBilling"

    const-string v7, "hasBillingUpdate Samsung billing needs to update"

    invoke-static {v5, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 436
    goto :goto_0

    .line 438
    .end local v0    # "billing":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 439
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v5, v6

    .line 440
    goto :goto_0
.end method

.method public init(Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mActivity:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    .line 100
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mActivity:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 101
    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mProgress:Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mUPCallback:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$UPCallbackHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->startSetup(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 539
    sget v8, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->REQUEST_CODE_FOR_PAYMENT:I

    if-ne p1, v8, :cond_0

    .line 540
    const-string v8, "SamsungBilling"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResultForSamsungBilling  request Code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  result Code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    packed-switch p2, :pswitch_data_0

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 544
    :pswitch_0
    const-string v8, "PAYMENT_RECEITE"

    .line 545
    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 546
    .local v6, "paymentReceipt":Ljava/lang/String;
    const-string v8, "SIGNATURE"

    .line 547
    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 548
    .local v7, "paymentSignature":Ljava/lang/String;
    const-string v8, "SamsungBilling"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResultForSamsungBilling paymentReceipt : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " paymentSignature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 554
    .local v4, "jsonRootObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "orderID"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, "orderId":Ljava/lang/String;
    iput-object v5, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mOrderId:Ljava/lang/String;

    .line 556
    const-string v8, "SamsungBilling"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResult orderId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v4    # "jsonRootObject":Lorg/json/JSONObject;
    .end local v5    # "orderId":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .line 565
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getStoreUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getNotifyUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 564
    invoke-virtual {v8, p0, v9, v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->completeOrder(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 573
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v6    # "paymentReceipt":Ljava/lang/String;
    .end local v7    # "paymentSignature":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->release()V

    goto :goto_0

    .line 577
    :pswitch_2
    const-string v8, "ERROR_ID"

    .line 578
    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "errorID":Ljava/lang/String;
    const-string v8, "ERROR_MESSAGE"

    .line 580
    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v8, "SamsungBilling"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResult failure!!. error_code - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", reason - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/16 v3, -0xa

    .line 591
    .local v3, "errorcdoe":I
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 595
    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->handleError(I)V

    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->release()V

    goto/16 :goto_0

    .line 592
    :catch_1
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 468
    const-string v0, "SamsungBilling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v0, -0x1

    .line 475
    const-string v1, "SamsungBilling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled reqId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reqType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rspType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    sparse-switch p2, :sswitch_data_0

    .line 535
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 480
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_0
    check-cast p4, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .end local p4    # "rspData":Ljava/lang/Object;
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .line 481
    if-nez p3, :cond_5

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->hasBillingUpdate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mActivity:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->release()V

    goto :goto_0

    .line 488
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.samsungapps"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->isDisabledApps(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->showBillingUpdateDialog()V

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->checkBillingValidation()Z

    move-result v1

    if-nez v1, :cond_3

    .line 496
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->handleError(I)V

    goto :goto_0

    .line 499
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.billing"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->isDisabledApps(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 511
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->getVoucherId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 512
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->getVoucherId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->setVoucherId(Ljava/lang/String;)V

    .line 514
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mActivity:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->requestBilling(Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;Landroid/app/Activity;Lcom/samsung/android/app/music/common/model/UserInfo;)Z

    goto :goto_0

    .line 519
    :cond_5
    aget-object v1, p5, v4

    if-eqz v1, :cond_6

    aget-object v0, p5, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->handleError(I)V

    goto :goto_0

    .line 523
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_1
    if-nez p3, :cond_8

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

    if-eqz v0, :cond_7

    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mOrderId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;->onSuccess(Ljava/lang/String;)V

    .line 532
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->release()V

    goto/16 :goto_0

    .line 528
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

    if-eqz v0, :cond_7

    .line 529
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rspType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;->onFail(ILjava/lang/String;)V

    goto :goto_1

    .line 477
    nop

    :sswitch_data_0
    .sparse-switch
        0x27de -> :sswitch_0
        0x27e1 -> :sswitch_0
        0x27ea -> :sswitch_1
    .end sparse-switch
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mActivity:Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    .line 203
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 204
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$OnBillingStateListener;

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->dispose()V

    .line 206
    return-void
.end method
