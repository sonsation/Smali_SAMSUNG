.class Ljava/net/Socket$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/Socket;->checkOldImpl()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/Socket;

    .prologue
    .line 484
    iput-object p1, p0, Ljava/net/Socket$1;->this$0:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 486
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Class;

    .line 487
    .local v0, "cl":[Ljava/lang/Class;
    const-class v3, Ljava/net/SocketAddress;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 488
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 489
    iget-object v3, p0, Ljava/net/Socket$1;->this$0:Ljava/net/Socket;

    iget-object v3, v3, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v3}, Ljava/net/SocketImpl;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 492
    .local v1, "clazz":Ljava/lang/Class;
    :cond_0
    :try_start_0
    const-string v3, "connect"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 493
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 494
    :catch_0
    move-exception v2

    .line 495
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 499
    const-class v3, Ljava/net/SocketImpl;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Ljava/net/Socket$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
