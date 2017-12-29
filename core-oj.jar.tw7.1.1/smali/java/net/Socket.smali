.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private bound:Z

.field private closeLock:Ljava/lang/Object;

.field private closed:Z

.field private connected:Z

.field private created:Z

.field impl:Ljava/net/SocketImpl;

.field private oldImpl:Z

.field private shutIn:Z

.field private shutOut:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1615
    const/4 v0, 0x0

    sput-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    .line 87
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v0, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    .line 279
    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 278
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    invoke-direct {p0, v1, p2, v0, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 362
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/SocketAddress;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p2, v0, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 318
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    .line 317
    invoke-direct {p0, v0, p2, v1, v2}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 316
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    invoke-static {p1}, Ljava/net/Socket;->nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;

    move-result-object v0

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, v0, p2, v1, p3}, Ljava/net/Socket;-><init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V

    .line 403
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 6
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v5, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v5, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v5, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v5, p0, Ljava/net/Socket;->oldImpl:Z

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid Proxy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_0
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p1, v4, :cond_4

    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 124
    .local v2, "p":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v4

    sget-object v5, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v4, v5, :cond_6

    .line 125
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 126
    .local v3, "security":Ljava/lang/SecurityManager;
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 127
    .local v0, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    const-string v5, "Socket"

    invoke-direct {p0, v4, v5}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 130
    :cond_1
    if-eqz v3, :cond_3

    .line 131
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-direct {v1, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    move-object v0, v1

    .line 133
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 134
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 139
    :cond_3
    :goto_1
    new-instance v4, Ljava/net/SocksSocketImpl;

    invoke-direct {v4, v2}, Ljava/net/SocksSocketImpl;-><init>(Ljava/net/Proxy;)V

    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 140
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 118
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :goto_2
    return-void

    .line 123
    .end local v2    # "p":Ljava/net/Proxy;
    :cond_4
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    move-result-object v2

    goto :goto_0

    .line 136
    .restart local v0    # "epoint":Ljava/net/InetSocketAddress;
    .restart local v2    # "p":Ljava/net/Proxy;
    .restart local v3    # "security":Ljava/lang/SecurityManager;
    :cond_5
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    .line 136
    invoke-virtual {v3, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_1

    .line 142
    .end local v0    # "epoint":Ljava/net/InetSocketAddress;
    .end local v3    # "security":Ljava/lang/SecurityManager;
    :cond_6
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v2, v4, :cond_8

    .line 143
    sget-object v4, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-nez v4, :cond_7

    .line 144
    new-instance v4, Ljava/net/PlainSocketImpl;

    invoke-direct {v4}, Ljava/net/PlainSocketImpl;-><init>()V

    iput-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 145
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    goto :goto_2

    .line 147
    :cond_7
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    goto :goto_2

    .line 149
    :cond_8
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid Proxy"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .locals 2
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v1, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v1, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v1, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v1, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v1, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v1, p0, Ljava/net/Socket;->oldImpl:Z

    .line 165
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 166
    if-eqz p1, :cond_0

    .line 167
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 168
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 164
    :cond_0
    return-void
.end method

.method private constructor <init>([Ljava/net/InetAddress;ILjava/net/SocketAddress;Z)V
    .locals 7
    .param p1, "addresses"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddr"    # Ljava/net/SocketAddress;
    .param p4, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    .line 62
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 63
    iput-boolean v5, p0, Ljava/net/Socket;->connected:Z

    .line 64
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    .line 65
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    .line 66
    iput-boolean v5, p0, Ljava/net/Socket;->shutIn:Z

    .line 67
    iput-boolean v5, p0, Ljava/net/Socket;->shutOut:Z

    .line 77
    iput-boolean v5, p0, Ljava/net/Socket;->oldImpl:Z

    .line 419
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 420
    :cond_0
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Impossible: empty address list"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 423
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 424
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 426
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    aget-object v4, p1, v3

    invoke-direct {v0, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 427
    .local v0, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {p0, p4}, Ljava/net/Socket;->createImpl(Z)V

    .line 428
    if-eqz p3, :cond_2

    .line 429
    invoke-virtual {p0, p3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 431
    :cond_2
    invoke-virtual {p0, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :cond_3
    return-void

    .line 433
    :catch_0
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 439
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->closed:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 445
    :goto_1
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    .line 446
    throw v2

    .line 440
    :catch_1
    move-exception v1

    .line 441
    .local v1, "ce":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 451
    .end local v1    # "ce":Ljava/io/IOException;
    :cond_4
    iput-object v6, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 452
    iput-boolean v5, p0, Ljava/net/Socket;->created:Z

    .line 453
    iput-boolean v5, p0, Ljava/net/Socket;->bound:Z

    .line 454
    iput-boolean v5, p0, Ljava/net/Socket;->closed:Z

    .line 423
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "op"    # Ljava/lang/String;

    .prologue
    .line 658
    if-nez p1, :cond_0

    .line 659
    return-void

    .line 661
    :cond_0
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/Inet6Address;

    :goto_0
    if-nez v0, :cond_2

    .line 662
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": invalid address type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 657
    :cond_2
    return-void
.end method

.method private checkOldImpl()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v0, :cond_0

    .line 479
    return-void

    .line 484
    :cond_0
    new-instance v0, Ljava/net/Socket$1;

    invoke-direct {v0, p0}, Ljava/net/Socket$1;-><init>(Ljava/net/Socket;)V

    .line 483
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    .line 477
    return-void
.end method

.method private static nonNullAddress(Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 409
    if-nez p0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 412
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .locals 4
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-class v2, Ljava/net/Socket;

    monitor-enter v2

    .line 1644
    :try_start_0
    sget-object v1, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v1, :cond_0

    .line 1645
    new-instance v1, Ljava/net/SocketException;

    const-string v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1647
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 1648
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1

    .line 1649
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 1651
    :cond_1
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1642
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 639
    :cond_0
    iget-boolean v3, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 640
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Already bound"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 642
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_3

    :cond_2
    move-object v1, p1

    .line 644
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 645
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 646
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Unresolved address"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported address type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 647
    .restart local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_4
    if-nez v1, :cond_5

    .line 648
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "epoint":Ljava/net/InetSocketAddress;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 650
    .restart local v1    # "epoint":Ljava/net/InetSocketAddress;
    :cond_5
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 651
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 652
    .local v2, "port":I
    const-string v3, "bind"

    invoke-direct {p0, v0, v3}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 654
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/net/Socket;->bound:Z

    .line 636
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1459
    :try_start_0
    iget-object v1, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1460
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 1461
    return-void

    .line 1462
    :cond_0
    :try_start_3
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    if-eqz v0, :cond_1

    .line 1463
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    .line 1464
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->closed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 1458
    return-void

    .line 1459
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 553
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 7
    .param p1, "endpoint"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 575
    if-nez p1, :cond_0

    .line 576
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "connect: The address can\'t be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 578
    :cond_0
    if-gez p2, :cond_1

    .line 579
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "connect: timeout can\'t be negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 581
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 582
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Socket is closed"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 584
    :cond_2
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 585
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "already connected"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 587
    :cond_3
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_4

    .line 588
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported address type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-object v1, p1

    .line 590
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 591
    .local v1, "epoint":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 592
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 593
    .local v2, "port":I
    const-string v4, "connect"

    invoke-direct {p0, v0, v4}, Ljava/net/Socket;->checkAddress(Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 595
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 596
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_5

    .line 597
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 598
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 602
    :cond_5
    :goto_0
    iget-boolean v4, p0, Ljava/net/Socket;->created:Z

    if-nez v4, :cond_6

    .line 603
    invoke-virtual {p0, v6}, Ljava/net/Socket;->createImpl(Z)V

    .line 604
    :cond_6
    iget-boolean v4, p0, Ljava/net/Socket;->oldImpl:Z

    if-nez v4, :cond_8

    .line 605
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 613
    :goto_1
    iput-boolean v6, p0, Ljava/net/Socket;->connected:Z

    .line 618
    iput-boolean v6, p0, Ljava/net/Socket;->bound:Z

    .line 574
    return-void

    .line 600
    :cond_7
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_0

    .line 606
    :cond_8
    if-nez p2, :cond_a

    .line 607
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 608
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/net/SocketImpl;->connect(Ljava/lang/String;I)V

    goto :goto_1

    .line 610
    :cond_9
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, v2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    goto :goto_1

    .line 612
    :cond_a
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "SocketImpl.connect(addr, timeout)"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method createImpl(Z)V
    .locals 3
    .param p1, "stream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-nez v1, :cond_0

    .line 468
    invoke-virtual {p0}, Ljava/net/Socket;->setImpl()V

    .line 470
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v1, p1}, Ljava/net/SocketImpl;->create(Z)V

    .line 471
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/Socket;->created:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method getImpl()Ljava/net/SocketImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 535
    iget-boolean v0, p0, Ljava/net/Socket;->created:Z

    if-nez v0, :cond_0

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/Socket;->createImpl(Z)V

    .line 537
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 698
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    return-object v2

    .line 701
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 702
    :catch_0
    move-exception v0

    .line 704
    .local v0, "e":Ljava/net/SocketException;
    return-object v2
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 898
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 899
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 900
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Socket is not connected"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 901
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 902
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Socket input is shutdown"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 903
    :cond_2
    move-object v2, p0

    .line 904
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 907
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/net/Socket$2;

    invoke-direct {v3, p0}, Ljava/net/Socket$2;-><init>(Ljava/net/Socket;)V

    .line 906
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "is":Ljava/io/InputStream;
    check-cast v1, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    .local v1, "is":Ljava/io/InputStream;
    return-object v1

    .line 912
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3
.end method

.method public getKeepAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 7

    .prologue
    .line 717
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v5

    if-nez v5, :cond_0

    .line 718
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    return-object v5

    .line 719
    :cond_0
    const/4 v3, 0x0

    .line 721
    .local v3, "in":Ljava/net/InetAddress;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/InetAddress;

    move-object v3, v0

    .line 723
    .local v3, "in":Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/NetUtil;->doRevealLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 724
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    .line 725
    .local v4, "sm":Ljava/lang/SecurityManager;
    if-eqz v4, :cond_1

    .line 726
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 728
    .end local v4    # "sm":Ljava/lang/SecurityManager;
    :cond_1
    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 729
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 736
    :cond_2
    :goto_0
    return-object v3

    .line 733
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 734
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/net/InetAddress;->anyLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_0

    .line 731
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "in":Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 732
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v3

    .restart local v3    # "in":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 771
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    return v2

    .line 774
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getLocalPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 775
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/net/SocketException;
    return v2
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 825
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    const/4 v0, 0x0

    return-object v0

    .line 827
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1100
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 937
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 938
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 939
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 940
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Socket is not connected"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 941
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 942
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "Socket output is shutdown"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 943
    :cond_2
    move-object v2, p0

    .line 944
    .local v2, "s":Ljava/net/Socket;
    const/4 v1, 0x0

    .line 947
    .local v1, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/net/Socket$3;

    invoke-direct {v3, p0}, Ljava/net/Socket$3;-><init>(Ljava/net/Socket;)V

    .line 946
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "os":Ljava/io/OutputStream;
    check-cast v1, Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .local v1, "os":Ljava/io/OutputStream;
    return-object v1

    .line 952
    .end local v1    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    throw v3
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 750
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 751
    const/4 v1, 0x0

    return v1

    .line 753
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketImpl;->getPort()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 754
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/net/SocketException;
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1268
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1269
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1270
    :cond_0
    const/4 v1, 0x0

    .line 1271
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1272
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1273
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    .line 1275
    return v1
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 799
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    const/4 v0, 0x0

    return-object v0

    .line 801
    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1431
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1433
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1196
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1198
    :cond_0
    const/4 v1, 0x0

    .line 1199
    .local v1, "result":I
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1200
    .local v0, "o":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1201
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_1
    monitor-exit p0

    .line 1203
    return v1
.end method

.method public getSoLinger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1034
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1036
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1037
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1038
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1040
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1140
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1142
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 1144
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1145
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1147
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method public getTcpNoDelay()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 988
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1378
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 1574
    iget-boolean v0, p0, Ljava/net/Socket;->bound:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 1585
    iget-object v0, p0, Ljava/net/Socket;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1586
    :try_start_0
    iget-boolean v1, p0, Ljava/net/Socket;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1585
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 1557
    iget-boolean v0, p0, Ljava/net/Socket;->connected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljava/net/Socket;->oldImpl:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 1598
    iget-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 1609
    iget-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    return v0
.end method

.method final postAccept()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 670
    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 671
    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 672
    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 669
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .param p1, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1055
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->supportsUrgentData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Urgent data not supported"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 1054
    return-void
.end method

.method setBound()V
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->bound:Z

    .line 679
    return-void
.end method

.method setConnected()V
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->connected:Z

    .line 683
    return-void
.end method

.method setCreated()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->created:Z

    .line 675
    return-void
.end method

.method setImpl()V
    .locals 1

    .prologue
    .line 513
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_1

    .line 514
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 515
    invoke-direct {p0}, Ljava/net/Socket;->checkOldImpl()V

    .line 521
    :goto_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p0}, Ljava/net/SocketImpl;->setSocket(Ljava/net/Socket;)V

    .line 512
    :cond_0
    return-void

    .line 519
    :cond_1
    new-instance v0, Ljava/net/SocksSocketImpl;

    invoke-direct {v0}, Ljava/net/SocksSocketImpl;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    goto :goto_0
.end method

.method public setKeepAlive(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1288
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1290
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1287
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1085
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1087
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1084
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 1694
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1247
    if-gtz p1, :cond_0

    .line 1248
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid receive size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1250
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1252
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1002

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1246
    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1416
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1418
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1415
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1175
    if-gtz p1, :cond_0

    .line 1176
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative send size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1178
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1001

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1174
    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "linger"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 1007
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1009
    :cond_0
    if-nez p1, :cond_1

    .line 1010
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1006
    :goto_0
    return-void

    .line 1012
    :cond_1
    if-gez p2, :cond_2

    .line 1013
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid value for SO_LINGER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_2
    const v0, 0xffff

    if-le p2, v0, :cond_3

    .line 1016
    const p2, 0xffff

    .line 1017
    :cond_3
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1122
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1124
    :cond_0
    if-gez p1, :cond_1

    .line 1125
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1121
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 972
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 971
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 3
    .param p1, "tc"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1354
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 1355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tc is not in range 0 -- 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1358
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1359
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 1353
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1487
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1489
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1490
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1491
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1492
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1493
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 1494
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutIn:Z

    .line 1485
    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1517
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1520
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1521
    :cond_1
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1522
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is already shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_2
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 1524
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->shutOut:Z

    .line 1515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1535
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Socket[address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1537
    const-string v2, ",port="

    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1537
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getPort()I

    move-result v2

    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1538
    const-string v2, ",localPort="

    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1538
    invoke-virtual {p0}, Ljava/net/Socket;->getImpl()Ljava/net/SocketImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v2

    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1538
    const-string v2, "]"

    .line 1536
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1539
    :catch_0
    move-exception v0

    .line 1541
    :cond_0
    const-string v1, "Socket[unconnected]"

    return-object v1
.end method
