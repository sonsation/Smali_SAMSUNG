.class Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ServiceNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "networkType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, "networkType":I
    packed-switch v1, :pswitch_data_0

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->access$300(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V

    .line 91
    return-void

    .line 82
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->access$100(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->access$002(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;Z)Z

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;->this$0:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->access$100(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->access$202(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;Z)Z

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
