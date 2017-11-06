.class Lcom/mapps/android/view/AdInterstitialView$5;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Lcom/mezzo/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdInterstitialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isConnection"    # Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;
    .param p3, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, -0xc8

    .line 429
    iget v2, p4, Landroid/os/Message;->arg1:I

    .line 430
    .local v2, "div":I
    iget-object v7, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 431
    .local v5, "next":Z
    sget-object v7, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v7, :cond_a

    .line 432
    invoke-virtual {p3}, Lcom/mezzo/common/network/request/RequestNTCommon;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mezzo/common/network/data/DataNTInterstitial;

    .line 433
    .local v1, "data":Lcom/mezzo/common/network/data/DataNTInterstitial;
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v7, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$6(Lcom/mapps/android/view/AdInterstitialView;Lcom/mezzo/common/network/data/DataNTInterstitial;)V

    .line 434
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getError_code()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getError_code()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 435
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getError_code()Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "errorCode":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 437
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getListInterAD()Lcom/mezzo/common/network/data/DataListInterAD;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mezzo/common/network/data/DataListInterAD;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getListInterAD()Lcom/mezzo/common/network/data/DataListInterAD;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/mezzo/common/network/data/DataListInterAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v4

    check-cast v4, Lcom/mezzo/common/network/data/DataInterAD;

    .line 439
    .local v4, "interAD":Lcom/mezzo/common/network/data/DataInterAD;
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataInterAD;->getImg_path()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$7(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V

    .line 440
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataInterAD;->getClick_option()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$8(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V

    .line 441
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataInterAD;->getClick_action_type()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$9(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V

    .line 442
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataInterAD;->getClick_api()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$10(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;)V

    .line 445
    .end local v4    # "interAD":Lcom/mezzo/common/network/data/DataInterAD;
    :cond_0
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getUse_ssp()Ljava/lang/String;

    move-result-object v6

    .line 446
    .local v6, "usessp":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getAd_type()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "adType":Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "4"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 448
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v7, v2, v5}, Lcom/mapps/android/view/AdInterstitialView;->access$11(Lcom/mapps/android/view/AdInterstitialView;IZ)V

    .line 484
    .end local v0    # "adType":Ljava/lang/String;
    .end local v1    # "data":Lcom/mezzo/common/network/data/DataNTInterstitial;
    .end local v3    # "errorCode":Ljava/lang/String;
    .end local v6    # "usessp":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 450
    .restart local v0    # "adType":Ljava/lang/String;
    .restart local v1    # "data":Lcom/mezzo/common/network/data/DataNTInterstitial;
    .restart local v3    # "errorCode":Ljava/lang/String;
    .restart local v6    # "usessp":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v7, v2, v5, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$12(Lcom/mapps/android/view/AdInterstitialView;IZLcom/mezzo/common/network/data/DataNTInterstitial;)V

    goto :goto_0

    .line 457
    .end local v0    # "adType":Ljava/lang/String;
    .end local v6    # "usessp":Ljava/lang/String;
    :cond_3
    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 458
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v8, -0x12c

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 459
    :cond_4
    const-string v7, "2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 460
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v8, -0x190

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 461
    :cond_5
    const-string v7, "3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 462
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v8, -0x1f4

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 463
    :cond_6
    const-string v7, "4"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 464
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v8, -0x258

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 465
    :cond_7
    const-string v7, "5"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 467
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getUse_ssp()Ljava/lang/String;

    move-result-object v6

    .line 468
    .restart local v6    # "usessp":Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 469
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v7, v2, v5}, Lcom/mapps/android/view/AdInterstitialView;->access$11(Lcom/mapps/android/view/AdInterstitialView;IZ)V

    goto :goto_0

    .line 471
    :cond_8
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v8, -0x2bc

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 479
    .end local v3    # "errorCode":Ljava/lang/String;
    .end local v6    # "usessp":Ljava/lang/String;
    :cond_9
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 482
    .end local v1    # "data":Lcom/mezzo/common/network/data/DataNTInterstitial;
    :cond_a
    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v7, v8}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$5;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v1, -0x64

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    .line 425
    return-void
.end method
