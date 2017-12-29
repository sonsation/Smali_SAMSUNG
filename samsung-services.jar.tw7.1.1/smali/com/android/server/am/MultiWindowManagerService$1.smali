.class Lcom/android/server/am/MultiWindowManagerService$1;
.super Ljava/lang/Object;
.source "MultiWindowManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 2709
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2712
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManagerService"

    const-string v1, "onServiceConnected: MinimizeContainerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 2716
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowManagerService"

    const-string v1, "onServiceDisconnected: MinimizeContainerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v0}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2718
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const-string v1, "service_disconnected"

    invoke-static {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->-wrap3(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    .line 2719
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService$1;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const-string v1, "service_disconnected"

    invoke-static {v0, v1}, Lcom/android/server/am/MultiWindowManagerService;->-wrap0(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V

    .line 2715
    :cond_1
    return-void
.end method
