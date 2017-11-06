.class public Lorg/simpleframework/xml/util/LimitedCache;
.super Ljava/util/LinkedHashMap;
.source "LimitedCache.java"

# interfaces
.implements Lorg/simpleframework/xml/util/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Object;",
        "TT;>;",
        "Lorg/simpleframework/xml/util/Cache",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final capacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lorg/simpleframework/xml/util/LimitedCache;, "Lorg/simpleframework/xml/util/LimitedCache<TT;>;"
    const v0, 0xc350

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/util/LimitedCache;-><init>(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 57
    .local p0, "this":Lorg/simpleframework/xml/util/LimitedCache;, "Lorg/simpleframework/xml/util/LimitedCache<TT;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 58
    iput p1, p0, Lorg/simpleframework/xml/util/LimitedCache;->capacity:I

    .line 59
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
    .line 71
    .local p0, "this":Lorg/simpleframework/xml/util/LimitedCache;, "Lorg/simpleframework/xml/util/LimitedCache<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/util/LimitedCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 110
    .local p0, "this":Lorg/simpleframework/xml/util/LimitedCache;, "Lorg/simpleframework/xml/util/LimitedCache<TT;>;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/LimitedCache;->containsKey(Ljava/lang/Object;)Z

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
    .line 97
    .local p0, "this":Lorg/simpleframework/xml/util/LimitedCache;, "Lorg/simpleframework/xml/util/LimitedCache<TT;>;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/LimitedCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lorg/simpleframework/xml/util/LimitedCache;, "Lorg/simpleframework/xml/util/LimitedCache<TT;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;TT;>;"
    invoke-virtual {p0}, Lorg/simpleframework/xml/util/LimitedCache;->size()I

    move-result v0

    iget v1, p0, Lorg/simpleframework/xml/util/LimitedCache;->capacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 84
    .local p0, "this":Lorg/simpleframework/xml/util/LimitedCache;, "Lorg/simpleframework/xml/util/LimitedCache<TT;>;"
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/LimitedCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
