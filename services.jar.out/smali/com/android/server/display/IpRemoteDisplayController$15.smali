.class Lcom/android/server/display/IpRemoteDisplayController$15;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->sendEventToSemDisplayVolumeKeyListener(Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$data:Landroid/os/Bundle;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p2, "val$event"    # I
    .param p3, "val$data"    # Landroid/os/Bundle;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$15;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput p2, p0, Lcom/android/server/display/IpRemoteDisplayController$15;->val$event:I

    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController$15;->val$data:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 761
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$15;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get6(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/IpRemoteDisplayController$15;->val$event:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 762
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$15;->val$data:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 763
    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$15;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get6(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 760
    return-void
.end method
