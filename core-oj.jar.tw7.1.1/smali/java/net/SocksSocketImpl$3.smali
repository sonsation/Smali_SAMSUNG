.class Ljava/net/SocksSocketImpl$3;
.super Ljava/lang/Object;
.source "SocksSocketImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/SocksSocketImpl;->bindV4(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/InetAddress;I)V
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
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/SocksSocketImpl;


# direct methods
.method constructor <init>(Ljava/net/SocksSocketImpl;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/SocksSocketImpl;

    .prologue
    .line 522
    iput-object p1, p0, Ljava/net/SocksSocketImpl$3;->this$0:Ljava/net/SocksSocketImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 523
    invoke-virtual {p0}, Ljava/net/SocksSocketImpl$3;->run()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Ljava/net/SocksSocketImpl$3;->this$0:Ljava/net/SocksSocketImpl;

    invoke-static {v0}, Ljava/net/SocksSocketImpl;->-get0(Ljava/net/SocksSocketImpl;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method