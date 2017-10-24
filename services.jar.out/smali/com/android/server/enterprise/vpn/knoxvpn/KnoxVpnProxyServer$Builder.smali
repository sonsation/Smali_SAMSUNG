.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Builder"
.end annotation


# instance fields
.field public hostName:Ljava/lang/String;

.field public httpVersion:Ljava/lang/String;

.field public port:I

.field public requestLine:Ljava/lang/String;

.field public sourceSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

.field public urlStringForAuth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    const/4 v0, 0x0

    .line 1221
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->sourceSocket:Ljava/net/Socket;

    .line 1215
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->requestLine:Ljava/lang/String;

    .line 1216
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->urlStringForAuth:Ljava/lang/String;

    .line 1217
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->httpVersion:Ljava/lang/String;

    .line 1218
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->hostName:Ljava/lang/String;

    .line 1221
    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    .locals 2

    .prologue
    .line 1255
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {v0, v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;)V

    return-object v0
.end method

.method public hostName(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    .locals 0
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    .line 1245
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->hostName:Ljava/lang/String;

    .line 1246
    return-object p0
.end method

.method public httpVersion(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    .locals 0
    .param p1, "httpVersion"    # Ljava/lang/String;

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->httpVersion:Ljava/lang/String;

    .line 1241
    return-object p0
.end method

.method public port(I)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 1250
    iput p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->port:I

    .line 1251
    return-object p0
.end method

.method public requestLine(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    .locals 0
    .param p1, "requestLine"    # Ljava/lang/String;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->requestLine:Ljava/lang/String;

    .line 1231
    return-object p0
.end method

.method public sourceSocket(Ljava/net/Socket;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    .locals 0
    .param p1, "sourceSocket"    # Ljava/net/Socket;

    .prologue
    .line 1225
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->sourceSocket:Ljava/net/Socket;

    .line 1226
    return-object p0
.end method

.method public urlStringForAuth(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;
    .locals 0
    .param p1, "urlStringForAuth"    # Ljava/lang/String;

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$Builder;->urlStringForAuth:Ljava/lang/String;

    .line 1236
    return-object p0
.end method
