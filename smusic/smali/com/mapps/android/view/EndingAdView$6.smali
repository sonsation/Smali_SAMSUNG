.class Lcom/mapps/android/view/EndingAdView$6;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$6;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 786
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$6;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/data/DataNTEnd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataListEndAD;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$6;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/data/DataNTEnd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/data/DataListEndAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataIEndAD;

    .line 788
    .local v0, "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$6;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getPars_filename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mapps/android/view/EndingAdView;->access$10(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    .line 790
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    :cond_0
    return-void
.end method
