.class Lcom/mapps/android/view/EndingAdView$5;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Lcom/mezzo/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/EndingAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isConnection"    # Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;
    .param p3, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, -0xc8

    .line 566
    sget-object v4, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v4, :cond_9

    .line 567
    invoke-virtual {p3}, Lcom/mezzo/common/network/request/RequestNTCommon;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mezzo/common/network/data/DataNTEnd;

    .line 568
    .local v1, "data":Lcom/mezzo/common/network/data/DataNTEnd;
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4, v1}, Lcom/mapps/android/view/EndingAdView;->access$6(Lcom/mapps/android/view/EndingAdView;Lcom/mezzo/common/network/data/DataNTEnd;)V

    .line 569
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getError_code()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getError_code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 570
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getError_code()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "errorCode":Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 574
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getUse_ssp()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, "usessp":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getAd_type()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "adType":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "4"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$7(Lcom/mapps/android/view/EndingAdView;)V

    .line 613
    .end local v0    # "adType":Ljava/lang/String;
    .end local v1    # "data":Lcom/mezzo/common/network/data/DataNTEnd;
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v3    # "usessp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 579
    .restart local v0    # "adType":Ljava/lang/String;
    .restart local v1    # "data":Lcom/mezzo/common/network/data/DataNTEnd;
    .restart local v2    # "errorCode":Ljava/lang/String;
    .restart local v3    # "usessp":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$8(Lcom/mapps/android/view/EndingAdView;)V

    goto :goto_0

    .line 586
    .end local v0    # "adType":Ljava/lang/String;
    .end local v3    # "usessp":Ljava/lang/String;
    :cond_2
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 587
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v5, -0x12c

    invoke-static {v4, v5}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 588
    :cond_3
    const-string v4, "2"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 589
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v5, -0x190

    invoke-static {v4, v5}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 590
    :cond_4
    const-string v4, "3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 591
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v5, -0x1f4

    invoke-static {v4, v5}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 592
    :cond_5
    const-string v4, "4"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 593
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v5, -0x258

    invoke-static {v4, v5}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 594
    :cond_6
    const-string v4, "5"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getUse_ssp()Ljava/lang/String;

    move-result-object v3

    .line 597
    .restart local v3    # "usessp":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 598
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$7(Lcom/mapps/android/view/EndingAdView;)V

    goto :goto_0

    .line 600
    :cond_7
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v5, -0x2bc

    invoke-static {v4, v5}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 608
    .end local v2    # "errorCode":Ljava/lang/String;
    .end local v3    # "usessp":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4, v5}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 611
    .end local v1    # "data":Lcom/mezzo/common/network/data/DataNTEnd;
    :cond_9
    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4, v5}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v1, -0x64

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    .line 561
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$5;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$5(Lcom/mapps/android/view/EndingAdView;I)V

    .line 562
    return-void
.end method
