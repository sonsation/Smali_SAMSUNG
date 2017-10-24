.class final Lcom/android/server/aod/AODManagerService$AODConnection;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AODConnection"
.end annotation


# instance fields
.field public mBound:Z

.field public mConnected:Z

.field mConnectedUser:I

.field public mConnectionCause:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

.field public mService:Lcom/samsung/android/aod/IAlwaysOnDisplayService;

.field final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/aod/AODManagerService;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    .line 612
    sget-object v0, Lcom/android/server/aod/AODManagerService$AODConnectionCause;->AODCONNECTION_STARTAOD:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    iput-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCause:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    .line 613
    invoke-static {p1}, Lcom/android/server/aod/AODManagerService;->-get4(Lcom/android/server/aod/AODManagerService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    .line 611
    return-void
.end method

.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Lcom/android/server/aod/AODManagerService$AODConnectionCause;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/aod/AODManagerService;
    .param p2, "connectionCause"    # Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    .line 616
    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectionCause:Lcom/android/server/aod/AODManagerService$AODConnectionCause;

    .line 617
    invoke-static {p1}, Lcom/android/server/aod/AODManagerService;->-get4(Lcom/android/server/aod/AODManagerService;)I

    move-result v0

    iput v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->mConnectedUser:I

    .line 615
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-get2(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/aod/AODManagerService$AODConnection$3;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$AODConnection$3;-><init>(Lcom/android/server/aod/AODManagerService$AODConnection;)V

    invoke-virtual {v0, v1}, Lcom/android/server/aod/AODManagerService$AODHandler;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-get2(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/aod/AODManagerService$AODConnection$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/aod/AODManagerService$AODConnection$1;-><init>(Lcom/android/server/aod/AODManagerService$AODConnection;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/aod/AODManagerService$AODHandler;->post(Ljava/lang/Runnable;)Z

    .line 621
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODConnection;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-get2(Lcom/android/server/aod/AODManagerService;)Lcom/android/server/aod/AODManagerService$AODHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/aod/AODManagerService$AODConnection$2;

    invoke-direct {v1, p0}, Lcom/android/server/aod/AODManagerService$AODConnection$2;-><init>(Lcom/android/server/aod/AODManagerService$AODConnection;)V

    invoke-virtual {v0, v1}, Lcom/android/server/aod/AODManagerService$AODHandler;->post(Ljava/lang/Runnable;)Z

    .line 657
    return-void
.end method
