.class Lcom/android/launcher3/util/DvfsHelper;
.super Ljava/lang/Object;
.source "DvfsUtil.java"


# static fields
.field private static final LAUNCHER_PACKAGE:Ljava/lang/String; = "com.sec.android.app.launcher"


# instance fields
.field mAppLauncherBooster:Lcom/samsung/android/os/SemDvfsManager;

.field mBoostStart:Ljava/lang/Long;

.field mContext:Landroid/content/Context;

.field private mCpuMin:Lcom/android/launcher3/util/MinLimit;

.field private mGpuMin:Lcom/android/launcher3/util/MinLimit;

.field private final mProdName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/launcher3/util/DvfsHelper;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "APP_LAUNCH"

    const/16 v2, 0x15

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mAppLauncherBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 87
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mProdName:Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/android/launcher3/util/DvfsHelper;->createMinLimit()Z

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mBoostStart:Ljava/lang/Long;

    .line 90
    return-void
.end method

.method private createMinLimit()Z
    .locals 5

    .prologue
    .line 93
    sget-object v0, Lcom/android/launcher3/util/DvfsUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Support : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/util/DvfsHelper;->mProdName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Lcom/android/launcher3/util/MinLimit;

    iget-object v1, p0, Lcom/android/launcher3/util/DvfsHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher"

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/util/MinLimit;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mCpuMin:Lcom/android/launcher3/util/MinLimit;

    .line 95
    new-instance v0, Lcom/android/launcher3/util/MinLimit;

    iget-object v1, p0, Lcom/android/launcher3/util/DvfsHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher"

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/util/MinLimit;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mGpuMin:Lcom/android/launcher3/util/MinLimit;

    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method private durationDevices(Ljava/lang/String;)I
    .locals 2
    .param p1, "prodName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    const-string v1, "j7max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method private supportedDevices(Ljava/lang/String;)Z
    .locals 2
    .param p1, "prodName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    const-string v1, "j7max"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method boostUp(IZZ)V
    .locals 1
    .param p1, "timeOut"    # I
    .param p2, "boostGpu"    # Z
    .param p3, "boostCpu"    # Z

    .prologue
    .line 106
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mProdName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/DvfsHelper;->durationDevices(Ljava/lang/String;)I

    move-result p1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mCpuMin:Lcom/android/launcher3/util/MinLimit;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mCpuMin:Lcom/android/launcher3/util/MinLimit;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MinLimit;->boostUp(I)Z

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mGpuMin:Lcom/android/launcher3/util/MinLimit;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mGpuMin:Lcom/android/launcher3/util/MinLimit;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MinLimit;->boostUp(I)Z

    .line 114
    :cond_2
    return-void
.end method

.method boostUpForSupportedModel(IZZ)V
    .locals 1
    .param p1, "timeOut"    # I
    .param p2, "boostGpu"    # Z
    .param p3, "boostCpu"    # Z

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher3/util/DvfsHelper;->mProdName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/DvfsHelper;->supportedDevices(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/DvfsHelper;->boostUp(IZZ)V

    .line 103
    :cond_0
    return-void
.end method
