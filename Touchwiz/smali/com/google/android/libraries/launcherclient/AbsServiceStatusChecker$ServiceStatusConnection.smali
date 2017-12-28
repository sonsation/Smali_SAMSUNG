.class Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;
.super Ljava/lang/Object;
.source "AbsServiceStatusChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceStatusConnection"
.end annotation


# instance fields
.field private mStatusCallback:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;

.field final synthetic this$0:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;)V
    .locals 0
    .param p2, "statusCallback"    # Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;->mStatusCallback:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;

    .line 73
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;->mStatusCallback:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;

    iget-object v2, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;->getStatus(Landroid/os/IBinder;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;->isRunning(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;

    iget-object v1, v1, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 97
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "AbsServiceStatusChecker"

    const-string v2, "isServiceRunning - remote call failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;

    iget-object v1, v1, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;->mStatusCallback:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$StatusCallback;->isRunning(Z)V

    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker$ServiceStatusConnection;->this$0:Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;

    iget-object v2, v2, Lcom/google/android/libraries/launcherclient/AbsServiceStatusChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 80
    return-void
.end method
