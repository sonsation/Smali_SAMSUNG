.class public Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;
.super Ljava/lang/Object;
.source "DownloadTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://www.samsung.com/"

.field private static transport:Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;->transport:Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    if-nez v0, :cond_0

    .line 46
    const-class v0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    const-string v1, "http://www.samsung.com/"

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/RetrofitGenerator;->create(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lokhttp3/logging/HttpLoggingInterceptor$Level;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;->transport:Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    .line 48
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;->transport:Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    return-object v0
.end method
