.class public Ljava/net/InterfaceAddress;
.super Ljava/lang/Object;
.source "InterfaceAddress.java"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private broadcast:Ljava/net/Inet4Address;

.field private maskLength:S


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    .line 39
    iput-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    .line 40
    const/4 v0, 0x0

    iput-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    instance-of v1, p1, Ljava/net/InterfaceAddress;

    if-nez v1, :cond_0

    .line 103
    return v3

    :cond_0
    move-object v0, p1

    .line 105
    check-cast v0, Ljava/net/InterfaceAddress;

    .line 106
    .local v0, "cmp":Ljava/net/InterfaceAddress;
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v1, :cond_2

    iget-object v1, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    .line 107
    return v3

    :cond_1
    move v1, v3

    .line 106
    goto :goto_0

    :cond_2
    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    iget-object v4, v0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 108
    :cond_3
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    if-nez v1, :cond_5

    iget-object v1, v0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    if-nez v1, :cond_6

    .line 109
    return v3

    :cond_4
    move v1, v3

    .line 108
    goto :goto_1

    :cond_5
    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    iget-object v4, v0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    invoke-virtual {v1, v4}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 110
    :cond_6
    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    iget-short v4, v0, Ljava/net/InterfaceAddress;->maskLength:S

    if-eq v1, v4, :cond_7

    .line 111
    return v3

    .line 112
    :cond_7
    return v2
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getBroadcast()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getNetworkPrefixLength()S
    .locals 1

    .prologue
    .line 83
    iget-short v0, p0, Ljava/net/InterfaceAddress;->maskLength:S

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v1

    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    invoke-virtual {v0}, Ljava/net/Inet4Address;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InterfaceAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Ljava/net/InterfaceAddress;->maskLength:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/InterfaceAddress;->broadcast:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
