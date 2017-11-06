.class Lcom/mapps/android/view/AdView$9;
.super Landroid/os/Handler;
.source "AdView.java"


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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    .line 1109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mezzo/common/network/data/DataNTBanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/data/DataListBannerAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataBannerAD;

    .line 1114
    .local v0, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getBg_color()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getBg_color()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1115
    iget-object v1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataBannerAD;->getBg_color()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$12(Lcom/mapps/android/view/AdView;I)V

    .line 1120
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    :cond_0
    :goto_0
    return-void

    .line 1117
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdView;->access$12(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0
.end method
