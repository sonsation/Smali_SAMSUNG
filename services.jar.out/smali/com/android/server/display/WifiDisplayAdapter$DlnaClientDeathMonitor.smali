.class Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaClientDeathMonitor"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 2465
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2466
    const-string/jumbo v1, "WifiDisplayAdapter"

    const-string/jumbo v2, "DlnaClientDeathMonitor"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    .line 2469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2465
    :goto_0
    return-void

    .line 2470
    :catch_0
    move-exception v0

    .line 2471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 2477
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap6(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 2476
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    .prologue
    .line 2482
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "unlinkToDeath"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$DlnaClientDeathMonitor;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2481
    return-void
.end method
