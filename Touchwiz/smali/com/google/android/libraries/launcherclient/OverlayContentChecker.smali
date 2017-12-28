.class public Lcom/google/android/libraries/launcherclient/OverlayContentChecker;
.super Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;
.source "OverlayContentChecker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public checkOverlayContent(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;)V
    .locals 1
    .param p1, "statusCallback"    # Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/OverlayContentChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/launcherclient/LauncherClient;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/OverlayContentChecker;->checkServiceStatus(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method protected getStatus(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->hasOverlayContent()Z

    move-result v0

    return v0
.end method
