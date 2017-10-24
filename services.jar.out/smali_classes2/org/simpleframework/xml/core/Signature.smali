.class Lorg/simpleframework/xml/core/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/simpleframework/xml/core/Parameter;",
        ">;"
    }
.end annotation


# instance fields
.field private final factory:Ljava/lang/reflect/Constructor;

.field private final parameters:Lorg/simpleframework/xml/core/ParameterMap;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    .line 87
    iput-object p1, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    .line 88
    iput-object p2, p0, Lorg/simpleframework/xml/core/Signature;->type:Ljava/lang/Class;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Signature;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p1, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    iget-object v1, p1, Lorg/simpleframework/xml/core/Signature;->type:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V

    .line 62
    return-void
.end method


# virtual methods
.method public add(Lorg/simpleframework/xml/core/Parameter;)V
    .locals 2

    .prologue
    .line 196
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v1, v0, p1}, Lorg/simpleframework/xml/core/ParameterMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ParameterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copy()Lorg/simpleframework/xml/core/Signature;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v1, Lorg/simpleframework/xml/core/Signature;

    invoke-direct {v1, p0}, Lorg/simpleframework/xml/core/Signature;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    .line 259
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Signature;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    return-object v1

    .line 259
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 260
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Signature;->add(Lorg/simpleframework/xml/core/Parameter;)V

    goto :goto_0
.end method

.method public create()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_0
.end method

.method public create([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_0
.end method

.method public get(I)Lorg/simpleframework/xml/core/Parameter;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ParameterMap;->get(I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Parameter;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ParameterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterMap;->getAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Parameter;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ParameterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public set(Ljava/lang/Object;Lorg/simpleframework/xml/core/Parameter;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/ParameterMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->parameters:Lorg/simpleframework/xml/core/ParameterMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/simpleframework/xml/core/Signature;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
