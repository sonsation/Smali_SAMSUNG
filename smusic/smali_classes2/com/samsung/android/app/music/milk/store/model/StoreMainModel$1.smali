.class Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->requestStoreMainGroups()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;>;"
    const-string v2, "StoreMainModel"

    const-string/jumbo v3, "requestStoreMainGroups:call : in"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->loadCache()Ljava/util/List;

    move-result-object v1

    .line 124
    .local v1, "tempMainGroups":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 125
    const-string v2, "StoreMainModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestStoreMainGroups : Cached data is exist : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->access$000(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 130
    const-string v2, "StoreMainModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached group : size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v0    # "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->access$100(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;)V

    .line 136
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getMusicCategoryList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 152
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->access$100(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1$2;-><init>(Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$1;Lrx/Subscriber;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStoreMainPage(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 232
    return-void
.end method
