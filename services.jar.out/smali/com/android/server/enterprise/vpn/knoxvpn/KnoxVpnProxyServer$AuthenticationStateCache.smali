.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthenticationStateCache"
.end annotation


# instance fields
.field hostName:Ljava/lang/String;

.field httpVersion:Ljava/lang/String;

.field port:I

.field requestLine:Ljava/lang/String;

.field sourceSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

.field urlStringForAuth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p2, "build"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;

    .prologue
    const/4 v0, 0x0

    .line 1202
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1147
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->sourceSocket:Ljava/net/Socket;

    .line 1148
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->requestLine:Ljava/lang/String;

    .line 1149
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->urlStringForAuth:Ljava/lang/String;

    .line 1150
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->httpVersion:Ljava/lang/String;

    .line 1151
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->hostName:Ljava/lang/String;

    .line 1203
    iget-object v0, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->sourceSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->sourceSocket:Ljava/net/Socket;

    .line 1204
    iget-object v0, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->requestLine:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->requestLine:Ljava/lang/String;

    .line 1205
    iget-object v0, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->urlStringForAuth:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->urlStringForAuth:Ljava/lang/String;

    .line 1206
    iget-object v0, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->httpVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->httpVersion:Ljava/lang/String;

    .line 1207
    iget-object v0, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->hostName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->hostName:Ljava/lang/String;

    .line 1208
    iget v0, p2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->port:I

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->port:I

    .line 1202
    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1191
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->port:I

    return v0
.end method

.method public getRequestLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->requestLine:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->sourceSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public getUrlStringForAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->urlStringForAuth:Ljava/lang/String;

    return-object v0
.end method
