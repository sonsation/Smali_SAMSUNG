.class Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;
.super Ljava/lang/Object;
.source "StoreTransport.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->getPickDetail(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Boolean;",
        "Lrx/Observable",
        "<",
        "Lcom/samsung/android/app/music/common/model/PickDetail;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

.field final synthetic val$id:I

.field final synthetic val$pickId:Ljava/lang/String;

.field final synthetic val$queryMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;Ljava/lang/String;ILjava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    .prologue
    .line 983
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;->val$pickId:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;->val$id:I

    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;->val$queryMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 983
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 5
    .param p1, "init"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/PickDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->access$100()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;->val$pickId:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;->val$id:I

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    .line 987
    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->access$000(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$36;->val$queryMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getShopBasicQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 986
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getPickDetail(Ljava/lang/String;ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
