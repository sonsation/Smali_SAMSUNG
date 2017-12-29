.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;
.super Landroid/os/Handler;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 333
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 334
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 336
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    if-eqz v1, :cond_0

    .line 337
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    .line 338
    .local v0, "hostLightingInfo":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;
    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v3

    .line 340
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 338
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->-wrap1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    goto :goto_0

    .line 344
    .end local v0    # "hostLightingInfo":Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 345
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v1, v3}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->-wrap2(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;I)V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-static {v2, v1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
