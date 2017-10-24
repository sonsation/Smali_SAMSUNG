.class Lorg/simpleframework/xml/core/InstantiatorBuilder;
.super Ljava/lang/Object;
.source "InstantiatorBuilder.java"


# instance fields
.field private attributes:Lorg/simpleframework/xml/core/LabelMap;

.field private comparer:Lorg/simpleframework/xml/core/Comparer;

.field private detail:Lorg/simpleframework/xml/core/Detail;

.field private elements:Lorg/simpleframework/xml/core/LabelMap;

.field private factory:Lorg/simpleframework/xml/core/Instantiator;

.field private options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;"
        }
    .end annotation
.end field

.field private scanner:Lorg/simpleframework/xml/core/Scanner;

.field private texts:Lorg/simpleframework/xml/core/LabelMap;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Scanner;Lorg/simpleframework/xml/core/Detail;)V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->options:Ljava/util/List;

    .line 93
    new-instance v0, Lorg/simpleframework/xml/core/Comparer;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Comparer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->comparer:Lorg/simpleframework/xml/core/Comparer;

    .line 94
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    .line 95
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    .line 96
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    .line 97
    iput-object p1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    .line 98
    iput-object p2, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    .line 99
    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/Instantiator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    return-object v0

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->create(Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/Instantiator;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    goto :goto_0
.end method

.method private contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 520
    array-length v2, p1

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 528
    return v1

    .line 520
    :cond_0
    aget-object v3, p1, v0

    .line 521
    if-eq v3, p2, :cond_1

    .line 524
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    :cond_1
    return v4

    .line 525
    :cond_2
    return v4
.end method

.method private create(Lorg/simpleframework/xml/core/Signature;)Lorg/simpleframework/xml/core/Creator;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lorg/simpleframework/xml/core/SignatureCreator;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/SignatureCreator;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    .line 170
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->options:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private create(Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/Instantiator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Scanner;->getSignature()Lorg/simpleframework/xml/core/Signature;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Scanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    move-result-object v2

    .line 151
    if-nez v1, :cond_0

    .line 154
    :goto_0
    new-instance v1, Lorg/simpleframework/xml/core/ClassInstantiator;

    iget-object v3, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->options:Ljava/util/List;

    invoke-direct {v1, v3, v0, v2, p1}, Lorg/simpleframework/xml/core/ClassInstantiator;-><init>(Ljava/util/List;Lorg/simpleframework/xml/core/Creator;Lorg/simpleframework/xml/core/ParameterMap;Lorg/simpleframework/xml/core/Detail;)V

    return-object v1

    .line 152
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/SignatureCreator;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/SignatureCreator;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    goto :goto_0
.end method

.method private create(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Parameter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 189
    if-nez v0, :cond_0

    .line 192
    return-object v1

    .line 190
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/CacheParameter;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/CacheParameter;-><init>(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/Label;)V

    return-object v1
.end method

.method private populate(Lorg/simpleframework/xml/core/Detail;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getSignatures()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 206
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Signature;

    .line 207
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->populate(Lorg/simpleframework/xml/core/Signature;)V

    goto :goto_0
.end method

.method private populate(Lorg/simpleframework/xml/core/Signature;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v1, Lorg/simpleframework/xml/core/Signature;

    invoke-direct {v1, p1}, Lorg/simpleframework/xml/core/Signature;-><init>(Lorg/simpleframework/xml/core/Signature;)V

    .line 222
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Signature;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->create(Lorg/simpleframework/xml/core/Signature;)Lorg/simpleframework/xml/core/Creator;

    .line 230
    return-void

    .line 222
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 223
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->create(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Signature;->add(Lorg/simpleframework/xml/core/Parameter;)V

    goto :goto_0
.end method

.method private register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 453
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/LabelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    invoke-virtual {p2, v1, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_0
    :goto_0
    invoke-virtual {p2, v2, p1}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    return-void

    .line 457
    :cond_1
    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 458
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/LabelMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 479
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->isAttribute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->isText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0

    .line 482
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method private resolve(Lorg/simpleframework/xml/core/Parameter;Lorg/simpleframework/xml/core/LabelMap;)Lorg/simpleframework/xml/core/Label;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 499
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 503
    if-eqz v0, :cond_0

    .line 506
    return-object v0

    .line 504
    :cond_0
    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/LabelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    return-object v0
.end method

.method private validate(Lorg/simpleframework/xml/core/Detail;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->scanner:Lorg/simpleframework/xml/core/Scanner;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Scanner;->getParameters()Lorg/simpleframework/xml/core/ParameterMap;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterMap;->getAll()Ljava/util/List;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors()V

    .line 254
    return-void

    .line 244
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    .line 245
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->resolve(Lorg/simpleframework/xml/core/Parameter;)Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    .line 246
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 248
    if-eqz v2, :cond_1

    .line 251
    invoke-direct {p0, v2, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateParameter(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V

    goto :goto_0

    .line 249
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string/jumbo v1, "Parameter \'%s\' does not have a match in %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private validateAnnotations(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 315
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 316
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 317
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    .line 319
    iget-object v3, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->comparer:Lorg/simpleframework/xml/core/Comparer;

    invoke-virtual {v3, v0, v1}, Lorg/simpleframework/xml/core/Comparer;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    :cond_0
    return-void

    .line 320
    :cond_1
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 321
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 324
    new-instance v3, Lorg/simpleframework/xml/core/ConstructorException;

    const-string/jumbo v4, "Annotation %s does not match %s for \'%s\' in %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object p2, v5, v0

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private validateConstructor(Lorg/simpleframework/xml/core/Label;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Label;",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 398
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 400
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    return-void

    .line 401
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Creator;

    .line 402
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Creator;->getSignature()Lorg/simpleframework/xml/core/Signature;

    move-result-object v0

    .line 403
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    .line 404
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 406
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {v0, v3}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    .line 409
    if-nez v0, :cond_0

    .line 410
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private validateConstructors()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instantiator;->getCreators()Ljava/util/List;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instantiator;->isDefault()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    :goto_1
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V

    .line 340
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V

    .line 344
    iget-object v1, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V

    goto :goto_1
.end method

.method private validateConstructors(Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 357
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    return-void

    .line 357
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 358
    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    .line 361
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Contact;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    new-instance v1, Lorg/simpleframework/xml/core/ConstructorException;

    const-string/jumbo v2, "Default constructor can not accept read only %s in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private validateConstructors(Lorg/simpleframework/xml/core/LabelMap;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/LabelMap;",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 378
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    return-void

    .line 378
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 379
    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateConstructor(Lorg/simpleframework/xml/core/Label;Ljava/util/List;)V

    goto :goto_0

    .line 384
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string/jumbo v1, "No constructor accepts all read only values in %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private validateNames(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getNames()[Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    return-void

    .line 292
    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 294
    if-eq v1, v0, :cond_0

    .line 295
    if-nez v1, :cond_3

    .line 296
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string/jumbo v2, "Annotation does not match %s for \'%s\' in %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v1, v3, v5

    aput-object p2, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 295
    :cond_3
    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string/jumbo v2, "Annotation does not match %s for \'%s\' in %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v1, v3, v5

    aput-object p2, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private validateParameter(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 266
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getName()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 268
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 270
    invoke-static {v2, v0}, Lorg/simpleframework/xml/core/Support;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateNames(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V

    .line 274
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validateAnnotations(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/Parameter;)V

    .line 275
    return-void

    .line 271
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/ConstructorException;

    const-string/jumbo v2, "Type is not compatible with %s for \'%s\' in %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    aput-object p2, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public build()Lorg/simpleframework/xml/core/Instantiator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->factory:Lorg/simpleframework/xml/core/Instantiator;

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->populate(Lorg/simpleframework/xml/core/Detail;)V

    .line 113
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->build(Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/Instantiator;

    .line 114
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->validate(Lorg/simpleframework/xml/core/Detail;)V

    goto :goto_0
.end method

.method public register(Lorg/simpleframework/xml/core/Label;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 425
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->elements:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    .line 432
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->attributes:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/InstantiatorBuilder;->texts:Lorg/simpleframework/xml/core/LabelMap;

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/InstantiatorBuilder;->register(Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0
.end method
