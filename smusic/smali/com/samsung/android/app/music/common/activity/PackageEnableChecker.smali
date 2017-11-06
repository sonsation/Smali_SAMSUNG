.class public Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "PackageEnableChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;
    }
.end annotation


# instance fields
.field protected mApplicationContext:Landroid/content/Context;

.field protected mPackageEnableStatusListener:Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "l"    # Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;->mApplicationContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;->mPackageName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;->mPackageEnableStatusListener:Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;

    .line 28
    return-void
.end method


# virtual methods
.method public isPackageEnabled()Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->isDisabledApps(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;->mPackageEnableStatusListener:Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker;->isPackageEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/activity/PackageEnableChecker$PackageEnableStatusListener;->onPackageEnabled(Z)V

    .line 41
    return-void
.end method

.method public startChecking()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method
