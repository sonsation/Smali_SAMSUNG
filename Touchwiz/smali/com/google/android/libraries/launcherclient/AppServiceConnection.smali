.class Lcom/google/android/libraries/launcherclient/AppServiceConnection;
.super Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;
.source "AppServiceConnection.java"


# static fields
.field private static sInstance:Lcom/google/android/libraries/launcherclient/AppServiceConnection;


# instance fields
.field private mActiveClient:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/libraries/launcherclient/LauncherClient;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoUnbind:Z

.field private mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/16 v0, 0x21

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;-><init>(Landroid/content/Context;I)V

    .line 27
    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/google/android/libraries/launcherclient/AppServiceConnection;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->sInstance:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->sInstance:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    .line 17
    :cond_0
    sget-object v0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->sInstance:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    return-object v0
.end method

.method private getBoundClient()Lcom/google/android/libraries/launcherclient/LauncherClient;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->mActiveClient:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->mActiveClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/launcherclient/LauncherClient;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOverlay(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 2
    .param p1, "overlay"    # Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 74
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->getBoundClient()Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    .line 75
    .local v0, "client":Lcom/google/android/libraries/launcherclient/LauncherClient;
    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->overlayAvailabilityChanged(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public clearClientIfSame(Lcom/google/android/libraries/launcherclient/LauncherClient;Z)V
    .locals 3
    .param p1, "client"    # Lcom/google/android/libraries/launcherclient/LauncherClient;
    .param p2, "unbind"    # Z

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->getBoundClient()Lcom/google/android/libraries/launcherclient/LauncherClient;

    move-result-object v0

    .line 46
    .local v0, "boundClient":Lcom/google/android/libraries/launcherclient/LauncherClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    iput-object v2, p0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->mActiveClient:Ljava/lang/ref/WeakReference;

    .line 49
    if-eqz p2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->unbindSelf()V

    .line 51
    sget-object v1, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->sInstance:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    if-ne v1, p0, :cond_0

    .line 52
    sput-object v2, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->sInstance:Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    .line 56
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 60
    invoke-static {p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->setOverlay(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 61
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->mAutoUnbind:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->unbindSelf()V

    .line 68
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->setOverlay(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V

    .line 69
    return-void
.end method

.method public setAutoUnbind(Z)V
    .locals 0
    .param p1, "canAutoUnbind"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->mAutoUnbind:Z

    .line 42
    return-void
.end method

.method public setClient(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;
    .locals 1
    .param p1, "client"    # Lcom/google/android/libraries/launcherclient/LauncherClient;

    .prologue
    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->mActiveClient:Ljava/lang/ref/WeakReference;

    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->mOverlay:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    return-object v0
.end method
