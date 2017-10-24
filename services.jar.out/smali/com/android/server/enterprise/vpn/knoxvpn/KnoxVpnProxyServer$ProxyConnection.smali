.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field private connection:Ljava/net/Socket;

.field server:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

.field private transferValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p2, "connection"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 654
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->transferValue:Ljava/lang/String;

    .line 652
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    .line 655
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    .line 656
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap7(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->transferValue:Ljava/lang/String;

    .line 654
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p2, "connection"    # Ljava/net/Socket;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    return-void
.end method

.method private filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 3
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap8(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->shouldRemoveHeaderLine(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 896
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 889
    return-void

    .line 894
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v1, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 864
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "rawPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, "rawQuery":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "rawFragment":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .local v0, "absolutePath":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_2

    .line 869
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    :goto_0
    if-eqz v3, :cond_0

    .line 874
    const-string/jumbo v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_0
    if-eqz v1, :cond_1

    .line 877
    const-string/jumbo v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 871
    :cond_2
    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 921
    if-nez p1, :cond_0

    .line 922
    const-string/jumbo v5, "KnoxVpnProxyServer"

    const-string/jumbo v6, "The PAC URL has not been downloaded yet, no proxy is applied"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 924
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    return-object v1

    .line 927
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_0
    const-string/jumbo v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 928
    .local v3, "split":[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 929
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v2, v3, v5

    .line 930
    .local v2, "s":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "s value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 932
    .local v4, "trimmed":Ljava/lang/String;
    const-string/jumbo v7, "DIRECT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 933
    sget-object v7, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 934
    :cond_3
    const-string/jumbo v7, "PROXY "

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 935
    sget-object v7, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string/jumbo v8, "PROXY "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 936
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_2

    .line 937
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 939
    .end local v0    # "proxy":Ljava/net/Proxy;
    :cond_4
    const-string/jumbo v7, "SOCKS "

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 940
    sget-object v7, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const-string/jumbo v8, "SOCKS "

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 941
    .restart local v0    # "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_2

    .line 942
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 946
    .end local v0    # "proxy":Ljava/net/Proxy;
    .end local v2    # "s":Ljava/lang/String;
    .end local v4    # "trimmed":Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 947
    const-string/jumbo v5, "KnoxVpnProxyServer"

    const-string/jumbo v6, "ret value is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_6
    return-object v1
.end method

.method private proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 10
    .param p1, "type"    # Ljava/net/Proxy$Type;
    .param p2, "hostPortString"    # Ljava/lang/String;

    .prologue
    .line 954
    const/4 v4, 0x0

    .line 956
    .local v4, "url":Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    .local v5, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .end local v4    # "url":Ljava/net/URL;
    move-result-object v2

    .line 958
    .local v2, "host":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "host value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 960
    .local v3, "port":I
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "port value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_1
    new-instance v7, Ljava/net/Proxy;

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v7

    .line 962
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 963
    .end local v4    # "url":Ljava/net/URL;
    .local v0, "e":Ljava/net/MalformedURLException;
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to parse proxy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 966
    .local v6, "urlBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "http://"

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    :try_start_2
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 970
    .restart local v5    # "url":Ljava/net/URL;
    :try_start_3
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 971
    .restart local v2    # "host":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updated host value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_3
    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 973
    .restart local v3    # "port":I
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updated host value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_4
    new-instance v7, Ljava/net/Proxy;

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v7

    .line 976
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "port":I
    .end local v5    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 977
    .local v1, "e1":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "KnoxVpnProxyServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to parse updated proxy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_5
    const/4 v7, 0x0

    return-object v7

    .line 976
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_2
    move-exception v1

    .restart local v1    # "e1":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "url":Ljava/net/URL;
    .local v4, "url":Ljava/net/URL;
    goto :goto_1

    .line 962
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v1    # "e1":Ljava/lang/Exception;
    .end local v4    # "url":Ljava/net/URL;
    .end local v6    # "urlBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/net/MalformedURLException;
    move-object v4, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    goto/16 :goto_0
.end method

.method private sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/net/URI;
    .param p5, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 825
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V

    .line 830
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    const-string/jumbo v1, "Connection: close"

    invoke-static {v0, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    const-string/jumbo v1, ""

    invoke-static {v0, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method private sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 5
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "requestType"    # Ljava/lang/String;
    .param p3, "absoluteUri"    # Ljava/net/URI;
    .param p4, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "absolutePath":Ljava/lang/String;
    const-string/jumbo v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 851
    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    .line 850
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 852
    .local v1, "outgoingRequestLine":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v2, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 847
    return-void
.end method

.method private shouldRemoveHeaderLine(Ljava/lang/String;)Z
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 906
    const-string/jumbo v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 907
    .local v6, "colIndex":I
    const/4 v3, -0x1

    if-eq v6, v3, :cond_1

    .line 908
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "headerName":Ljava/lang/String;
    const-string/jumbo v3, "connection"

    .line 910
    const-string/jumbo v4, "connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    .line 909
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 911
    const-string/jumbo v3, "proxy-connection"

    .line 912
    const-string/jumbo v4, "proxy-connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    .line 911
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    .line 909
    if-eqz v3, :cond_1

    .line 913
    :cond_0
    return v1

    .line 916
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_1
    return v2
.end method


# virtual methods
.method public run()V
    .locals 36

    .prologue
    .line 661
    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, v13, v5

    .line 663
    .local v13, "credentialAppendedHeader":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting request thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap8(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v27

    .line 665
    .local v27, "requestLine":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting request thread for the request line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_0
    if-nez v27, :cond_1

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 668
    return-void

    .line 670
    :cond_1
    :try_start_1
    const-string/jumbo v4, " "

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 671
    .local v29, "splitLine":[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v4, v0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 673
    return-void

    .line 675
    :cond_2
    const/16 v32, 0x0

    .line 676
    .local v32, "urlStringForAuth":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    aget-object v7, v29, v4

    .line 677
    .local v7, "requestType":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v31, v29, v4

    .line 678
    .local v31, "urlString":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v9, v29, v4

    .line 680
    .local v9, "httpVersion":Ljava/lang/String;
    const-string/jumbo v16, ""

    .line 681
    .local v16, "host":Ljava/lang/String;
    const/16 v21, 0x50

    .line 682
    .local v21, "port":I
    const/4 v8, 0x0

    .line 684
    .local v8, "url":Ljava/net/URI;
    const-string/jumbo v4, "CONNECT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 685
    const-string/jumbo v4, ":"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 686
    .local v17, "hostPortSplit":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v16, v17, v4

    .line 687
    move-object/from16 v0, v17

    array-length v4, v0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_7

    .line 688
    const/16 v21, 0x1bb

    .line 697
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 713
    .end local v8    # "url":Ljava/net/URI;
    .end local v17    # "hostPortSplit":[Ljava/lang/String;
    .local v32, "urlStringForAuth":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap2(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get2(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->makeProxyRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 714
    .local v24, "proxyAddress":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The url is going to be proxied through  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "for the profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get2(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->parseResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 716
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "proxy$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/net/Proxy;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 718
    .local v22, "proxy":Ljava/net/Proxy;
    :try_start_3
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 719
    invoke-virtual/range {v22 .. v22}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v18

    check-cast v18, Ljava/net/InetSocketAddress;

    .line 720
    .local v18, "inetSocketAddress":Ljava/net/InetSocketAddress;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ": isAuthenticationRequired being sent with = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v25

    .line 722
    .local v25, "proxyHostName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->transferValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 723
    .local v26, "randomCacheKey":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v4, 0x0

    aput-object v32, v28, v4

    const/4 v4, 0x1

    aput-object v9, v28, v4

    .line 724
    .local v28, "requestString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-static {v4, v0, v5, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap3(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;

    move-result-object v10

    .line 725
    .local v10, "authRequiredStatus":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ": isAuthenticationRequired = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_6
    iget v4, v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;->returnValue:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_a

    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    const-string/jumbo v34, "AUTHENTICATION_DETECTION_FAILED"

    move-object/from16 v0, v34

    invoke-static {v4, v5, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap14(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 728
    return-void

    .line 691
    .end local v10    # "authRequiredStatus":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;
    .end local v18    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v22    # "proxy":Ljava/net/Proxy;
    .end local v23    # "proxy$iterator":Ljava/util/Iterator;
    .end local v24    # "proxyAddress":Ljava/lang/String;
    .end local v25    # "proxyHostName":Ljava/lang/String;
    .end local v26    # "randomCacheKey":Ljava/lang/String;
    .end local v28    # "requestString":[Ljava/lang/String;
    .restart local v8    # "url":Ljava/net/URI;
    .restart local v17    # "hostPortSplit":[Ljava/lang/String;
    .local v32, "urlStringForAuth":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x1

    :try_start_4
    aget-object v4, v17, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v21

    goto/16 :goto_0

    .line 692
    :catch_0
    move-exception v20

    .line 693
    .local v20, "nfe":Ljava/lang/NumberFormatException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 694
    return-void

    .line 701
    .end local v17    # "hostPortSplit":[Ljava/lang/String;
    .end local v20    # "nfe":Ljava/lang/NumberFormatException;
    :cond_8
    :try_start_6
    new-instance v30, Ljava/net/URI;

    invoke-direct/range {v30 .. v31}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 702
    .end local v8    # "url":Ljava/net/URI;
    .local v30, "url":Ljava/net/URI;
    :try_start_7
    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v16

    .line 703
    invoke-virtual/range {v30 .. v30}, Ljava/net/URI;->getPort()I
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v21

    .line 704
    if-gez v21, :cond_9

    .line 705
    const/16 v21, 0x50

    .line 707
    :cond_9
    move-object/from16 v32, v31

    .local v32, "urlStringForAuth":Ljava/lang/String;
    move-object/from16 v8, v30

    .end local v30    # "url":Ljava/net/URI;
    .local v8, "url":Ljava/net/URI;
    goto/16 :goto_1

    .line 708
    .local v8, "url":Ljava/net/URI;
    .local v32, "urlStringForAuth":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 709
    .end local v8    # "url":Ljava/net/URI;
    .local v15, "e":Ljava/net/URISyntaxException;
    :goto_2
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 710
    return-void

    .line 729
    .end local v15    # "e":Ljava/net/URISyntaxException;
    .restart local v10    # "authRequiredStatus":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;
    .restart local v18    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v22    # "proxy":Ljava/net/Proxy;
    .restart local v23    # "proxy$iterator":Ljava/util/Iterator;
    .restart local v24    # "proxyAddress":Ljava/lang/String;
    .restart local v25    # "proxyHostName":Ljava/lang/String;
    .restart local v26    # "randomCacheKey":Ljava/lang/String;
    .restart local v28    # "requestString":[Ljava/lang/String;
    .local v32, "urlStringForAuth":Ljava/lang/String;
    :cond_a
    :try_start_9
    iget v4, v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;->returnValue:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap0(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    const-string/jumbo v34, "locked keyguard"

    move-object/from16 v0, v34

    invoke-static {v4, v5, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap14(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 732
    return-void

    .line 734
    :cond_b
    :try_start_a
    new-instance v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {v11, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    .line 735
    .local v11, "builder":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v11, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->sourceSocket(Ljava/net/Socket;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 736
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->requestLine(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 737
    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->urlStringForAuth(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 738
    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->httpVersion(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 739
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->hostName(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 740
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->port(I)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 741
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->build()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    move-result-object v12

    .line 742
    .local v12, "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap11(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ": isAuthenticationRequired Into in AUTHENTICATION_IN_PROGRESS_FROM_STATE cache =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 805
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 744
    return-void

    .line 745
    .end local v11    # "builder":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    .end local v12    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :cond_d
    :try_start_b
    iget v4, v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;->returnValue:I

    if-nez v4, :cond_10

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap0(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    const-string/jumbo v34, "locked keyguard"

    move-object/from16 v0, v34

    invoke-static {v4, v5, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap14(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 748
    return-void

    .line 750
    :cond_e
    :try_start_c
    new-instance v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {v11, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V

    .line 751
    .restart local v11    # "builder":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v11, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->sourceSocket(Ljava/net/Socket;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 752
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->requestLine(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 753
    move-object/from16 v0, v32

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->urlStringForAuth(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 754
    invoke-virtual {v11, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->httpVersion(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 755
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->hostName(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 756
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->port(I)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .line 757
    invoke-virtual {v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->build()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    move-result-object v12

    .line 758
    .restart local v12    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap11(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 760
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ": isAuthenticationRequired Into in AUTHENTICATION_IN_PROGRESS_FROM_RESPONSE cache =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 805
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 761
    return-void

    .line 762
    .end local v11    # "builder":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    .end local v12    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :cond_10
    :try_start_d
    iget v4, v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;->returnValue:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 763
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get0()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ": isAuthenticationRequired Adding for =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_11
    iget-object v4, v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;->serverSocket:Ljava/net/Socket;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    .line 765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap9(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    move-object/from16 v0, v28

    invoke-interface {v4, v5, v6, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 767
    if-eqz v13, :cond_12

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    const/4 v6, 0x1

    aget-object v6, v13, v6

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 775
    :cond_12
    :goto_3
    const/4 v10, 0x0

    .line 795
    .end local v10    # "authRequiredStatus":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;
    .end local v18    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v25    # "proxyHostName":Ljava/lang/String;
    .end local v26    # "randomCacheKey":Ljava/lang/String;
    .end local v28    # "requestString":[Ljava/lang/String;
    :goto_4
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    if-eqz v4, :cond_4

    .line 799
    .end local v22    # "proxy":Ljava/net/Proxy;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 800
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    if-eqz v13, :cond_19

    const/4 v4, 0x0

    aget-object v4, v13, v4

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get1(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-static {v5, v6, v4, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 805
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 660
    .end local v7    # "requestType":Ljava/lang/String;
    .end local v9    # "httpVersion":Ljava/lang/String;
    .end local v16    # "host":Ljava/lang/String;
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v21    # "port":I
    .end local v23    # "proxy$iterator":Ljava/util/Iterator;
    .end local v24    # "proxyAddress":Ljava/lang/String;
    .end local v27    # "requestLine":Ljava/lang/String;
    .end local v29    # "splitLine":[Ljava/lang/String;
    .end local v31    # "urlString":Ljava/lang/String;
    .end local v32    # "urlStringForAuth":Ljava/lang/String;
    :goto_6
    return-void

    .line 771
    .restart local v7    # "requestType":Ljava/lang/String;
    .restart local v9    # "httpVersion":Ljava/lang/String;
    .restart local v10    # "authRequiredStatus":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;
    .restart local v16    # "host":Ljava/lang/String;
    .restart local v18    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v21    # "port":I
    .restart local v22    # "proxy":Ljava/net/Proxy;
    .restart local v23    # "proxy$iterator":Ljava/util/Iterator;
    .restart local v24    # "proxyAddress":Ljava/lang/String;
    .restart local v25    # "proxyHostName":Ljava/lang/String;
    .restart local v26    # "randomCacheKey":Ljava/lang/String;
    .restart local v27    # "requestLine":Ljava/lang/String;
    .restart local v28    # "requestString":[Ljava/lang/String;
    .restart local v29    # "splitLine":[Ljava/lang/String;
    .restart local v31    # "urlString":Ljava/lang/String;
    .restart local v32    # "urlStringForAuth":Ljava/lang/String;
    :cond_15
    :try_start_f
    const-string/jumbo v4, "KnoxVpnProxyServer"

    const-string/jumbo v5, "Authentication NOT Required."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v4, v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;->serverSocket:Ljava/net/Socket;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    move-object/from16 v0, v27

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_3

    .line 791
    .end local v10    # "authRequiredStatus":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationRequestReturnStatus;
    .end local v18    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v25    # "proxyHostName":Ljava/lang/String;
    .end local v26    # "randomCacheKey":Ljava/lang/String;
    .end local v28    # "requestString":[Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 792
    .local v14, "e":Ljava/lang/Exception;
    :try_start_10
    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception occured while applying the proxy type for the url for the profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get2(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_4

    .line 802
    .end local v7    # "requestType":Ljava/lang/String;
    .end local v9    # "httpVersion":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "host":Ljava/lang/String;
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v21    # "port":I
    .end local v22    # "proxy":Ljava/net/Proxy;
    .end local v23    # "proxy$iterator":Ljava/util/Iterator;
    .end local v24    # "proxyAddress":Ljava/lang/String;
    .end local v27    # "requestLine":Ljava/lang/String;
    .end local v29    # "splitLine":[Ljava/lang/String;
    .end local v31    # "urlString":Ljava/lang/String;
    .end local v32    # "urlStringForAuth":Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 803
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_11
    const-string/jumbo v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception occured while running the ProxyConnection for the profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get2(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    goto/16 :goto_6

    .line 777
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v7    # "requestType":Ljava/lang/String;
    .restart local v9    # "httpVersion":Ljava/lang/String;
    .restart local v16    # "host":Ljava/lang/String;
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v21    # "port":I
    .restart local v22    # "proxy":Ljava/net/Proxy;
    .restart local v23    # "proxy$iterator":Ljava/util/Iterator;
    .restart local v24    # "proxyAddress":Ljava/lang/String;
    .restart local v27    # "requestLine":Ljava/lang/String;
    .restart local v29    # "splitLine":[Ljava/lang/String;
    .restart local v31    # "urlString":Ljava/lang/String;
    .restart local v32    # "urlStringForAuth":Ljava/lang/String;
    :cond_16
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap5(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-get2(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v33

    .line 778
    .local v33, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v33, :cond_4

    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap10(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    if-eqz v4, :cond_4

    .line 783
    const-string/jumbo v4, "CONNECT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 784
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap8(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_17

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    const-string/jumbo v6, "HTTP/1.1 200 OK\n"

    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap17(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_4

    .line 804
    .end local v7    # "requestType":Ljava/lang/String;
    .end local v9    # "httpVersion":Ljava/lang/String;
    .end local v16    # "host":Ljava/lang/String;
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v21    # "port":I
    .end local v22    # "proxy":Ljava/net/Proxy;
    .end local v23    # "proxy$iterator":Ljava/util/Iterator;
    .end local v24    # "proxyAddress":Ljava/lang/String;
    .end local v27    # "requestLine":Ljava/lang/String;
    .end local v29    # "splitLine":[Ljava/lang/String;
    .end local v31    # "urlString":Ljava/lang/String;
    .end local v32    # "urlStringForAuth":Ljava/lang/String;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catchall_0
    move-exception v4

    .line 805
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-static {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->-wrap16(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 804
    throw v4

    .line 787
    .restart local v7    # "requestType":Ljava/lang/String;
    .restart local v9    # "httpVersion":Ljava/lang/String;
    .restart local v16    # "host":Ljava/lang/String;
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v21    # "port":I
    .restart local v22    # "proxy":Ljava/net/Proxy;
    .restart local v23    # "proxy$iterator":Ljava/util/Iterator;
    .restart local v24    # "proxyAddress":Ljava/lang/String;
    .restart local v27    # "requestLine":Ljava/lang/String;
    .restart local v29    # "splitLine":[Ljava/lang/String;
    .restart local v31    # "urlString":Ljava/lang/String;
    .restart local v32    # "urlStringForAuth":Ljava/lang/String;
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_18
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_4

    .line 800
    .end local v22    # "proxy":Ljava/net/Proxy;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 708
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v23    # "proxy$iterator":Ljava/util/Iterator;
    .end local v24    # "proxyAddress":Ljava/lang/String;
    .restart local v30    # "url":Ljava/net/URI;
    .local v32, "urlStringForAuth":Ljava/lang/String;
    :catch_4
    move-exception v15

    .restart local v15    # "e":Ljava/net/URISyntaxException;
    move-object/from16 v8, v30

    .end local v30    # "url":Ljava/net/URI;
    .local v8, "url":Ljava/net/URI;
    goto/16 :goto_2
.end method
