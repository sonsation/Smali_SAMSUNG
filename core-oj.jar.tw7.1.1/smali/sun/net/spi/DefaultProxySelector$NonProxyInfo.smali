.class Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
.super Ljava/lang/Object;
.source "DefaultProxySelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/spi/DefaultProxySelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonProxyInfo"
.end annotation


# static fields
.field static final defStringVal:Ljava/lang/String; = "localhost|127.*|[::1]|0.0.0.0|[::0]"

.field static ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field static httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;


# instance fields
.field final defaultVal:Ljava/lang/String;

.field hostsPool:Lsun/misc/RegexpPool;

.field hostsSource:Ljava/lang/String;

.field final property:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string v1, "ftp.nonProxyHosts"

    const-string v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/misc/RegexpPool;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->ftpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 108
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string v1, "http.nonProxyHosts"

    const-string v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/misc/RegexpPool;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 109
    new-instance v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const-string v1, "https.nonProxyHosts"

    const-string v2, "localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-direct {v0, v1, v3, v3, v2}, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/misc/RegexpPool;Ljava/lang/String;)V

    sput-object v0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->httpsNonProxyInfo:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    .line 98
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lsun/misc/RegexpPool;Ljava/lang/String;)V
    .locals 0
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "pool"    # Lsun/misc/RegexpPool;
    .param p4, "d"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->property:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    .line 115
    iput-object p4, p0, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    .line 111
    return-void
.end method