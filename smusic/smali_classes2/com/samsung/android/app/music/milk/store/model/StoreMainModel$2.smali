.class Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$2;
.super Ljava/lang/Object;
.source "StoreMainModel.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
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
    .line 235
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$2;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 235
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$2;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "storeMainGroups":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    const-string v0, "StoreMainModel"

    const-string/jumbo v1, "requestStoreMainGroups:doOnNext : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel$2;->this$0:Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/model/StoreMainModel;->saveCache(Ljava/util/List;)V

    .line 243
    return-void
.end method
