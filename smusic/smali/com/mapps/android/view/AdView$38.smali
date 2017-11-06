.class Lcom/mapps/android/view/AdView$38;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/mezzo/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->SendImpsToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$ad:Lcom/mezzo/common/network/data/DataBannerAD;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataBannerAD;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$38;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$38;->val$ad:Lcom/mezzo/common/network/data/DataBannerAD;

    .line 1502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isConnection"    # Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;
    .param p3, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 1512
    sget-object v0, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v0, :cond_0

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendapi --> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/AdView$38;->val$ad:Lcom/mezzo/common/network/data/DataBannerAD;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataBannerAD;->getImpression_api()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \ubdf0 \ub9ac\ud3ec\ud2b8 \uc804\uc1a1 \uc131\uacf5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 1517
    :goto_0
    return-void

    .line 1515
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendapi --> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mapps/android/view/AdView$38;->val$ad:Lcom/mezzo/common/network/data/DataBannerAD;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataBannerAD;->getImpression_api()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \ubdf0 \ub9ac\ud3ec\ud2b8 \uc804\uc1a1 \uc2e4\ud328"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 1508
    return-void
.end method
