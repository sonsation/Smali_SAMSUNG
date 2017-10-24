.class public abstract Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;
.super Ljava/lang/Object;
.source "NTLMBaseMessage.java"


# static fields
.field protected static final NTLM_HEADER_BYTES:[B

.field private static final TAG:Ljava/lang/String; = "NTLMBaseMessage"


# instance fields
.field private flags:I

.field private messageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->NTLM_HEADER_BYTES:[B

    .line 12
    return-void

    .line 16
    :array_0
    .array-data 1
        0x4et
        0x54t
        0x4ct
        0x4dt
        0x53t
        0x53t
        0x50t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->messageType:I

    .line 18
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->flags:I

    .line 20
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "messageType"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->messageType:I

    .line 18
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->flags:I

    .line 27
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->messageType:I

    .line 26
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->messageType:I

    .line 18
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->flags:I

    .line 35
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->messageType:I

    .line 36
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->setFlags(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract createMessageString()Ljava/lang/String;
.end method

.method protected getFlags()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->flags:I

    return v0
.end method

.method protected getMessageType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->messageType:I

    return v0
.end method

.method protected isFlagSet(I)Z
    .locals 2
    .param p1, "flag"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->getFlags()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected abstract processMessageString(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected setFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 54
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->flags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->flags:I

    .line 53
    return-void
.end method

.method protected setThisFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .prologue
    .line 70
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->getFlags()I

    move-result v0

    or-int/2addr v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->setFlags(I)V

    .line 69
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/NTLMBaseMessage;->getFlags()I

    move-result v0

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method
