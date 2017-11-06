.class Lcom/mapps/android/view/AdView$8;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    .line 1002
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1005
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mezzo/common/network/data/DataNTSSP;

    .line 1006
    .local v1, "data":Lcom/mezzo/common/network/data/DataNTSSP;
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getCode_type()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1007
    .local v0, "codetype":I
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 1008
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1009
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1010
    .local v2, "message":Landroid/os/Message;
    const-string v3, "5Ssp_imp"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1011
    iget-object v3, p0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/mapps/android/view/AdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 1014
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1015
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1016
    .restart local v2    # "message":Landroid/os/Message;
    const-string v3, "Dsp_imp"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1017
    iget-object v3, p0, Lcom/mapps/android/view/AdView$8;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_imp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/mapps/android/view/AdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 1020
    .end local v2    # "message":Landroid/os/Message;
    :cond_1
    return-void
.end method
