.class Lsun/net/spi/DefaultProxySelector$1;
.super Ljava/lang/Object;
.source "DefaultProxySelector.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/spi/DefaultProxySelector;->select(Ljava/net/URI;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/Proxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/spi/DefaultProxySelector;

.field final synthetic val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

.field final synthetic val$proto:Ljava/lang/String;

.field final synthetic val$urlhost:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;Lsun/net/spi/DefaultProxySelector$NonProxyInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/spi/DefaultProxySelector;
    .param p2, "val$proto"    # Ljava/lang/String;
    .param p3, "val$nprop"    # Lsun/net/spi/DefaultProxySelector$NonProxyInfo;
    .param p4, "val$urlhost"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    iput-object p2, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    iput-object p3, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object p4, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lsun/net/spi/DefaultProxySelector$1;->run()Ljava/net/Proxy;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/Proxy;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 193
    const/4 v5, 0x0

    .line 194
    .local v5, "phost":Ljava/lang/String;
    const/4 v7, 0x0

    .line 195
    .local v7, "pport":I
    const/4 v4, 0x0

    .line 196
    .local v4, "nphosts":Ljava/lang/String;
    const/4 v8, 0x0

    .line 199
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    array-length v11, v11

    if-ge v1, v11, :cond_11

    .line 200
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    aget-object v11, v11, v14

    iget-object v12, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 201
    const/4 v2, 0x1

    .end local v5    # "phost":Ljava/lang/String;
    .local v2, "j":I
    :goto_1
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    if-ge v2, v11, :cond_0

    .line 206
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v12, v12, v1

    aget-object v12, v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Host"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "phost":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    .line 210
    .end local v5    # "phost":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_3

    .line 218
    :cond_1
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v11

    .line 201
    .restart local v5    # "phost":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 222
    .end local v5    # "phost":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    if-eqz v11, :cond_a

    .line 223
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->property:Ljava/lang/String;

    invoke-static {v11}, Lsun/net/NetProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "nphosts":Ljava/lang/String;
    iget-object v12, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    monitor-enter v12

    .line 225
    if-nez v4, :cond_8

    .line 226
    :try_start_0
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    if-eqz v11, :cond_7

    .line 227
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v4, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->defaultVal:Ljava/lang/String;

    .line 239
    :cond_4
    :goto_2
    if-eqz v4, :cond_6

    .line 240
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 241
    new-instance v6, Lsun/misc/RegexpPool;

    invoke-direct {v6}, Lsun/misc/RegexpPool;-><init>()V

    .line 242
    .local v6, "pool":Lsun/misc/RegexpPool;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v11, "|"

    const/4 v13, 0x0

    invoke-direct {v9, v4, v11, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .local v9, "st":Ljava/util/StringTokenizer;
    :goto_3
    :try_start_1
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 245
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v11, v13}, Lsun/misc/RegexpPool;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lsun/misc/REException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 247
    :catch_0
    move-exception v0

    .line 249
    :cond_5
    :try_start_2
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object v6, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    .line 250
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iput-object v4, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    .line 253
    .end local v6    # "pool":Lsun/misc/RegexpPool;
    .end local v9    # "st":Ljava/util/StringTokenizer;
    :cond_6
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    if-eqz v11, :cond_9

    .line 254
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    iget-object v11, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;

    iget-object v13, p0, Lsun/net/spi/DefaultProxySelector$1;->val$urlhost:Ljava/lang/String;

    invoke-virtual {v11, v13}, Lsun/misc/RegexpPool;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 255
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v12

    return-object v11

    .line 229
    :cond_7
    :try_start_3
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const/4 v13, 0x0

    iput-object v13, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsSource:Ljava/lang/String;

    .line 230
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->val$nprop:Lsun/net/spi/DefaultProxySelector$NonProxyInfo;

    const/4 v13, 0x0

    iput-object v13, v11, Lsun/net/spi/DefaultProxySelector$NonProxyInfo;->hostsPool:Lsun/misc/RegexpPool;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 224
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 232
    :cond_8
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_4

    .line 236
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "|localhost|127.*|[::1]|0.0.0.0|[::0]"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_2

    :cond_9
    monitor-exit v12

    .line 261
    .end local v4    # "nphosts":Ljava/lang/String;
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v12, v12, v1

    aget-object v12, v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Port"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 262
    if-nez v7, :cond_c

    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_c

    .line 266
    const/4 v3, 0x1

    .local v3, "k":I
    :goto_4
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_c

    .line 267
    if-eq v3, v2, :cond_b

    if-nez v7, :cond_b

    .line 268
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v12, v12, v1

    aget-object v12, v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Port"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 266
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 273
    .end local v3    # "k":I
    :cond_c
    if-nez v7, :cond_d

    .line 274
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ne v2, v11, :cond_e

    .line 275
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    const-string v12, "socket"

    invoke-static {v11, v12}, Lsun/net/spi/DefaultProxySelector;->-wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    move-result v7

    .line 282
    :cond_d
    :goto_5
    invoke-static {v5, v7}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v8

    .line 284
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    sget-object v11, Lsun/net/spi/DefaultProxySelector;->props:[[Ljava/lang/String;

    aget-object v11, v11, v1

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ne v2, v11, :cond_f

    .line 285
    const-string v11, "socksProxyVersion"

    const/4 v12, 0x5

    invoke-static {v11, v12}, Lsun/net/NetProperties;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 286
    .local v10, "version":I
    invoke-static {v8, v10}, Lsun/net/SocksProxy;->create(Ljava/net/SocketAddress;I)Lsun/net/SocksProxy;

    move-result-object v11

    return-object v11

    .line 277
    .end local v10    # "version":I
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    :cond_e
    iget-object v11, p0, Lsun/net/spi/DefaultProxySelector$1;->this$0:Lsun/net/spi/DefaultProxySelector;

    iget-object v12, p0, Lsun/net/spi/DefaultProxySelector$1;->val$proto:Ljava/lang/String;

    invoke-static {v11, v12}, Lsun/net/spi/DefaultProxySelector;->-wrap0(Lsun/net/spi/DefaultProxySelector;Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 288
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    :cond_f
    new-instance v11, Ljava/net/Proxy;

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v11, v12, v8}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v11

    .line 199
    .end local v2    # "j":I
    .local v4, "nphosts":Ljava/lang/String;
    .local v5, "phost":Ljava/lang/String;
    .local v8, "saddr":Ljava/net/InetSocketAddress;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 292
    :cond_11
    sget-object v11, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object v11
.end method