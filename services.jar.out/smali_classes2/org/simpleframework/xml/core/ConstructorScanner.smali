.class Lorg/simpleframework/xml/core/ConstructorScanner;
.super Ljava/lang/Object;
.source "ConstructorScanner.java"


# instance fields
.field private primary:Lorg/simpleframework/xml/core/Signature;

.field private registry:Lorg/simpleframework/xml/core/ParameterMap;

.field private signatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    .line 71
    new-instance v0, Lorg/simpleframework/xml/core/ParameterMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ParameterMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    .line 72
    iput-object p2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    .line 73
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Lorg/simpleframework/xml/core/Detail;)V

    .line 74
    return-void
.end method

.method private scan(Ljava/lang/reflect/Constructor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lorg/simpleframework/xml/core/SignatureScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p1, v1, v2}, Lorg/simpleframework/xml/core/SignatureScanner;-><init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Support;)V

    .line 141
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureScanner;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SignatureScanner;->getSignatures()Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Signature;

    .line 145
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->size()I

    move-result v2

    .line 147
    if-eqz v2, :cond_2

    .line 150
    :goto_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_2
    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    goto :goto_1
.end method

.method private scan(Lorg/simpleframework/xml/core/Detail;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 121
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isInstantiable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 129
    return-void

    .line 122
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/ConstructorException;

    const-string/jumbo v2, "Can not construct inner %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 124
    :cond_1
    aget-object v3, v1, v0

    .line 125
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 124
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_2
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Ljava/lang/reflect/Constructor;)V

    goto :goto_1
.end method


# virtual methods
.method public getParameters()Lorg/simpleframework/xml/core/ParameterMap;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/ParameterMap;

    return-object v0
.end method

.method public getSignature()Lorg/simpleframework/xml/core/Signature;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Signature;

    return-object v0
.end method

.method public getSignatures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Signature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->signatures:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
