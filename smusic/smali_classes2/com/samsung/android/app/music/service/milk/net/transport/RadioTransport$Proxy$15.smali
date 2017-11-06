.class Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;
.super Ljava/lang/Object;
.source "RadioTransport.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->updateFavStation(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;)Lrx/Observable;
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
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

.field final synthetic val$id:I

.field final synthetic val$queryMap:Ljava/util/Map;

.field final synthetic val$updateStationList:Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;->val$id:I

    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;->val$queryMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;->val$updateStationList:Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 537
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 4
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->access$200()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;->val$id:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

    .line 541
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->access$100(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;->val$queryMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getShopBasicQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$15;->val$updateStationList:Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;

    .line 540
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->updateFavStation(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
