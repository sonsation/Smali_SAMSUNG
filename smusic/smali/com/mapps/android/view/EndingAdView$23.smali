.class Lcom/mapps/android/view/EndingAdView$23;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 882
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    .line 883
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MZUtils;->isOnline(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 884
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/data/DataNTEnd;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 885
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/data/DataNTEnd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataListEndAD;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$9(Lcom/mapps/android/view/EndingAdView;)Lcom/mezzo/common/network/data/DataNTEnd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTEnd;->getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mezzo/common/network/data/DataListEndAD;->get(I)Lcom/mezzo/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataIEndAD;

    .line 887
    .local v0, "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataIEndAD;->getLanding_url()Ljava/lang/String;

    move-result-object v1

    .line 888
    .local v1, "strURL":Ljava/lang/String;
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2, v5}, Lcom/mapps/android/view/EndingAdView;->access$34(Lcom/mapps/android/view/EndingAdView;Z)V

    .line 889
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2, v4}, Lcom/mapps/android/view/EndingAdView;->playSoundEffect(I)V

    .line 890
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$23;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2, v1}, Lcom/mapps/android/view/EndingAdView;->access$36(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V

    .line 894
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    .end local v1    # "strURL":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView$23;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
