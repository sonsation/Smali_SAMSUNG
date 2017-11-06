.class Lorg/simpleframework/xml/core/Function;
.super Ljava/lang/Object;
.source "Function.java"


# instance fields
.field private final contextual:Z

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Z)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "contextual"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p2, p0, Lorg/simpleframework/xml/core/Function;->contextual:Z

    .line 65
    iput-object p1, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    .line 66
    return-void
.end method


# virtual methods
.method public call(Lorg/simpleframework/xml/core/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 79
    if-eqz p2, :cond_1

    .line 80
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->getSession()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 81
    .local v0, "session":Lorg/simpleframework/xml/core/Session;
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Session;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 83
    .local v1, "table":Ljava/util/Map;
    iget-boolean v2, p0, Lorg/simpleframework/xml/core/Function;->contextual:Z

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 88
    .end local v0    # "session":Lorg/simpleframework/xml/core/Session;
    .end local v1    # "table":Ljava/util/Map;
    :goto_0
    return-object v2

    .line 86
    .restart local v0    # "session":Lorg/simpleframework/xml/core/Session;
    .restart local v1    # "table":Ljava/util/Map;
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/Function;->method:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 88
    .end local v0    # "session":Lorg/simpleframework/xml/core/Session;
    .end local v1    # "table":Ljava/util/Map;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
