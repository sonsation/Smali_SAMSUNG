.class Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;->this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 708
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 713
    packed-switch p2, :pswitch_data_0

    .line 740
    :goto_0
    return-void

    .line 715
    :pswitch_0
    if-nez p3, :cond_1

    move-object v1, p4

    .line 716
    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    .line 718
    .local v1, "model":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v0, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;->this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->access$200(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 720
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 721
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    .line 722
    const-string v3, "StoreMainModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestTopNewUpdate:onApiHandled : Group size:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 724
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Group type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 725
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getGroupType()Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;

    move-result-object v2

    .line 726
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/StoreMainConstant$StoreMainGroupType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 728
    :cond_0
    const-string v2, "StoreMainModel"

    const-string/jumbo v3, "requestTopNewUpdate : ResponseModel is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;->val$subscriber:Lrx/Subscriber;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "ResponseModel is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 734
    .end local v0    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    .end local v1    # "model":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$6$1;->val$subscriber:Lrx/Subscriber;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "ResponseModel is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x2777
        :pswitch_0
    .end packed-switch
.end method
