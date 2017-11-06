.class Lcom/mapps/android/view/AdInterstitialView$13;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Lcom/mezzo/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->requestUseSSp(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$div:I

.field private final synthetic val$next:Z


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput p2, p0, Lcom/mapps/android/view/AdInterstitialView$13;->val$div:I

    iput-boolean p3, p0, Lcom/mapps/android/view/AdInterstitialView$13;->val$next:Z

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isConnection"    # Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;
    .param p3, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, -0x2bc

    .line 340
    sget-object v1, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v1, :cond_2

    .line 341
    invoke-virtual {p3}, Lcom/mezzo/common/network/request/RequestNTCommon;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataNTSSP;

    .line 342
    .local v0, "data":Lcom/mezzo/common/network/data/DataNTSSP;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataNTSSP;->getError_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget v2, p0, Lcom/mapps/android/view/AdInterstitialView$13;->val$div:I

    iget-boolean v3, p0, Lcom/mapps/android/view/AdInterstitialView$13;->val$next:Z

    invoke-static {v1, v0, v2, v3}, Lcom/mapps/android/view/AdInterstitialView;->access$23(Lcom/mapps/android/view/AdInterstitialView;Lcom/mezzo/common/network/data/DataNTSSP;IZ)V

    .line 358
    .end local v0    # "data":Lcom/mezzo/common/network/data/DataNTSSP;
    :goto_0
    return-void

    .line 345
    .restart local v0    # "data":Lcom/mezzo/common/network/data/DataNTSSP;
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$24(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/data/DataNTInterstitial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getError_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1, v3}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget v2, p0, Lcom/mapps/android/view/AdInterstitialView$13;->val$div:I

    iget-boolean v3, p0, Lcom/mapps/android/view/AdInterstitialView$13;->val$next:Z

    iget-object v4, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v4}, Lcom/mapps/android/view/AdInterstitialView;->access$24(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/data/DataNTInterstitial;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/mapps/android/view/AdInterstitialView;->access$12(Lcom/mapps/android/view/AdInterstitialView;IZLcom/mezzo/common/network/data/DataNTInterstitial;)V

    goto :goto_0

    .line 352
    .end local v0    # "data":Lcom/mezzo/common/network/data/DataNTSSP;
    :cond_2
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$24(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/data/DataNTInterstitial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTInterstitial;->getError_code()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1, v3}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget v2, p0, Lcom/mapps/android/view/AdInterstitialView$13;->val$div:I

    iget-boolean v3, p0, Lcom/mapps/android/view/AdInterstitialView$13;->val$next:Z

    iget-object v4, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v4}, Lcom/mapps/android/view/AdInterstitialView;->access$24(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/data/DataNTInterstitial;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/mapps/android/view/AdInterstitialView;->access$12(Lcom/mapps/android/view/AdInterstitialView;IZLcom/mezzo/common/network/data/DataNTInterstitial;)V

    goto :goto_0
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 336
    return-void
.end method
