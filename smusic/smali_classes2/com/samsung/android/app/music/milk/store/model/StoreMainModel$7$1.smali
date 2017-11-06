.class Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7$1;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7$1;->this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 756
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 761
    packed-switch p2, :pswitch_data_0

    .line 782
    :goto_0
    return-void

    .line 763
    :pswitch_0
    if-nez p3, :cond_1

    move-object v1, p4

    .line 764
    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    .line 767
    .local v1, "model":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v0, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7$1;->this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->access$200(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 769
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 770
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 772
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7$1;->val$subscriber:Lrx/Subscriber;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "ResponseModel is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 776
    .end local v0    # "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    .end local v1    # "model":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$7$1;->val$subscriber:Lrx/Subscriber;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "ResponseModel is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x2778
        :pswitch_0
    .end packed-switch
.end method
