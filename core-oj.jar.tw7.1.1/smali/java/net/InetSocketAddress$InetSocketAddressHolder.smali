.class Ljava/net/InetSocketAddress$InetSocketAddressHolder;
.super Ljava/lang/Object;
.source "InetSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InetSocketAddressHolder"
.end annotation


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private hostname:Ljava/lang/String;

.field private port:I


# direct methods
.method static synthetic -get0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic -get1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I
    .locals 1

    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    return v0
.end method

.method static synthetic -wrap0(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Z
    .locals 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->isUnresolved()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I
    .locals 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getPort()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;
    .locals 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;I)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    .line 68
    iput p3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress$InetSocketAddressHolder;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    return-void
.end method

.method private getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method private getHostName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_1
    return-object v1
.end method

.method private getHostString()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_1
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_2
    return-object v1
.end method

.method private getPort()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    return v0
.end method

.method private isUnresolved()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 114
    if-eqz p1, :cond_1

    instance-of v3, p1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 116
    check-cast v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 118
    .local v1, "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    iget-object v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v3, :cond_2

    .line 119
    iget-object v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    iget-object v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    :goto_0
    if-eqz v0, :cond_0

    iget v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    iget v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 115
    .end local v1    # "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    :cond_1
    return v2

    .line 120
    .restart local v1    # "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    :cond_2
    iget-object v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 121
    iget-object v3, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-nez v3, :cond_3

    .line 122
    iget-object v3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .local v0, "sameIP":Z
    goto :goto_0

    .line 121
    .end local v0    # "sameIP":Z
    :cond_3
    const/4 v0, 0x0

    .local v0, "sameIP":Z
    goto :goto_0

    .line 124
    .end local v0    # "sameIP":Z
    :cond_4
    iget-object v3, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-nez v3, :cond_5

    iget-object v3, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-nez v3, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "sameIP":Z
    goto :goto_0

    .end local v0    # "sameIP":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "sameIP":Z
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    add-int/2addr v0, v1

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    add-int/2addr v0, v1

    return v0

    .line 134
    :cond_1
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
