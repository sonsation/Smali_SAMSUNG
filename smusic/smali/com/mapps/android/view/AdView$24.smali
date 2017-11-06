.class Lcom/mapps/android/view/AdView$24;
.super Landroid/os/Handler;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->SendRequest(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$24;->this$0:Lcom/mapps/android/view/AdView;

    .line 515
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 518
    iget-object v1, p0, Lcom/mapps/android/view/AdView$24;->this$0:Lcom/mapps/android/view/AdView;

    new-instance v2, Lcom/mezzo/common/network/Nt;

    iget-object v3, p0, Lcom/mapps/android/view/AdView$24;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v3}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, v3, v4, v5, v5}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$75(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/Nt;)V

    .line 519
    iget-object v1, p0, Lcom/mapps/android/view/AdView$24;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$76(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/Nt;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$24;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$77(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 520
    new-instance v0, Lcom/mezzo/common/network/request/RequestBanner;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$24;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mezzo/common/network/request/RequestBanner;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 521
    .local v0, "banner":Lcom/mezzo/common/network/request/RequestBanner;
    iget-object v1, p0, Lcom/mapps/android/view/AdView$24;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$84(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/request/OnConnectionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/request/RequestBanner;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 522
    iget-object v1, p0, Lcom/mapps/android/view/AdView$24;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$76(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/Nt;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 523
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 524
    return-void
.end method
