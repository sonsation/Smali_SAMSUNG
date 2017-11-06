.class Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;
.super Ljava/lang/Object;
.source "StoreTransport.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->getDownloadableDeivces(ILjava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
        "Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$id:I

.field final synthetic val$uniqueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;->val$id:I

    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;->val$uniqueId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;->val$accessToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1161
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;->call(Ljava/lang/Boolean;)Lrx/Observable;

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
            "Lcom/samsung/android/app/music/common/model/milksetting/DownloadDeviceListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->access$100()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;->val$id:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;->val$uniqueId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$48;->val$accessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getDownloadableDeivces(ILjava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
