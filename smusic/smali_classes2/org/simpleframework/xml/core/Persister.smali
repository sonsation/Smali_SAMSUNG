.class public Lorg/simpleframework/xml/core/Persister;
.super Ljava/lang/Object;
.source "Persister.java"

# interfaces
.implements Lorg/simpleframework/xml/Serializer;


# instance fields
.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final manager:Lorg/simpleframework/xml/core/SessionManager;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "filter"    # Ljava/util/Map;

    .prologue
    .line 121
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/simpleframework/xml/filter/Filter;

    .prologue
    .line 147
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "filter"    # Lorg/simpleframework/xml/filter/Filter;

    .prologue
    .line 294
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "filter"    # Lorg/simpleframework/xml/filter/Filter;
    .param p3, "format"    # Lorg/simpleframework/xml/stream/Format;

    .prologue
    .line 312
    new-instance v0, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/EmptyMatcher;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "filter"    # Lorg/simpleframework/xml/filter/Filter;
    .param p3, "matcher"    # Lorg/simpleframework/xml/transform/Matcher;
    .param p4, "format"    # Lorg/simpleframework/xml/stream/Format;

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, p3, p4}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    .line 388
    new-instance v0, Lorg/simpleframework/xml/core/SessionManager;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SessionManager;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    .line 389
    iput-object p1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    .line 390
    iput-object p4, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    .line 391
    return-void
.end method

.method private read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "context"    # Lorg/simpleframework/xml/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 625
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    .locals 3
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "session"    # Lorg/simpleframework/xml/core/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Session;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, v1, v2, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Context;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p3, "context"    # Lorg/simpleframework/xml/core/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1180
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 1181
    return-void
.end method

.method private write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Session;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "root"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p3, "session"    # Lorg/simpleframework/xml/core/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1162
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, v1, v2, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Context;)V

    .line 1163
    return-void
.end method


# virtual methods
.method public read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/InputStream;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/io/InputStream;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;
    .locals 3
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 581
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 584
    .local v0, "session":Lorg/simpleframework/xml/core/Session;
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 586
    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v1
.end method

.method public write(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1259
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-static {p2, v0}, Lorg/simpleframework/xml/stream/NodeBuilder;->write(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 1260
    return-void
.end method

.method public write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "root"    # Lorg/simpleframework/xml/stream/OutputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1137
    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->open()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 1140
    .local v0, "session":Lorg/simpleframework/xml/core/Session;
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    .line 1144
    return-void

    .line 1142
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v1
.end method
