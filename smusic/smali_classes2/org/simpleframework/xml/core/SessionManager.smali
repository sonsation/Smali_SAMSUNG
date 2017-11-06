.class Lorg/simpleframework/xml/core/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/SessionManager$Reference;
    }
.end annotation


# instance fields
.field private local:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/simpleframework/xml/core/SessionManager$Reference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    .line 51
    return-void
.end method

.method private create(Z)Lorg/simpleframework/xml/core/Session;
    .locals 2
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/SessionManager$Reference;-><init>(Z)V

    .line 98
    .local v0, "session":Lorg/simpleframework/xml/core/SessionManager$Reference;
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 101
    :cond_0
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager$Reference;->get()Lorg/simpleframework/xml/core/Session;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v2, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/SessionManager$Reference;

    .line 114
    .local v1, "session":Lorg/simpleframework/xml/core/SessionManager$Reference;
    if-nez v1, :cond_0

    .line 115
    new-instance v2, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v3, "Session does not exist"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 117
    :cond_0
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager$Reference;->clear()I

    move-result v0

    .line 119
    .local v0, "reference":I
    if-nez v0, :cond_1

    .line 120
    iget-object v2, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    .line 122
    :cond_1
    return-void
.end method

.method public open()Lorg/simpleframework/xml/core/Session;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    return-object v0
.end method

.method public open(Z)Lorg/simpleframework/xml/core/Session;
    .locals 2
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    .line 80
    .local v0, "session":Lorg/simpleframework/xml/core/SessionManager$Reference;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager$Reference;->get()Lorg/simpleframework/xml/core/Session;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SessionManager;->create(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v1

    goto :goto_0
.end method
