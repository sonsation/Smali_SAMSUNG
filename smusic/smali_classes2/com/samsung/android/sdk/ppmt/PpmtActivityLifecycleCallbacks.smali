.class public Lcom/samsung/android/sdk/ppmt/PpmtActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "PpmtActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mNumOfRunning:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtActivityLifecycleCallbacks;->mNumOfRunning:I

    .line 15
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    if-eqz p1, :cond_0

    .line 30
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->getInstance()Lcom/samsung/android/sdk/ppmt/data/UsageManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->save(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 24
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtActivityLifecycleCallbacks;->mNumOfRunning:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtActivityLifecycleCallbacks;->mNumOfRunning:I

    .line 25
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtActivityLifecycleCallbacks;->mNumOfRunning:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtActivityLifecycleCallbacks;->mNumOfRunning:I

    if-nez v0, :cond_0

    .line 42
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->getInstance()Lcom/samsung/android/sdk/ppmt/data/UsageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->send(Landroid/content/Context;)V

    .line 44
    :cond_0
    return-void
.end method
