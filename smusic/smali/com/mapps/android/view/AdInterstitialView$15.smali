.class Lcom/mapps/android/view/AdInterstitialView$15;
.super Landroid/os/Handler;
.source "AdInterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->SendRequestInterstitial(IZ)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput p2, p0, Lcom/mapps/android/view/AdInterstitialView$15;->val$div:I

    iput-boolean p3, p0, Lcom/mapps/android/view/AdInterstitialView$15;->val$next:Z

    .line 488
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 491
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    new-instance v3, Lcom/mezzo/common/network/Nt;

    iget-object v4, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v4}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4, v5, v7, v6}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    invoke-static {v2, v3}, Lcom/mapps/android/view/AdInterstitialView;->access$27(Lcom/mapps/android/view/AdInterstitialView;Lcom/mezzo/common/network/Nt;)V

    .line 492
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$28(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/Nt;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$29(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 493
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 494
    .local v1, "sendMsg":Landroid/os/Message;
    iget v2, p0, Lcom/mapps/android/view/AdInterstitialView$15;->val$div:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 495
    iget-boolean v2, p0, Lcom/mapps/android/view/AdInterstitialView$15;->val$next:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 496
    new-instance v0, Lcom/mezzo/common/network/request/RequestInter;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/mezzo/common/network/request/RequestInter;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 497
    .local v0, "requestInter":Lcom/mezzo/common/network/request/RequestInter;
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$30(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mezzo/common/network/request/RequestInter;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 498
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$28(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mezzo/common/network/Nt;

    move-result-object v2

    new-array v3, v7, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 499
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 500
    return-void
.end method
