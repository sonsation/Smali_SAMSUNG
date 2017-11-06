.class Lorg/simpleframework/xml/core/Collector;
.super Ljava/lang/Object;
.source "Collector.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Criteria;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/Collector$1;,
        Lorg/simpleframework/xml/core/Collector$Registry;
    }
.end annotation


# instance fields
.field private final alias:Lorg/simpleframework/xml/core/Collector$Registry;

.field private final registry:Lorg/simpleframework/xml/core/Collector$Registry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/Collector$Registry;-><init>(Lorg/simpleframework/xml/core/Collector$1;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    .line 55
    new-instance v0, Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/Collector$Registry;-><init>(Lorg/simpleframework/xml/core/Collector$1;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    .line 56
    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/Object;)V
    .locals 6
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v5, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Collector$Registry;->values()Ljava/util/Collection;

    move-result-object v3

    .line 163
    .local v3, "set":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/simpleframework/xml/core/Variable;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Variable;

    .line 164
    .local v1, "entry":Lorg/simpleframework/xml/core/Variable;
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Variable;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 165
    .local v0, "contact":Lorg/simpleframework/xml/core/Contact;
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 167
    .local v4, "value":Ljava/lang/Object;
    invoke-interface {v0, p1, v4}, Lorg/simpleframework/xml/core/Contact;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    .end local v0    # "contact":Lorg/simpleframework/xml/core/Contact;
    .end local v1    # "entry":Lorg/simpleframework/xml/core/Variable;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Collector$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    return-object v0
.end method

.method public get(Lorg/simpleframework/xml/core/Label;)Lorg/simpleframework/xml/core/Variable;
    .locals 2
    .param p1, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Collector$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Variable;

    .line 88
    .end local v0    # "key":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Collector$Registry;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Collector$Registry;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Collector$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    return-object v0
.end method

.method public set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V
    .locals 8
    .param p1, "label"    # Lorg/simpleframework/xml/core/Label;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v6, Lorg/simpleframework/xml/core/Variable;

    invoke-direct {v6, p1, p2}, Lorg/simpleframework/xml/core/Variable;-><init>(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 141
    .local v6, "variable":Lorg/simpleframework/xml/core/Variable;
    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "paths":[Ljava/lang/String;
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 145
    .local v2, "key":Ljava/lang/Object;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 146
    .local v4, "path":Ljava/lang/String;
    iget-object v7, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v7, v4, v6}, Lorg/simpleframework/xml/core/Collector$Registry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v4    # "path":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v7, v2, v6}, Lorg/simpleframework/xml/core/Collector$Registry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "len$":I
    .end local v5    # "paths":[Ljava/lang/String;
    :cond_1
    return-void
.end method
