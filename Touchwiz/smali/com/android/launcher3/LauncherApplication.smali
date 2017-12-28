.class public Lcom/android/launcher3/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# instance fields
.field private final mAppName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 31
    const-string v0, "Home"

    iput-object v0, p0, Lcom/android/launcher3/LauncherApplication;->mAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 55
    const-string v1, "Home"

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    .line 57
    .local v0, "executorMediator":Lcom/samsung/android/sdk/bixby/BixbyApi;
    new-instance v1, Lcom/android/launcher3/LauncherApplication$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherApplication$1;-><init>(Lcom/android/launcher3/LauncherApplication;Lcom/samsung/android/sdk/bixby/BixbyApi;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    .line 70
    new-instance v1, Lcom/android/launcher3/LauncherApplication$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/LauncherApplication$2;-><init>(Lcom/android/launcher3/LauncherApplication;Lcom/samsung/android/sdk/bixby/BixbyApi;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    .line 94
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    .line 37
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/logging/SALogging;->init(Landroid/app/Application;)V

    .line 38
    return-void
.end method
