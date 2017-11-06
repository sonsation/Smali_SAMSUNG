.class Lcom/mapps/android/view/AdView$4;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/mezzo/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isConnection"    # Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;
    .param p3, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, -0x2bc

    .line 451
    sget-object v1, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v1, :cond_2

    .line 452
    invoke-virtual {p3}, Lcom/mezzo/common/network/request/RequestNTCommon;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataNTSSP;

    .line 453
    .local v0, "data":Lcom/mezzo/common/network/data/DataNTSSP;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataNTSSP;->getError_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1, v0}, Lcom/mapps/android/view/AdView;->access$4(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataNTSSP;)V

    .line 470
    .end local v0    # "data":Lcom/mezzo/common/network/data/DataNTSSP;
    :goto_0
    return-void

    .line 456
    .restart local v0    # "data":Lcom/mezzo/common/network/data/DataNTSSP;
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTBanner;->getError_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1, v3}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$7(Lcom/mapps/android/view/AdView;)V

    goto :goto_0

    .line 463
    .end local v0    # "data":Lcom/mezzo/common/network/data/DataNTSSP;
    :cond_2
    iget-object v1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTBanner;->getError_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 464
    iget-object v1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1, v3}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    .line 466
    :cond_3
    iget-object v1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$7(Lcom/mapps/android/view/AdView;)V

    goto :goto_0
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 447
    return-void
.end method
