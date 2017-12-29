.class public final Ljava/net/DatagramPacket;
.super Ljava/lang/Object;
.source "DatagramPacket.java"


# instance fields
.field address:Ljava/net/InetAddress;

.field buf:[B

.field bufLength:I

.field length:I

.field offset:I

.field port:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Ljava/net/DatagramPacket;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 93
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramPacket;->port:I

    .line 77
    return-void
.end method

.method public constructor <init>([BIILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 116
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 117
    invoke-virtual {p0, p5}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 114
    return-void
.end method

.method public constructor <init>([BIILjava/net/SocketAddress;)V
    .locals 0
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 139
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 137
    return-void
.end method

.method public constructor <init>([BILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    .prologue
    .line 156
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 155
    return-void
.end method

.method public constructor <init>([BILjava/net/SocketAddress;)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/SocketAddress;)V

    .line 173
    return-void
.end method

.method private static native init()V
.end method


# virtual methods
.method public declared-synchronized getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData()[B
    .locals 1

    .prologue
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Ljava/net/DatagramPacket;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 236
    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOffset()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 224
    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 199
    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    monitor-enter p0

    .line 336
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAddress(Ljava/net/InetAddress;)V
    .locals 1
    .param p1, "iaddr"    # Ljava/net/InetAddress;

    .prologue
    monitor-enter p0

    .line 279
    :try_start_0
    iput-object p1, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 278
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([B)V
    .locals 2
    .param p1, "buf"    # [B

    .prologue
    monitor-enter p0

    .line 354
    if-nez p1, :cond_0

    .line 355
    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null packet buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    :cond_0
    :try_start_1
    iput-object p1, p0, Ljava/net/DatagramPacket;->buf:[B

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I

    .line 359
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    .line 360
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->bufLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 353
    return-void
.end method

.method public declared-synchronized setData([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    monitor-enter p0

    .line 260
    if-ltz p3, :cond_0

    if-gez p2, :cond_1

    .line 263
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal length or offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 261
    :cond_1
    add-int v0, p3, p2

    if-ltz v0, :cond_0

    .line 262
    add-int v0, p3, p2

    :try_start_1
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 265
    iput-object p1, p0, Ljava/net/DatagramPacket;->buf:[B

    .line 266
    iput p3, p0, Ljava/net/DatagramPacket;->length:I

    .line 267
    iput p3, p0, Ljava/net/DatagramPacket;->bufLength:I

    .line 268
    iput p2, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 258
    return-void
.end method

.method public declared-synchronized setLength(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    monitor-enter p0

    .line 382
    :try_start_0
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Ljava/net/DatagramPacket;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    if-gez p1, :cond_1

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 383
    :cond_1
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    .line 386
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    .line 387
    iget v0, p0, Ljava/net/DatagramPacket;->length:I

    iput v0, p0, Ljava/net/DatagramPacket;->bufLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 381
    return-void
.end method

.method public declared-synchronized setPort(I)V
    .locals 3
    .param p1, "iport"    # I

    .prologue
    monitor-enter p0

    .line 300
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 301
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 303
    :cond_1
    :try_start_1
    iput p1, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 299
    return-void
.end method

.method public setReceivedLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 288
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    .line 287
    return-void
.end method

.method public declared-synchronized setSocketAddress(Ljava/net/SocketAddress;)V
    .locals 4
    .param p1, "address"    # Ljava/net/SocketAddress;

    .prologue
    monitor-enter p0

    .line 318
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_0

    .line 320
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 321
    .local v1, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unresolved address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "addr":Ljava/net/InetSocketAddress;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 319
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unsupported address type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    .restart local v1    # "addr":Ljava/net/InetSocketAddress;
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 324
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/net/DatagramPacket;->setPort(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 317
    return-void
.end method