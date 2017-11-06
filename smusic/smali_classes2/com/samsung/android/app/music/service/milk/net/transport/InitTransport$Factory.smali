.class public Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport$Factory;
.super Ljava/lang/Object;
.source "InitTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static milkApiInitService:Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport$Factory;->milkApiInitService:Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;

    if-nez v2, :cond_0

    .line 39
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    .line 40
    .local v0, "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    const-string/jumbo v2, "startclient"

    const-string v3, "http://api.glb.samsungmilkradio.com/"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "url":Ljava/lang/String;
    const-class v2, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;

    invoke-static {p0, v2, v1}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->create(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;

    sput-object v2, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport$Factory;->milkApiInitService:Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;

    .line 46
    .end local v0    # "properties":Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport$Factory;->milkApiInitService:Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;

    return-object v2
.end method
