.class public Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.super Ljava/lang/Object;
.source "SamsungBillingHelper.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/activity/ActivityResultCallback;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$FragmentTags;,
        Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;
    }
.end annotation


# static fields
.field private static sRequestCodeForBilling:I


# instance fields
.field private bLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationContext:Landroid/content/Context;

.field private mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

.field private mBillingProductType:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

.field private mOrderId:Ljava/lang/String;

.field private mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

.field private mProgress:Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

.field private mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

.field private mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mUPCallbackHandler:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->bLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mUiHandler:Landroid/os/Handler;

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->DEFAULT:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingProductType:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mActivity:Ljava/lang/ref/WeakReference;

    .line 123
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mUPCallbackHandler:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

    .line 125
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mProgress:Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    .line 126
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
    .param p1, "x1"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->startDownloadByPackageName(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
    .param p1, "x1"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->verifyBillingApp(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
    .param p1, "x1"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->handleBillingDownloadError(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mProgress:Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindService()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mUPCallbackHandler:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/billing/helper/UPHelper;->startSetup(Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SamsungBilling"

    const-string v2, "Failed to setup payment helper"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkBillingAppUpdate(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 4
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    .prologue
    .line 267
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->getInstance()Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.billing"

    new-instance v3, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$3;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->checkUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    .line 278
    return-void
.end method

.method private generateRequestCode()V
    .locals 1

    .prologue
    .line 728
    sget v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->sRequestCodeForBilling:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->sRequestCodeForBilling:I

    .line 729
    sget v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->sRequestCodeForBilling:I

    if-gez v0, :cond_0

    .line 730
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->sRequestCodeForBilling:I

    .line 732
    :cond_0
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/music/service/milk/ServiceBindingException;
        }
    .end annotation

    .prologue
    .line 821
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 822
    .local v0, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-nez v0, :cond_0

    .line 823
    new-instance v1, Lcom/samsung/android/app/music/service/milk/ServiceBindingException;

    const-string v2, "can\'t get user from service!"

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/milk/ServiceBindingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 825
    :cond_0
    return-object v0
.end method

.method private handleBillingDownloadError(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;I)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;
    .param p2, "result"    # I

    .prologue
    .line 430
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 431
    const-string v0, "SamsungBilling"

    const-string v1, "fail to download billing app"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->verifyBillingApp(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    .line 438
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 433
    const-string v0, "SamsungBilling"

    const-string v1, "fail to install billing app"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_1
    const-string v0, "SamsungBilling"

    const-string/jumbo v1, "undefined billing app error"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseLockWithDelay(J)V
    .locals 3
    .param p1, "milli"    # J

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    return-void
.end method

.method private requestBilling(Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;)V
    .locals 10
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .prologue
    .line 641
    :try_start_0
    const-string v1, "SamsungBilling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestBilling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v9

    .line 644
    .local v9, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;>;"
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8, v9}, Lcom/samsung/android/app/music/milk/billing/UnifiedPaymentDataUtil;->createtUnifiedPaymentData(Landroid/content/Context;Ljava/util/ArrayList;Lcom/samsung/android/app/music/common/model/UserInfo;)Lcom/sec/android/app/billing/helper/UnifiedPaymentData;

    move-result-object v5

    .line 649
    .local v5, "paymentData":Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->generateRequestCode()V

    .line 650
    const-string v1, "SamsungBilling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestBilling REQUEST_CODE_FOR_PAYMENT :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->sRequestCodeForBilling:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 653
    .local v2, "activity":Landroid/app/Activity;
    if-nez v2, :cond_0

    .line 654
    const-string v1, "SamsungBilling"

    const-string/jumbo v3, "skip to request billing as activity has been released"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v5    # "paymentData":Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;>;"
    .end local v9    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :goto_0
    return-void

    .line 657
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v5    # "paymentData":Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;>;"
    .restart local v9    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    move-object v1, v0

    sget v3, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->sRequestCodeForBilling:I

    .line 658
    invoke-virtual {v1, v3, p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->registActivityResultCallback(ILcom/samsung/android/app/music/common/activity/ActivityResultCallback;)V

    .line 659
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v1

    sget v3, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->sRequestCodeForBilling:I

    const-string v4, "PAYMENT"

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mUPCallbackHandler:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UPCallbackHandler;

    .line 660
    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/billing/helper/UPHelper;->requestBilling(Landroid/app/Activity;ILjava/lang/String;Lcom/sec/android/app/billing/helper/UnifiedPaymentData;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/samsung/android/app/music/service/milk/ServiceBindingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 662
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v5    # "paymentData":Lcom/sec/android/app/billing/helper/UnifiedPaymentData;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;>;"
    .end local v9    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :catch_0
    move-exception v7

    .line 663
    .local v7, "e":Lcom/samsung/android/app/music/service/milk/ServiceBindingException;
    const-string v1, "SamsungBilling"

    const-string v3, "failed to request billing because of service binding exception"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-virtual {v7}, Lcom/samsung/android/app/music/service/milk/ServiceBindingException;->printStackTrace()V

    goto :goto_0

    .line 665
    .end local v7    # "e":Lcom/samsung/android/app/music/service/milk/ServiceBindingException;
    :catch_1
    move-exception v7

    .line 666
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "SamsungBilling"

    const-string v3, "failed to request billing"

    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showPurchaseCompleteNotification()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const v11, 0x7f0a0078

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 675
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 676
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const-string v7, "notification"

    .line 677
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 678
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    const v6, 0x7f020128

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 679
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 681
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const v7, 0x7f0a0327

    .line 682
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 681
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 684
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingProductType:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    sget-object v7, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->TRACK:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    if-ne v6, v7, :cond_0

    .line 686
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const v7, 0x7f0a0326

    .line 687
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    .line 688
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 686
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 706
    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 707
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 708
    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 710
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC_MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    .local v1, "launchMain":Landroid/content/Intent;
    const-string v6, "com.sec.android.app.music"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const/high16 v6, 0x24000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 713
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const v7, 0x7f120024

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 717
    .local v5, "pendingLaunchMainIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 718
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 719
    .local v3, "noti":Landroid/app/Notification;
    const v6, 0x7f120023

    invoke-virtual {v4, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 720
    return-void

    .line 691
    .end local v1    # "launchMain":Landroid/content/Intent;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "noti":Landroid/app/Notification;
    .end local v5    # "pendingLaunchMainIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getProductInfo()Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .line 692
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getProductInfo()Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;->getProductTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 693
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const v7, 0x7f0a0325

    .line 694
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .line 695
    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getProductInfo()Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/purchase/PaymentProductInfo;->getProductTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    .line 696
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 693
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_0

    .line 698
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    const-string v6, "SamsungBilling"

    const-string v7, "Can\'t display product title in purchase complete noti. product info could be null or its title is empty"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const v7, 0x7f0a0324

    .line 701
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    .line 702
    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    .line 700
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "message":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private startDownloadByPackageName(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 5
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 447
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 448
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mProgress:Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "PROGRESS"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mProgress:Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const v4, 0x7f0a0265

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->setText(Ljava/lang/CharSequence;)V

    .line 451
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;-><init>(Landroid/content/Context;)V

    .line 452
    .local v1, "downloadService":Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
    new-instance v2, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->setObserver(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;)V

    .line 505
    const-string v2, "com.sec.android.app.billing"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->startDownloadByPackageName(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method private unbindService()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->dispose()V

    .line 157
    return-void
.end method

.method private verifyBillingApp(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V
    .locals 7
    .param p1, "l"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    .prologue
    const/4 v6, 0x2

    .line 286
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/billing/helper/UPHelper;->checkSamsungBilling()I

    move-result v0

    .line 287
    .local v0, "billingStatus":I
    if-nez v0, :cond_1

    .line 288
    invoke-interface {p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->onBillingAppAvailable()V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    if-ne v0, v6, :cond_2

    .line 290
    const-string v4, "SamsungBilling"

    const-string v5, "billing error. invalid billing apk!!"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-interface {p1, v6}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->onBillingAppUnavailable(I)V

    goto :goto_0

    .line 292
    :cond_2
    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 293
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 294
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 295
    new-instance v3, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const-string v5, "com.sec.android.app.billing"

    new-instance v6, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$4;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;)V

    .local v3, "enableChecker":Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;
    move-object v4, v3

    .line 308
    check-cast v4, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;

    invoke-virtual {v4, p0}, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;->setBillingHelper(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    .line 309
    new-instance v2, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    const-string v4, "com.sec.android.app.billing"

    invoke-direct {v2, v1, v4}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    .local v2, "disabledDialog":Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->setOnEnableStatusListener(Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;)V

    .line 311
    check-cast v1, Landroid/app/Activity;

    .line 312
    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "DISABLED_APP"

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    .end local v2    # "disabledDialog":Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;
    .end local v3    # "enableChecker":Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;
    :cond_3
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 315
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->startDownloadByPackageName(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    goto :goto_0
.end method


# virtual methods
.method public buySubscription(Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V
    .locals 4
    .param p1, "subscription"    # Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    .param p2, "l"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .prologue
    .line 192
    const-string v1, "SamsungBilling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buySubscription Activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mActivity:Ljava/lang/ref/WeakReference;

    .line 193
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->isLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 220
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->SUBSCRIPTION:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingProductType:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    .line 199
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .line 200
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->checkAndLockIfneeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->releaseLockWithDelay(J)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->init()V

    .line 204
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->checkBillingAppUpdate(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    goto :goto_0

    .line 218
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    const-string v1, "SamsungBilling"

    const-string/jumbo v2, "skip buy subscription because of temporary lock"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buyTrack(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V
    .locals 4
    .param p1, "trackList"    # Ljava/lang/String;
    .param p2, "promotionId"    # Ljava/lang/String;
    .param p3, "payYn"    # Z
    .param p4, "l"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .prologue
    .line 232
    const-string v1, "SamsungBilling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buyTrack Activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->isLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 258
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 237
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->TRACK:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingProductType:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    .line 238
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->checkAndLockIfneeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 240
    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->releaseLockWithDelay(J)V

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->init()V

    .line 242
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;->checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$2;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->checkBillingAppUpdate(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;)V

    goto :goto_0

    .line 256
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    const-string v1, "SamsungBilling"

    const-string/jumbo v2, "skip buy track because of temporary lock"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkAndLockIfneeded()Z
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->bLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public handleServerError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    .local v0, "context":Landroid/content/Context;
    sparse-switch p1, :sswitch_data_0

    .line 422
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 371
    .restart local v0    # "context":Landroid/content/Context;
    :sswitch_0
    const-string v2, "SamsungBilling"

    const-string v3, "handleServerError ALREADY_PURCHASED_USER"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v2, p0, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->requestLogin(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Z)I

    .line 373
    if-eqz v0, :cond_0

    .line 374
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const v3, 0x7f0a0414

    .line 375
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 376
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 381
    :sswitch_1
    const-string v2, "SamsungBilling"

    const-string v3, "handleServerError EXPIRED_ACCESS_TOKEN"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v2, p0, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->requestLogin(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Z)I

    .line 383
    if-eqz v0, :cond_0

    .line 384
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    const v3, 0x7f0a039c

    .line 385
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 391
    :sswitch_2
    const-string v2, "SamsungBilling"

    const-string v3, "handleServerError ALREADY_USED_PROMOTION"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->newInstance()Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    move-result-object v1

    .line 395
    .local v1, "dialog":Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;
    new-instance v2, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->setOnButtonClickListener(Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;)V

    .line 414
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ALREADY_USED_PROMOTION"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    .end local v1    # "dialog":Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;
    .restart local v0    # "context":Landroid/content/Context;
    :sswitch_3
    const-string v2, "SamsungBilling"

    const-string v3, "handleServerError UNKNOWN_BILLING_ERROR"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x4b1 -> :sswitch_1
        0x1771 -> :sswitch_0
        0x1778 -> :sswitch_2
    .end sparse-switch
.end method

.method public init()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->bindService()V

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 132
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .end local v0    # "context":Landroid/content/Context;
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$UnbindServiceHelper;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 138
    :goto_0
    return-void

    .line 136
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const-string v1, "SamsungBilling"

    const-string v2, "Unexpected activity uses samsung music billing"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->bLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->bLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 325
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 575
    sget v7, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->sRequestCodeForBilling:I

    if-ne p1, v7, :cond_0

    .line 576
    const-string v7, "SamsungBilling"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResultForSamsungBilling  request Code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  result Code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    packed-switch p2, :pswitch_data_0

    .line 632
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 580
    :pswitch_1
    const-string v7, "PAYMENT_RECEITE"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, "paymentReceipt":Ljava/lang/String;
    const-string v7, "SIGNATURE"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 582
    .local v6, "paymentSignature":Ljava/lang/String;
    const-string v7, "SamsungBilling"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResultForSamsungBilling paymentReceipt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " paymentSignature : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 588
    .local v4, "jsonRootObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "orderID"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mOrderId:Ljava/lang/String;

    .line 589
    const-string v7, "SamsungBilling"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult orderId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mOrderId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .end local v4    # "jsonRootObject":Lorg/json/JSONObject;
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .line 598
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getStoreUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->getNotifyUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 597
    invoke-virtual {v7, p0, v8, v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->completeOrder(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->showPurchaseCompleteNotification()V

    goto :goto_0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 612
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v5    # "paymentReceipt":Ljava/lang/String;
    .end local v6    # "paymentSignature":Ljava/lang/String;
    :pswitch_2
    const-string v7, "ERROR_ID"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "errorID":Ljava/lang/String;
    const-string v7, "ERROR_MESSAGE"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v7, "SamsungBilling"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActivityResult failure!!. error_code - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v3, -0x1

    .line 624
    .local v3, "errorcdoe":I
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 628
    :goto_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->handleServerError(I)V

    goto/16 :goto_0

    .line 625
    :catch_1
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 510
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

    .line 511
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 515
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

    .line 517
    sparse-switch p2, :sswitch_data_0

    .line 563
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 520
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_0
    check-cast p4, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .end local p4    # "rspData":Ljava/lang/Object;
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    .line 521
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->checkActiveActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 522
    const-string v1, "SamsungBilling"

    const-string v2, "Stop billing. The host activity is being finished or already released."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_1
    if-nez p3, :cond_4

    .line 530
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    if-nez v1, :cond_2

    .line 531
    const-string v1, "SamsungBilling"

    const-string v2, "Fail billing. Server gives null as payment data."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    .line 535
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->getVoucherId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 536
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPurchasableItem:Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->getVoucherId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;->setVoucherId(Ljava/lang/String;)V

    .line 538
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mPaymentData:Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->requestBilling(Lcom/samsung/android/app/music/common/model/purchase/PaymentDataInfo;)V

    goto :goto_0

    .line 541
    :cond_4
    if-eqz p5, :cond_5

    array-length v1, p5

    if-lez v1, :cond_5

    const/4 v1, 0x0

    aget-object v1, p5, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 543
    .local v0, "errorCode":I
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->handleServerError(I)V

    goto :goto_0

    .line 541
    .end local v0    # "errorCode":I
    :cond_5
    const/4 v0, -0x1

    goto :goto_1

    .line 547
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_1
    if-nez p3, :cond_7

    .line 548
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingProductType:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    sget-object v2, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;->SUBSCRIPTION:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingProductType;

    if-ne v1, v2, :cond_6

    .line 549
    const-string v1, "SamsungBilling"

    const-string v2, "complete order success for subscription purchase. login again to update user type."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->requestLogin(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Z)I

    .line 553
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mOrderId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rspType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p3, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;->onFail(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 517
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
    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->mBillingListener:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->unbindService()V

    .line 360
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->bLocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 329
    return-void
.end method
