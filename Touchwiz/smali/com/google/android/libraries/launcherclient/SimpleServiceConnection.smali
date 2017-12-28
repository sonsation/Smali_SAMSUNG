.class Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;
.super Ljava/lang/Object;
.source "SimpleServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mBoundSuccessfully:Z

.field private final mContext:Landroid/content/Context;

.field private final mFlags:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mContext:Landroid/content/Context;

    .line 19
    iput p2, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mFlags:I

    .line 20
    return-void
.end method


# virtual methods
.method public final connectSafely()Z
    .locals 4

    .prologue
    .line 39
    iget-boolean v1, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mBoundSuccessfully:Z

    if-nez v1, :cond_0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {v2}, Lcom/google/android/libraries/launcherclient/LauncherClient;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mFlags:I

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mBoundSuccessfully:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mBoundSuccessfully:Z

    return v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "LauncherClient"

    const-string v2, "Unable to connect to overlay service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 23
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 26
    return-void
.end method

.method public unbindSelf()V
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mBoundSuccessfully:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->mBoundSuccessfully:Z

    .line 33
    :cond_0
    return-void
.end method
