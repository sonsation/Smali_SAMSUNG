.class Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;
.super Ljava/lang/Object;
.source "ExtraTransport.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->createPersonalStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

.field final synthetic val$adultYn:Ljava/lang/String;

.field final synthetic val$artistId:Ljava/lang/String;

.field final synthetic val$artistName:Ljava/lang/String;

.field final synthetic val$deeplinkYn:Ljava/lang/String;

.field final synthetic val$explicit:Ljava/lang/String;

.field final synthetic val$id:I

.field final synthetic val$providerType:Ljava/lang/String;

.field final synthetic val$queryMap:Ljava/util/Map;

.field final synthetic val$seedType:Ljava/lang/String;

.field final synthetic val$trackId:Ljava/lang/String;

.field final synthetic val$trackTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$id:I

    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$queryMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$adultYn:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$explicit:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$providerType:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$seedType:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$artistId:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$artistName:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$trackId:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$trackTitle:Ljava/lang/String;

    iput-object p12, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$deeplinkYn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 185
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 12
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
    .line 188
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->access$100()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$id:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

    .line 189
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->access$000(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$queryMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getShopBasicQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$adultYn:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$explicit:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$providerType:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$seedType:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$artistId:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$artistName:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$trackId:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$trackTitle:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$4;->val$deeplinkYn:Ljava/lang/String;

    .line 188
    invoke-interface/range {v0 .. v11}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->createPersonalStation(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
