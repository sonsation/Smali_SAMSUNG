.class public Lorg/simpleframework/xml/util/ConcurrentCache;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "ConcurrentCache.java"

# interfaces
.implements Lorg/simpleframework/xml/util/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap",
        "<",
        "Ljava/lang/Object;",
        "TT;>;",
        "Lorg/simpleframework/xml/util/Cache",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lorg/simpleframework/xml/util/ConcurrentCache;, "Lorg/simpleframework/xml/util/ConcurrentCache<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public cache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/simpleframework/xml/util/ConcurrentCache;, "Lorg/simpleframework/xml/util/ConcurrentCache<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/util/ConcurrentCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 90
    .local p0, "this":Lorg/simpleframework/xml/util/ConcurrentCache;, "Lorg/simpleframework/xml/util/ConcurrentCache<TT;>;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/ConcurrentCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fetch(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/simpleframework/xml/util/ConcurrentCache;, "Lorg/simpleframework/xml/util/ConcurrentCache<TT;>;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/ConcurrentCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/simpleframework/xml/util/ConcurrentCache;, "Lorg/simpleframework/xml/util/ConcurrentCache<TT;>;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/ConcurrentCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
