.class Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SFinderLaunchPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;
    }
.end annotation


# static fields
.field private static final FEATURE_NAME:Ljava/lang/String; = "com.sec.feature.findo"

.field private static final TAG:Ljava/lang/String; = "SFinderLaunchPolicy"


# instance fields
.field private mDeniedActivities:[Ljava/lang/String;

.field private mFeatureCached:Z

.field private mFeatureEnabled:Z

.field private mLaunchSFinder:Ljava/lang/Runnable;

.field private mSFinderIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/policy/SamsungPhoneWindowManager;

    .prologue
    const/4 v4, 0x0

    .line 5862
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5859
    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    .line 5860
    iput-boolean v4, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    .line 5869
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 5870
    const-string v1, "{com.android.phone/com.android.phone.UsimDownload}"

    aput-object v1, v0, v4

    .line 5869
    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    .line 5873
    new-instance v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    .line 5863
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    .line 5864
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    .line 5865
    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    .line 5864
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5866
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;

    const-string v1, "callername"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5862
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SamsungPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V

    return-void
.end method

.method private ensureFeatureCached()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5894
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    if-nez v0, :cond_1

    .line 5895
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 5896
    const/4 v0, 0x0

    return v0

    .line 5899
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    .line 5900
    iput-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureCached:Z

    .line 5903
    :cond_1
    return v2
.end method

.method private isDeniedActivity()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 5907
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyManager:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v3}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 5909
    .local v2, "topActivity":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 5910
    return v8

    .line 5913
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 5915
    .local v0, "cmpName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mDeniedActivities:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v1, v5, v3

    .line 5916
    .local v1, "entry":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5917
    return v8

    .line 5915
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5921
    .end local v1    # "entry":Ljava/lang/String;
    :cond_2
    return v4
.end method

.method private isLaunchable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5925
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5926
    return v3

    .line 5929
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    if-nez v0, :cond_1

    .line 5930
    const-string v0, "SFinderLaunchPolicy"

    const-string v1, "isLaunchable: feature is disabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5931
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-nez v0, :cond_2

    .line 5932
    const-string v0, "SFinderLaunchPolicy"

    const-string v1, "isLaunchable: mBootCompleted=false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5934
    return v3

    .line 5939
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isDeniedActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5940
    const-string v0, "SFinderLaunchPolicy"

    const-string v1, "isLaunchable: isDeniedActivity()=true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5951
    :goto_0
    return v3

    .line 5941
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5942
    const-string v0, "SFinderLaunchPolicy"

    const-string v1, "isLaunchable: device is not provisioned yet!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5943
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5944
    const-string v0, "SFinderLaunchPolicy"

    const-string v1, "isLaunchable: keyguard is on!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5945
    :cond_5
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5946
    :cond_6
    const-string v0, "SFinderLaunchPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLaunchable: isFactoryMode()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAutomaticTestMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5948
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method private launch()Z
    .locals 2

    .prologue
    .line 5955
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->ensureFeatureCached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5956
    const/4 v0, 0x0

    return v0

    .line 5959
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isLaunchable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5960
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5961
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mLaunchSFinder:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5964
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mFeatureEnabled:Z

    return v0
.end method
