.class Lorg/simpleframework/xml/core/Composite;
.super Ljava/lang/Object;
.source "Composite.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/Composite$1;,
        Lorg/simpleframework/xml/core/Composite$Builder;,
        Lorg/simpleframework/xml/core/Composite$Injector;
    }
.end annotation


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final criteria:Lorg/simpleframework/xml/core/Criteria;

.field private final factory:Lorg/simpleframework/xml/core/ObjectFactory;

.field private final primitive:Lorg/simpleframework/xml/core/Primitive;

.field private final revision:Lorg/simpleframework/xml/core/Revision;

.field private final type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/ObjectFactory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    .line 116
    new-instance v0, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    .line 117
    new-instance v0, Lorg/simpleframework/xml/core/Collector;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Collector;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    .line 118
    new-instance v0, Lorg/simpleframework/xml/core/Revision;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Revision;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    .line 119
    iput-object p1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    .line 120
    iput-object p2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    return-void
.end method

.method static synthetic access$200(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method static synthetic access$300(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method static synthetic access$400(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    return-void
.end method

.method private isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/strategy/Type;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1312
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p3, p2, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->setOverride(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)Z

    move-result v0

    return v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p3}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    .line 200
    invoke-direct {p0, v0, p2}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Lorg/simpleframework/xml/core/Composite$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Composite$Builder;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Caller;->validate(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/core/Caller;->commit(Ljava/lang/Object;)V

    .line 205
    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Lorg/simpleframework/xml/core/Composite$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Schema;->getInstantiator()Lorg/simpleframework/xml/core/Instantiator;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instantiator;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lorg/simpleframework/xml/core/Composite$Injector;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/simpleframework/xml/core/Composite$Injector;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;Lorg/simpleframework/xml/core/Composite$1;)V

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/Composite$Builder;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/simpleframework/xml/core/Composite$Builder;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)V

    return-object v0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 306
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 307
    return-void
.end method

.method private readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 485
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p4, v0}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 489
    if-eqz v1, :cond_1

    .line 497
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    .line 499
    :cond_0
    return-void

    .line 490
    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 491
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 493
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p4, v3}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    new-instance v3, Lorg/simpleframework/xml/core/AttributeException;

    const-string/jumbo v4, "Attribute \'%s\' does not have a match in %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 406
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    .line 407
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    .line 409
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    invoke-direct {p0, p1, v1, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    .line 417
    return-void

    .line 409
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0, v0, p2, p3, v1}, Lorg/simpleframework/xml/core/Composite;->readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 515
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-virtual {p4, v1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 519
    if-eqz v0, :cond_0

    .line 522
    :goto_0
    if-eqz v0, :cond_1

    .line 532
    invoke-direct {p0, p1, p2, p4, v0}, Lorg/simpleframework/xml/core/Composite;->readUnion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V

    .line 534
    :goto_1
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Criteria;->resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 524
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 526
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p4, v3}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 529
    :cond_2
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->skip()V

    goto :goto_1

    .line 526
    :cond_3
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    new-instance v3, Lorg/simpleframework/xml/core/ElementException;

    const-string/jumbo v4, "Element \'%s\' does not have a match in %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 435
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    .line 436
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 438
    :goto_0
    if-nez v0, :cond_0

    .line 449
    invoke-direct {p0, p1, v1, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    .line 450
    return-void

    .line 439
    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-interface {p3, v2}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v2

    .line 442
    if-nez v2, :cond_1

    .line 445
    invoke-direct {p0, v0, p2, p3, v1}, Lorg/simpleframework/xml/core/Composite;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    .line 447
    :goto_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    goto :goto_0

    .line 443
    :cond_1
    invoke-direct {p0, v0, p2, v2}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    goto :goto_1
.end method

.method private readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 573
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVariable(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_1

    .line 583
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 587
    :cond_0
    :goto_0
    return-object v0

    .line 576
    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 577
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 579
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    new-instance v0, Lorg/simpleframework/xml/core/ValueRequiredException;

    const-string/jumbo v3, "Empty value for %s in %s at %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-direct {v0, v3, v4}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 584
    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v1, p3, v0}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private readPrimitive(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 252
    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-object v1

    .line 253
    :cond_0
    invoke-interface {p2, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 273
    if-nez p2, :cond_0

    .line 284
    return-object p2

    .line 274
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 275
    invoke-virtual {p3, p2}, Lorg/simpleframework/xml/core/Caller;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    return-object v1

    .line 280
    :cond_1
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const-string/jumbo v4, "Type %s does not match %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-direct {v1, v4, v5}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 325
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 326
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 327
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 328
    return-void
.end method

.method private readText(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 464
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 466
    if-nez v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 467
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private readUnion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-direct {p0, p1, p2, p4}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v1

    .line 550
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v2

    .line 552
    array-length v3, v2

    :goto_0
    if-lt v0, v3, :cond_0

    .line 555
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    :goto_1
    return-void

    .line 552
    :cond_0
    aget-object v4, v2, v0

    .line 553
    invoke-virtual {p3, v4}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v0, p4, v1}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private readVariable(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 606
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 623
    :cond_0
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 607
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v1, p3}, Lorg/simpleframework/xml/core/Criteria;->get(Lorg/simpleframework/xml/core/Label;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v1

    .line 608
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v2

    .line 610
    if-nez v1, :cond_2

    .line 615
    if-eqz p2, :cond_0

    .line 616
    invoke-interface {v2, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 618
    if-eqz v1, :cond_0

    .line 619
    invoke-interface {v0, p1, v1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 611
    :cond_2
    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 613
    invoke-interface {v0, p1, v1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 380
    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;

    move-result-object v1

    .line 382
    invoke-interface {v1}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 384
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v2, v1, v0}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 344
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 346
    if-nez v1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v3

    .line 349
    invoke-interface {v3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/InputNode;

    .line 351
    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v2}, Lorg/simpleframework/xml/core/Context;->getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;

    move-result-object v0

    .line 355
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Revision;->getDefault()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 356
    invoke-interface {v0}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 358
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v3, v1, v2}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 359
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v1, v0, v2}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0, v0, p2, v1}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 897
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 898
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 899
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 900
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Converter;->validate(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v0

    .line 902
    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 906
    return-void

    .line 903
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string/jumbo v3, "Invalid value for %s in %s at %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    invoke-direct {v0, v3, v4}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 920
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 922
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 929
    return-void

    .line 922
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 923
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 925
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 926
    new-instance v2, Lorg/simpleframework/xml/core/ValueRequiredException;

    const-string/jumbo v4, "Unable to satisfy %s for %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-direct {v2, v4, v5}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 639
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v0, v1, p3}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 640
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v2

    .line 642
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    return-void

    .line 642
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 643
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-nez v4, :cond_3

    .line 646
    :cond_2
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v4}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v4

    .line 648
    if-eqz v4, :cond_0

    .line 649
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v5, v0, v4}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_0

    .line 643
    :cond_3
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 644
    new-instance v3, Lorg/simpleframework/xml/core/ValueRequiredException;

    const-string/jumbo v4, "Unable to satisfy %s for %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    .line 697
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v1

    .line 699
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->validateText(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;)V

    .line 700
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Composite;->validateSection(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    .line 702
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->isElement()Z

    move-result v0

    return v0
.end method

.method private validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 814
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 815
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 816
    invoke-interface {p2, v1}, Lorg/simpleframework/xml/core/Section;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-virtual {p3, v1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    .line 819
    if-eqz v2, :cond_1

    .line 826
    invoke-direct {p0, p1, v2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V

    .line 828
    :cond_0
    return-void

    .line 820
    :cond_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 822
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p3, v3}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 823
    new-instance v3, Lorg/simpleframework/xml/core/AttributeException;

    const-string/jumbo v4, "Attribute \'%s\' does not exist for %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private validateAttributes(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 739
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v0

    .line 740
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    .line 742
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 749
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;)V

    .line 750
    return-void

    .line 742
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0, v0, p2, v1}, Lorg/simpleframework/xml/core/Composite;->validateAttribute(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0
.end method

.method private validateElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 842
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 844
    invoke-virtual {p3, v1}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_0

    .line 849
    :goto_0
    if-eqz v0, :cond_1

    .line 859
    invoke-direct {p0, p1, p3, v0}, Lorg/simpleframework/xml/core/Composite;->validateUnion(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V

    .line 861
    :goto_1
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Criteria;->resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v0

    goto :goto_0

    .line 850
    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    .line 851
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 853
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p3, v3}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 856
    :cond_2
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->skip()V

    goto :goto_1

    .line 853
    :cond_3
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 854
    new-instance v3, Lorg/simpleframework/xml/core/ElementException;

    const-string/jumbo v4, "Element \'%s\' does not exist for %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
.end method

.method private validateElements(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 767
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Section;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v1

    .line 768
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    .line 770
    :goto_0
    if-nez v0, :cond_0

    .line 781
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;)V

    .line 782
    return-void

    .line 771
    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 772
    invoke-interface {p2, v2}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v2

    .line 774
    if-nez v2, :cond_1

    .line 777
    invoke-direct {p0, v0, p2, v1}, Lorg/simpleframework/xml/core/Composite;->validateElement(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    .line 779
    :goto_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    goto :goto_0

    .line 775
    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/Composite;->validateSection(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    goto :goto_1
.end method

.method private validateSection(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 720
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Composite;->validateAttributes(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    .line 721
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Composite;->validateElements(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Section;)V

    .line 722
    return-void
.end method

.method private validateText(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 795
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Schema;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 797
    if-nez v0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0
.end method

.method private validateUnion(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 875
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v1

    .line 877
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 880
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    :goto_1
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Label;)V

    .line 884
    return-void

    .line 877
    :cond_0
    aget-object v3, v1, v0

    .line 878
    invoke-virtual {p2, v3}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 881
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 972
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getSection()Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    .line 974
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeVersion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 975
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 976
    return-void
.end method

.method private writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1196
    if-nez p2, :cond_0

    .line 1204
    :goto_0
    return-void

    .line 1197
    :cond_0
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    .line 1198
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1199
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v2, p2}, Lorg/simpleframework/xml/core/ObjectFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1200
    invoke-interface {p1, v1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    .line 1202
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    goto :goto_0
.end method

.method private writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1051
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    return-void

    .line 1053
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Label;

    .line 1054
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 1055
    invoke-interface {v1, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1056
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3, v4, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    .line 1058
    if-eqz v1, :cond_2

    .line 1061
    :goto_1
    if-eqz v1, :cond_3

    .line 1064
    :cond_1
    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 1059
    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 1061
    :cond_3
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1062
    new-instance v1, Lorg/simpleframework/xml/core/AttributeException;

    const-string/jumbo v2, "Value for %s is null in %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    invoke-direct {v1, v2, v4}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-interface {p3, p1, p2}, Lorg/simpleframework/xml/core/Converter;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 1257
    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1224
    if-nez p2, :cond_0

    .line 1242
    :goto_0
    return-void

    .line 1225
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1226
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 1227
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1228
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 1229
    invoke-interface {p1, v2}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v2

    .line 1231
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1234
    :goto_1
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1235
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 1236
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v1

    .line 1238
    invoke-interface {v2, v1}, Lorg/simpleframework/xml/stream/OutputNode;->setData(Z)V

    .line 1239
    invoke-direct {p0, v2, p2, v0}, Lorg/simpleframework/xml/core/Composite;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Converter;)V

    goto :goto_0

    .line 1232
    :cond_2
    invoke-direct {p0, v2, v0, v1}, Lorg/simpleframework/xml/core/Composite;->writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_1

    .line 1234
    :cond_3
    invoke-direct {p0, v2, p2, v0}, Lorg/simpleframework/xml/core/Composite;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private writeElements(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1081
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1102
    return-void

    .line 1081
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1082
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v2

    .line 1084
    if-nez v2, :cond_2

    .line 1089
    invoke-interface {p3, v0}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1090
    invoke-interface {p3, v2}, Lorg/simpleframework/xml/core/Section;->getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    .line 1091
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3, v4, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    .line 1092
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v4, v2}, Lorg/simpleframework/xml/core/Criteria;->get(Lorg/simpleframework/xml/core/Label;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v4

    .line 1094
    if-nez v4, :cond_0

    .line 1095
    if-eqz v2, :cond_3

    .line 1098
    invoke-direct {p0, p1, p2, p3, v2}, Lorg/simpleframework/xml/core/Composite;->writeUnion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 1085
    :cond_2
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    .line 1087
    invoke-direct {p0, v0, p2, v2}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    goto :goto_0

    .line 1096
    :cond_3
    new-instance v1, Lorg/simpleframework/xml/core/ElementException;

    const-string/jumbo v2, "Element \'%s\' not defined in %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    invoke-direct {v1, v2, v4}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1271
    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 1272
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    .line 1273
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v1

    .line 1275
    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V

    .line 1276
    return-void
.end method

.method private writeReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1145
    if-nez p1, :cond_0

    .line 1151
    return-object p1

    .line 1146
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1147
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getCaller(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Caller;

    move-result-object v0

    .line 1149
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Caller;->replace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 991
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    .line 992
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 994
    if-nez v1, :cond_0

    .line 1003
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1004
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeElements(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1005
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1006
    return-void

    .line 995
    :cond_0
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_1

    .line 1000
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    goto :goto_0

    .line 998
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string/jumbo v2, "Namespace prefix \'%s\' in %s is not in scope"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1290
    if-nez p2, :cond_1

    .line 1297
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ObjectFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v1

    .line 1294
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/OutputNode;->setData(Z)V

    .line 1295
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1167
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 1169
    if-nez v1, :cond_0

    .line 1182
    :goto_0
    return-void

    .line 1170
    :cond_0
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 1171
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1172
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v2, v3, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 1174
    if-eqz v0, :cond_2

    .line 1177
    :goto_1
    if-eqz v0, :cond_3

    .line 1180
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 1175
    :cond_2
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 1177
    :cond_3
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1178
    new-instance v0, Lorg/simpleframework/xml/core/TextException;

    const-string/jumbo v3, "Value for %s is null in %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-direct {v0, v3, v4}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private writeUnion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/Label;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1117
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 1118
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v1, v2, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 1121
    if-eqz v0, :cond_1

    .line 1124
    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Composite;->writeReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1126
    if-nez v0, :cond_2

    .line 1129
    :goto_0
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v1, p4, v0}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 1130
    return-void

    .line 1121
    :cond_1
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1122
    new-instance v0, Lorg/simpleframework/xml/core/ElementException;

    const-string/jumbo v2, "Value for %s is null in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 1127
    :cond_2
    invoke-direct {p0, p1, v0, p4}, Lorg/simpleframework/xml/core/Composite;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0
.end method

.method private writeVersion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object v0

    .line 1022
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 1024
    if-nez v0, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/Revision;->getDefault()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1026
    invoke-interface {v0}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1028
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3, v0, v2}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1033
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 1029
    :cond_2
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1030
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 142
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    invoke-direct {p0, p1, v0, v1}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 146
    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->readPrimitive(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    .line 172
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 173
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Criteria;->commit(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->validate(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->commit(Ljava/lang/Object;)V

    .line 177
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v0

    .line 672
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 673
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 676
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 943
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v1, v0}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v0

    .line 945
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    .line 948
    :try_start_0
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Schema;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 951
    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->persist(Ljava/lang/Object;)V

    .line 952
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :goto_0
    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->complete(Ljava/lang/Object;)V

    .line 957
    return-void

    .line 949
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 956
    :catchall_0
    move-exception v0

    .line 955
    invoke-virtual {v1, p2}, Lorg/simpleframework/xml/core/Caller;->complete(Ljava/lang/Object;)V

    throw v0
.end method
