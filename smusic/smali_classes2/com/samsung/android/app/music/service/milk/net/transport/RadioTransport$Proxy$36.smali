.class Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;
.super Ljava/lang/Object;
.source "RadioTransport.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->addSmartStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
        "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

.field final synthetic val$adultYn:Ljava/lang/String;

.field final synthetic val$explicit:Ljava/lang/String;

.field final synthetic val$id:I

.field final synthetic val$queryMap:Ljava/util/Map;

.field final synthetic val$stationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

    .prologue
    .line 853
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$id:I

    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$queryMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$stationId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$adultYn:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$explicit:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 853
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 6
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->access$200()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$id:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;

    .line 857
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->access$100(Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$queryMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getShopBasicQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$stationId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$adultYn:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy$36;->val$explicit:Ljava/lang/String;

    .line 856
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->addSmartStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
