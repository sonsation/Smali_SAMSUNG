.class Lcom/android/server/cover/CoverManagerService$1;
.super Ljava/lang/Object;
.source "CoverManagerService.java"

# interfaces
.implements Lcom/android/server/cover/CoverManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService$1;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCoverAttachStateChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$1;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get0(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->notifyCoverAttachStateChanged(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "switchState"    # Z

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$1;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get0(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl;->notifyCoverSwitchStateChanged(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z
    .param p4, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService$1;->this$0:Lcom/android/server/cover/CoverManagerService;

    invoke-static {v1}, Lcom/android/server/cover/CoverManagerService;->-get0(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/CoverManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/cover/CoverManagerServiceImpl;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
