.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader$UrlConnectionFactory;
.super Ljava/lang/Object;
.source "ServiceNetworkLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UrlConnectionFactory"
.end annotation


# virtual methods
.method public abstract getUrlConnection(Landroid/net/Uri;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
