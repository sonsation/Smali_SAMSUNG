.class Lorg/simpleframework/xml/core/ClassInstantiator;
.super Ljava/lang/Object;
.source "ClassInstantiator.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Instantiator;


# instance fields
.field private final creators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;"
        }
    .end annotation
.end field

.field private final detail:Lorg/simpleframework/xml/core/Detail;

.field private final primary:Lorg/simpleframework/xml/core/Creator;

.field private final registry:Lorg/simpleframework/xml/core/ParameterMap;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/simpleframework/xml/core/Creator;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Detail;)V
    .locals 0
    .param p2, "primary"    # Lorg/simpleframework/xml/core/Creator;
    .param p3, "registry"    # Lorg/simpleframework/xml/core/ParameterMap;
    .param p4, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;",
            "Lorg/simpleframework/xml/core/Creator;",
            "Lorg/simpleframework/xml/core/ParameterMap;",
            "Lorg/simpleframework/xml/core/Detail;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "creators":Ljava/util/List;, "Ljava/util/List<Lorg/simpleframework/xml/core/Creator;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    .line 67
    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    .line 68
    iput-object p4, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    .line 69
    return-void
.end method

.method private getCreator(Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Creator;
    .locals 8
    .param p1, "criteria"    # Lorg/simpleframework/xml/core/Criteria;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v4, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    .line 128
    .local v4, "result":Lorg/simpleframework/xml/core/Creator;
    const-wide/16 v2, 0x0

    .line 130
    .local v2, "max":D
    iget-object v5, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Creator;

    .line 131
    .local v1, "instantiator":Lorg/simpleframework/xml/core/Creator;
    invoke-interface {v1, p1}, Lorg/simpleframework/xml/core/Creator;->getScore(Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v6

    .line 133
    .local v6, "score":D
    cmpl-double v5, v6, v2

    if-lez v5, :cond_0

    .line 134
    move-object v4, v1

    .line 135
    move-wide v2, v6

    goto :goto_0

    .line 138
    .end local v1    # "instantiator":Lorg/simpleframework/xml/core/Creator;
    .end local v6    # "score":D
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getCreators()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .locals 6
    .param p1, "criteria"    # Lorg/simpleframework/xml/core/Criteria;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ClassInstantiator;->getCreator(Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Creator;

    move-result-object v0

    .line 111
    .local v0, "creator":Lorg/simpleframework/xml/core/Creator;
    if-nez v0, :cond_0

    .line 112
    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Constructor not matched for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 114
    :cond_0
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Creator;->getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isDefault()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->creators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    .local v0, "count":I
    if-gt v0, v1, :cond_1

    .line 82
    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->primary:Lorg/simpleframework/xml/core/Creator;

    if-eqz v3, :cond_0

    .line 84
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 82
    goto :goto_0

    :cond_1
    move v1, v2

    .line 84
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    const-string v0, "creator for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassInstantiator;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
