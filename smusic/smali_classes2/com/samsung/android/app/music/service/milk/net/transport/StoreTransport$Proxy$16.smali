.class Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;
.super Ljava/lang/Object;
.source "StoreTransport.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->redeemVoucher(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
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
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$cuTypeCode:Ljava/lang/String;

.field final synthetic val$id:I

.field final synthetic val$mcc:Ljava/lang/String;

.field final synthetic val$mnc:Ljava/lang/String;

.field final synthetic val$pricingTypeCode:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$queryMap:Ljava/util/Map;

.field final synthetic val$voucherCode:Ljava/lang/String;

.field final synthetic val$voucherId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$id:I

    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$queryMap:Ljava/util/Map;

    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$channelId:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$voucherId:I

    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$voucherCode:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$productId:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$pricingTypeCode:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$cuTypeCode:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$mcc:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$mnc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 707
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 11
    .param p1, "init"    # Ljava/lang/Boolean;
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
    .line 710
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->access$100()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$id:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->this$0:Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;

    .line 711
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->access$000(Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$queryMap:Ljava/util/Map;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getShopBasicQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$channelId:Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$voucherId:I

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$voucherCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$productId:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$pricingTypeCode:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$cuTypeCode:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$mcc:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy$16;->val$mnc:Ljava/lang/String;

    invoke-interface/range {v0 .. v10}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->redeemVoucher(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
