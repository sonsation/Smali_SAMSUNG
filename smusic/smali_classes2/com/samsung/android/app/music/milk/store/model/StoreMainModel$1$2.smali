.class Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 156
    const-string v0, "StoreMainModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestStoreMainGroups:onApiCalled : reqType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, -0x1

    .line 164
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const-string v4, "StoreMainModel"

    const-string/jumbo v5, "requestStoreMainGroups:onApiHandled : subscriber is already unsubscribed"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v4, "StoreMainModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestStoreMainGroups:onApiHandled : reqType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 177
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 179
    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    move-object v2, p4

    .line 181
    check-cast v2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    .line 184
    .local v2, "model":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-static {v4, v2, v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->access$200(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;Ljava/util/List;)Z

    .line 187
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 192
    const-string v4, "StoreMainModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response group : size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v4, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 195
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v4}, Lrx/Subscriber;->onCompleted()V

    .line 197
    const-string v4, "StoreMainModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestStoreMainGroups:onApiHandled : Group size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 199
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    const-string v4, "StoreMainModel"

    const-string/jumbo v5, "requestStoreMainGroups : ResponseModel is null"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->val$subscriber:Lrx/Subscriber;

    new-instance v5, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;

    iget-object v6, v6, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    const-string v7, "ResponseModel is null"

    invoke-direct {v5, v6, v8, v8, v7}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 213
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    .end local v2    # "model":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    :pswitch_3
    const/4 v1, -0x1

    .line 214
    .local v1, "errorCode":I
    if-eqz p4, :cond_2

    instance-of v4, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v4, :cond_2

    move-object v3, p4

    .line 216
    check-cast v3, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .line 219
    .local v3, "responseModel":Lcom/samsung/android/app/music/common/model/ResponseModel;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 222
    .end local v3    # "responseModel":Lcom/samsung/android/app/music/common/model/ResponseModel;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->val$subscriber:Lrx/Subscriber;

    new-instance v5, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;->this$1:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;

    iget-object v6, v6, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    const/4 v7, 0x0

    invoke-direct {v5, v6, p3, v1, v7}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$StoreException;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x2776
        :pswitch_0
    .end packed-switch

    .line 177
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
