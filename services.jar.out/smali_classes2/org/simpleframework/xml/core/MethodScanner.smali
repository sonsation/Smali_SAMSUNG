.class Lorg/simpleframework/xml/core/MethodScanner;
.super Lorg/simpleframework/xml/core/ContactList;
.source "MethodScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/MethodScanner$1;,
        Lorg/simpleframework/xml/core/MethodScanner$PartMap;
    }
.end annotation


# instance fields
.field private final detail:Lorg/simpleframework/xml/core/Detail;

.field private final factory:Lorg/simpleframework/xml/core/MethodPartFactory;

.field private final read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

.field private final support:Lorg/simpleframework/xml/core/Support;

.field private final write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lorg/simpleframework/xml/core/ContactList;-><init>()V

    .line 101
    new-instance v0, Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    .line 102
    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;-><init>(Lorg/simpleframework/xml/core/MethodScanner$1;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    .line 103
    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;-><init>(Lorg/simpleframework/xml/core/MethodScanner$1;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    .line 104
    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodScanner;->support:Lorg/simpleframework/xml/core/Support;

    .line 105
    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    .line 106
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Lorg/simpleframework/xml/core/Detail;)V

    .line 107
    return-void
.end method

.method private build()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    return-void

    .line 418
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/MethodPart;

    .line 421
    if-eqz v1, :cond_0

    .line 422
    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/MethodScanner;->build(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private build(Lorg/simpleframework/xml/core/MethodPart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Lorg/simpleframework/xml/core/MethodContact;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MethodScanner;->add(Ljava/lang/Object;)Z

    .line 457
    return-void
.end method

.method private build(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->take(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 440
    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->build(Lorg/simpleframework/xml/core/MethodPart;)V

    .line 445
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodScanner;->build(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    goto :goto_0
.end method

.method private build(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 470
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 471
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-interface {p2}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 478
    invoke-interface {p2}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 481
    new-instance v0, Lorg/simpleframework/xml/core/MethodContact;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MethodScanner;->add(Ljava/lang/Object;)Z

    .line 482
    return-void

    .line 474
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/MethodException;

    const-string/jumbo v2, "Annotations do not match for \'%s\' in %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v1, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 479
    :cond_1
    new-instance v2, Lorg/simpleframework/xml/core/MethodException;

    const-string/jumbo v3, "Method types do not match for %s in %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private extend(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->support:Lorg/simpleframework/xml/core/Support;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Support;->getMethods(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 143
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Contact;

    .line 144
    check-cast v0, Lorg/simpleframework/xml/core/MethodContact;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodContact;)V

    goto :goto_0
.end method

.method private extract(Lorg/simpleframework/xml/core/Detail;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getMethods()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    return-void

    .line 159
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/MethodDetail;

    .line 160
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodDetail;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 161
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodDetail;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 163
    array-length v5, v3

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v3, v0

    .line 164
    invoke-direct {p0, v4, v6, v3}, Lorg/simpleframework/xml/core/MethodScanner;->scan(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private extract(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/DefaultType;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getMethods()Ljava/util/List;

    move-result-object v0

    .line 181
    sget-object v1, Lorg/simpleframework/xml/DefaultType;->PROPERTY:Lorg/simpleframework/xml/DefaultType;

    if-eq p2, v1, :cond_1

    .line 192
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/MethodDetail;

    .line 183
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodDetail;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 184
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodDetail;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 185
    iget-object v3, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v3, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v3

    .line 187
    if-eqz v3, :cond_2

    .line 188
    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;[Ljava/lang/annotation/Annotation;)V

    goto :goto_0
.end method

.method private insert(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V
    .locals 3

    .prologue
    .line 338
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {p2, v1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/MethodPart;

    .line 341
    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    invoke-virtual {p2, v1, p1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-void

    .line 342
    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->isText(Lorg/simpleframework/xml/core/MethodPart;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v0

    .line 343
    goto :goto_0
.end method

.method private isText(Lorg/simpleframework/xml/core/MethodPart;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 361
    instance-of v0, v0, Lorg/simpleframework/xml/Text;

    if-nez v0, :cond_0

    .line 364
    return v1

    .line 362
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    .line 256
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-eq v1, v2, :cond_0

    .line 259
    :goto_0
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-eq v1, v2, :cond_1

    .line 262
    :goto_1
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-eq v1, v2, :cond_2

    .line 265
    :goto_2
    return-void

    .line 257
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_0

    .line 260
    :cond_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_1

    .line 263
    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_2
.end method

.method private process(Ljava/lang/reflect/Method;[Ljava/lang/annotation/Annotation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 280
    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    .line 282
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-eq v1, v2, :cond_0

    .line 285
    :goto_0
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-eq v1, v2, :cond_1

    .line 288
    :goto_1
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-eq v1, v2, :cond_2

    .line 291
    :goto_2
    return-void

    .line 283
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_1

    .line 289
    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_2
.end method

.method private process(Lorg/simpleframework/xml/core/MethodContact;)V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodContact;->getRead()Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 320
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodContact;->getWrite()Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v1

    .line 322
    if-nez v1, :cond_0

    .line 325
    :goto_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->insert(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    .line 326
    return-void

    .line 323
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/MethodScanner;->insert(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_0
.end method

.method private process(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V
    .locals 1

    .prologue
    .line 303
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    .line 305
    if-nez v0, :cond_0

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p2, v0, p1}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private remove(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->factory:Lorg/simpleframework/xml/core/MethodPartFactory;

    invoke-virtual {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethodType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v1

    .line 382
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-eq v1, v2, :cond_0

    .line 385
    :goto_0
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-eq v1, v2, :cond_1

    .line 388
    :goto_1
    sget-object v2, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-eq v1, v2, :cond_2

    .line 391
    :goto_2
    return-void

    .line 383
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_0

    .line 386
    :cond_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_1

    .line 389
    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V

    goto :goto_2
.end method

.method private remove(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodScanner$PartMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 403
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    .line 405
    if-nez v0, :cond_0

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-virtual {p2, v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private scan(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-nez v0, :cond_1

    .line 211
    :goto_1
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-nez v0, :cond_2

    .line 214
    :goto_2
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-nez v0, :cond_3

    .line 217
    :goto_3
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-nez v0, :cond_4

    .line 220
    :goto_4
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-nez v0, :cond_5

    .line 223
    :goto_5
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-nez v0, :cond_6

    .line 226
    :goto_6
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-nez v0, :cond_7

    .line 229
    :goto_7
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    if-nez v0, :cond_8

    .line 232
    :goto_8
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-nez v0, :cond_9

    .line 235
    :goto_9
    instance-of v0, p2, Lorg/simpleframework/xml/Transient;

    if-nez v0, :cond_a

    .line 238
    :goto_a
    return-void

    .line 206
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_1

    .line 212
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_2

    .line 215
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_3

    .line 218
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_4

    .line 221
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_5

    .line 224
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_6

    .line 227
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_7

    .line 230
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_8

    .line 233
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->process(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_9

    .line 236
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/MethodScanner;->remove(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    goto :goto_a
.end method

.method private scan(Lorg/simpleframework/xml/core/Detail;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getOverride()Lorg/simpleframework/xml/DefaultType;

    move-result-object v0

    .line 119
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getAccess()Lorg/simpleframework/xml/DefaultType;

    move-result-object v1

    .line 120
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->getSuper()Ljava/lang/Class;

    move-result-object v2

    .line 122
    if-nez v2, :cond_0

    .line 125
    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/MethodScanner;->extract(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/DefaultType;)V

    .line 126
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodScanner;->extract(Lorg/simpleframework/xml/core/Detail;)V

    .line 127
    invoke-direct {p0}, Lorg/simpleframework/xml/core/MethodScanner;->build()V

    .line 128
    invoke-direct {p0}, Lorg/simpleframework/xml/core/MethodScanner;->validate()V

    .line 129
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, v2, v0}, Lorg/simpleframework/xml/core/MethodScanner;->extend(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    goto :goto_0
.end method

.method private validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 491
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    return-void

    .line 491
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 492
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodScanner;->write:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/MethodPart;

    .line 494
    if-eqz v1, :cond_0

    .line 495
    invoke-direct {p0, v1, v0}, Lorg/simpleframework/xml/core/MethodScanner;->validate(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private validate(Lorg/simpleframework/xml/core/MethodPart;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodScanner;->read:Lorg/simpleframework/xml/core/MethodScanner$PartMap;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/MethodScanner$PartMap;->take(Ljava/lang/String;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object v0

    .line 511
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 513
    if-eqz v0, :cond_0

    .line 516
    return-void

    .line 514
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/MethodException;

    const-string/jumbo v2, "No matching get method for %s in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/MethodScanner;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
