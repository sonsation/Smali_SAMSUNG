.class public Lcom/samsung/android/settings/SettingsApplication;
.super Landroid/app/Application;
.source "SettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SettingsApplication$1;
    }
.end annotation


# instance fields
.field private mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

.field private mStartStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SettingsApplication;)Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 49
    const-string/jumbo v0, "Settings"

    const-string/jumbo v1, "1.0"

    invoke-static {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    .line 73
    new-instance v0, Lcom/samsung/android/settings/SettingsApplication$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SettingsApplication$1;-><init>(Lcom/samsung/android/settings/SettingsApplication;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mStartStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    .line 44
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 55
    sget-object v0, Lcom/android/settings/Utils;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string/jumbo v0, "0.1"

    sget-object v1, Lcom/android/settings/Utils;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    .line 60
    const-string/jumbo v1, "759-399-5199102"

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/android/settings/Utils;->GSIM_ENABLE_FEATURE:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v0

    .line 58
    invoke-static {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/SettingsApplication;->mExecutorMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    iget-object v1, p0, Lcom/samsung/android/settings/SettingsApplication;->mStartStateListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setStartStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;)V

    .line 52
    :cond_1
    return-void
.end method
