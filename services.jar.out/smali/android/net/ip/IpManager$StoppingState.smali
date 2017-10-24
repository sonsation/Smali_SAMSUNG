.class Landroid/net/ip/IpManager$StoppingState;
.super Lcom/android/internal/util/State;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpManager;


# direct methods
.method constructor <init>(Landroid/net/ip/IpManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/ip/IpManager;

    .prologue
    .line 1037
    iput-object p1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1042
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    .line 1039
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 1048
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1062
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager;->-wrap5(Landroid/net/ip/IpManager;Landroid/os/Message;)V

    .line 1064
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1050
    :sswitch_0
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-set2(Landroid/net/ip/IpManager;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    .line 1051
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1055
    :sswitch_1
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v0}, Landroid/net/ip/IpManager;->-get5(Landroid/net/ip/IpManager;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient;->sendReleasePacket()Z

    .line 1058
    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    iget-object v1, p0, Landroid/net/ip/IpManager$StoppingState;->this$0:Landroid/net/ip/IpManager;

    invoke-static {v1}, Landroid/net/ip/IpManager;->-get16(Landroid/net/ip/IpManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/ip/IpManager;->-wrap12(Landroid/net/ip/IpManager;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1048
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0x30005 -> :sswitch_0
    .end sparse-switch
.end method
