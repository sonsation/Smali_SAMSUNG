.class Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;
.super Ljava/lang/Object;
.source "ExtraTransport.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->seedSearchAutoComplete(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

.field final synthetic val$adultYn:Ljava/lang/String;

.field final synthetic val$explicit:Ljava/lang/String;

.field final synthetic val$id:I

.field final synthetic val$keyword:Ljava/lang/String;

.field final synthetic val$queryMap:Ljava/util/Map;

.field final synthetic val$searchfilter:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$id:I

    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$queryMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$adultYn:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$explicit:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$searchfilter:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 7
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->access$100()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$id:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;

    .line 169
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->access$000(Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$queryMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getShopBasicQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$adultYn:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$explicit:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$searchfilter:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy$3;->val$keyword:Ljava/lang/String;

    .line 168
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->seedSearchAutoComplete(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
