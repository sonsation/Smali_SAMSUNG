.class Lorg/simpleframework/xml/stream/PrefixResolver;
.super Ljava/util/LinkedHashMap;
.source "PrefixResolver.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/NamespaceMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lorg/simpleframework/xml/stream/NamespaceMap;"
    }
.end annotation


# instance fields
.field private final source:Lorg/simpleframework/xml/stream/OutputNode;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 0
    .param p1, "source"    # Lorg/simpleframework/xml/stream/OutputNode;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    .line 54
    return-void
.end method

.method private resolvePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v2, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    .line 182
    .local v0, "parent":Lorg/simpleframework/xml/stream/NamespaceMap;
    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/PrefixResolver;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    .end local v1    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resolveReference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v1, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    .line 164
    .local v0, "parent":Lorg/simpleframework/xml/stream/NamespaceMap;
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PrefixResolver;->source:Lorg/simpleframework/xml/stream/OutputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/OutputNode;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->size()I

    move-result v1

    .line 116
    .local v1, "size":I
    if-lez v1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 123
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->resolvePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getReference(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    .local v1, "reference":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/stream/PrefixResolver;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "reference":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->resolveReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PrefixResolver;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "reference"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/stream/PrefixResolver;->setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "reference"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/PrefixResolver;->resolvePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "parent":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/simpleframework/xml/stream/PrefixResolver;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method
