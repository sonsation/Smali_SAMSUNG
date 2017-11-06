.class Lcom/mapps/android/view/AdView$21;
.super Landroid/os/Handler;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->requestNotSSp()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$21;->this$0:Lcom/mapps/android/view/AdView;

    .line 388
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 391
    iget-object v1, p0, Lcom/mapps/android/view/AdView$21;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result v1

    if-nez v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/mapps/android/view/AdView$21;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$72(Lcom/mapps/android/view/AdView;)V

    .line 401
    :cond_0
    :goto_0
    const-string v1, "n"

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$74(Ljava/lang/String;)V

    .line 402
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 403
    return-void

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdView$21;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/mapps/android/view/AdView$21;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 396
    .local v0, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getImg_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getImg_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/mapps/android/view/AdView$21;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1, v0}, Lcom/mapps/android/view/AdView;->access$73(Lcom/mapps/android/view/AdView;Lcom/mezzo/common/network/data/DataBannerAD;)V

    goto :goto_0
.end method
