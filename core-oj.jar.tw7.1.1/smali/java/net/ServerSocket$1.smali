.class Ljava/net/ServerSocket$1;
.super Ljava/lang/Object;
.source "ServerSocket.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/ServerSocket;->checkOldImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(Ljava/net/ServerSocket;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/ServerSocket;

    .prologue
    .line 269
    iput-object p1, p0, Ljava/net/ServerSocket$1;->this$0:Ljava/net/ServerSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Ljava/net/ServerSocket$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 271
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Class;

    .line 272
    .local v0, "cl":[Ljava/lang/Class;
    const-class v1, Ljava/net/SocketAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 273
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 274
    iget-object v1, p0, Ljava/net/ServerSocket$1;->this$0:Ljava/net/ServerSocket;

    invoke-static {v1}, Ljava/net/ServerSocket;->-get0(Ljava/net/ServerSocket;)Ljava/net/SocketImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "connect"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 275
    const/4 v1, 0x0

    return-object v1
.end method