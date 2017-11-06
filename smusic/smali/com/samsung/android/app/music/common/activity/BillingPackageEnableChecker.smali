.class public Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;
.super Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;
.source "BillingPackageEnableChecker.java"


# static fields
.field protected static final TIME_LIMIT_FOR_PACKAGE_ENABLE:J = 0x2710L


# instance fields
.field private mBillingHelper:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;)V

    .line 29
    return-void
.end method


# virtual methods
.method public isPackageEnabled()Z
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/billing/helper/UPHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/billing/helper/UPHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/billing/helper/UPHelper;->checkSamsungBilling()I

    move-result v0

    .line 50
    .local v0, "check":I
    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;->meetTimeLimit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x1

    .line 59
    :goto_0
    return v1

    .line 55
    :cond_0
    const-string v1, "SamsungBilling"

    const-string v2, "billing package has been enabled, but didn\'t meet the deadline(10s)"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected meetTimeLimit()Z
    .locals 4

    .prologue
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;->mBillingHelper:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;->mBillingHelper:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setBillingHelper(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;->mBillingHelper:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 33
    return-void
.end method

.method public startChecking()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/activity/BillingPackageEnableChecker;->mStartTime:J

    .line 38
    return-void
.end method
