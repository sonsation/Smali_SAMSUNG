.class Lcom/android/server/display/IpRemoteDisplayController$12;
.super Ljava/lang/Object;
.source "IpRemoteDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/IpRemoteDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IpRemoteDisplayController;

.field final synthetic val$connectedMode:I

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$oldDisplayHeight:I

.field final synthetic val$oldDisplayWidth:I

.field final synthetic val$oldSurface:Landroid/view/Surface;

.field final synthetic val$requestPendingSetup:Z

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/display/IpRemoteDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIIIZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/IpRemoteDisplayController;
    .param p2, "val$oldSurface"    # Landroid/view/Surface;
    .param p3, "val$surface"    # Landroid/view/Surface;
    .param p4, "val$oldDisplay"    # Landroid/hardware/display/WifiDisplay;
    .param p5, "val$display"    # Landroid/hardware/display/WifiDisplay;
    .param p6, "val$oldDisplayWidth"    # I
    .param p7, "val$oldDisplayHeight"    # I
    .param p8, "val$connectedMode"    # I
    .param p9, "val$flags"    # I
    .param p10, "val$requestPendingSetup"    # Z
    .param p11, "val$width"    # I
    .param p12, "val$height"    # I

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iput-object p2, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplayWidth:I

    iput p7, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplayHeight:I

    iput p8, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$connectedMode:I

    iput p9, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$flags:I

    iput-boolean p10, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$requestPendingSetup:Z

    iput p11, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$width:I

    iput p12, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 629
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_4

    .line 631
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get7(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayDisconnected()V

    .line 641
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0, v4}, Lcom/android/server/display/IpRemoteDisplayController;->-set2(Lcom/android/server/display/IpRemoteDisplayController;Z)Z

    .line 644
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_3

    .line 645
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 646
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get7(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$display:Landroid/hardware/display/WifiDisplay;

    iget v2, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$connectedMode:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;I)V

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldSurface:Landroid/view/Surface;

    if-eq v0, v1, :cond_9

    .line 652
    :cond_2
    :goto_2
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, "platform":Ljava/lang/String;
    const-string/jumbo v0, "IpRemoteDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " use surface on WFD !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get7(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$surface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$width:I

    iget v4, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$height:I

    iget v5, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$flags:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 628
    .end local v6    # "platform":Ljava/lang/String;
    :cond_3
    return-void

    .line 630
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 632
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    iget-object v1, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v1}, Lcom/android/server/display/IpRemoteDisplayController;->-get0(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/IpRemoteDisplayController;->-wrap1(Lcom/android/server/display/IpRemoteDisplayController;I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get4(Lcom/android/server/display/IpRemoteDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 637
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get7(Lcom/android/server/display/IpRemoteDisplayController;)Lcom/android/server/display/IpRemoteDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/IpRemoteDisplayController$Listener;->onDisplayConnectionFailed()V

    goto/16 :goto_1

    .line 630
    :cond_7
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplayWidth:I

    if-ne v0, v3, :cond_5

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$oldDisplayHeight:I

    if-ne v0, v3, :cond_5

    goto/16 :goto_0

    .line 634
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get3(Lcom/android/server/display/IpRemoteDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.WFD_BROKER_CONNECTION_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    .line 649
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$surface:Landroid/view/Surface;

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    .line 650
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->this$0:Lcom/android/server/display/IpRemoteDisplayController;

    invoke-static {v0}, Lcom/android/server/display/IpRemoteDisplayController;->-get0(Lcom/android/server/display/IpRemoteDisplayController;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 651
    iget-boolean v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$requestPendingSetup:Z

    .line 650
    if-eqz v0, :cond_3

    .line 651
    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$width:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/server/display/IpRemoteDisplayController$12;->val$height:I

    if-ne v0, v3, :cond_3

    goto/16 :goto_2
.end method
