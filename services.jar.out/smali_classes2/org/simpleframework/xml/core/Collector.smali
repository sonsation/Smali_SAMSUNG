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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Collector$Registry;->values()Ljava/util/Collection;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    return-void

    .line 163
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    .line 164
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Variable;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    .line 165
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 167
    invoke-interface {v2, p1, v0}, Lorg/simpleframework/xml/core/Contact;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Variable;
    .locals 1

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 88
    return-object v0

    .line 84
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Collector$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    return-object v0
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

    .prologue
    .line 101
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Collector$Registry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Variable;

    return-object v0
.end method

.method public set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v1, Lorg/simpleframework/xml/core/Variable;

    invoke-direct {v1, p1, p2}, Lorg/simpleframework/xml/core/Variable;-><init>(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 141
    if-nez p1, :cond_0

    .line 150
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 145
    array-length v4, v2

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v4, :cond_1

    .line 148
    iget-object v0, p0, Lorg/simpleframework/xml/core/Collector;->registry:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v0, v3, v1}, Lorg/simpleframework/xml/core/Collector$Registry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_1
    aget-object v5, v2, v0

    .line 146
    iget-object v6, p0, Lorg/simpleframework/xml/core/Collector;->alias:Lorg/simpleframework/xml/core/Collector$Registry;

    invoke-virtual {v6, v5, v1}, Lorg/simpleframework/xml/core/Collector$Registry;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
