.class Lorg/simpleframework/xml/core/Composite;
.super Ljava/lang/Object;
.source "Composite.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/Composite$1;,
        Lorg/simpleframework/xml/core/Composite$Injector;,
        Lorg/simpleframework/xml/core/Composite$Builder;
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
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "override"    # Ljava/lang/Class;

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
    .param p0, "x0"    # Lorg/simpleframework/xml/core/Composite;
    .param p1, "x1"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lorg/simpleframework/xml/core/Schema;
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
    .param p0, "x0"    # Lorg/simpleframework/xml/core/Composite;
    .param p1, "x1"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lorg/simpleframework/xml/core/Section;
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
    .param p0, "x0"    # Lorg/simpleframework/xml/core/Composite;
    .param p1, "x1"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lorg/simpleframework/xml/core/Section;
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
    .param p0, "x0"    # Lorg/simpleframework/xml/core/Composite;
    .param p1, "x1"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lorg/simpleframework/xml/core/Section;
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
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "type"    # Lorg/simpleframework/xml/strategy/Type;
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
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "value"    # Lorg/simpleframework/xml/core/Instance;
    .param p3, "real"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v4, p3}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v2

    .line 199
    .local v2, "schema":Lorg/simpleframework/xml/core/Schema;
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v1

    .line 200
    .local v1, "caller":Lorg/simpleframework/xml/core/Caller;
    invoke-direct {p0, v2, p2}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Lorg/simpleframework/xml/core/Composite$Builder;

    move-result-object v0

    .line 201
    .local v0, "builder":Lorg/simpleframework/xml/core/Composite$Builder;
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Composite$Builder;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    .local v3, "source":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lorg/simpleframework/xml/core/Caller;->validate(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v1, v3}, Lorg/simpleframework/xml/core/Caller;->commit(Ljava/lang/Object;)V

    .line 205
    invoke-interface {p2, v3}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-direct {p0, p1, v3, v1}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method private read(Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)Lorg/simpleframework/xml/core/Composite$Builder;
    .locals 8
    .param p1, "schema"    # Lorg/simpleframework/xml/core/Schema;
    .param p2, "value"    # Lorg/simpleframework/xml/core/Instance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 228
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Schema;->getInstantiator()Lorg/simpleframework/xml/core/Instantiator;

    move-result-object v7

    .line 230
    .local v7, "creator":Lorg/simpleframework/xml/core/Instantiator;
    invoke-interface {v7}, Lorg/simpleframework/xml/core/Instantiator;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lorg/simpleframework/xml/core/Composite$Builder;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/simpleframework/xml/core/Composite$Builder;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;)V

    .line 233
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/Composite$Injector;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/simpleframework/xml/core/Composite$Injector;-><init>(Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Composite;Lorg/simpleframework/xml/core/Criteria;Lorg/simpleframework/xml/core/Schema;Lorg/simpleframework/xml/core/Instance;Lorg/simpleframework/xml/core/Composite$1;)V

    goto :goto_0
.end method

.method private read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "schema"    # Lorg/simpleframework/xml/core/Schema;
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
    .local v0, "section":Lorg/simpleframework/xml/core/Section;
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 306
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 307
    return-void
.end method

.method private readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 9
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
    .param p4, "map"    # Lorg/simpleframework/xml/core/LabelMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 485
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p3, v3}, Lorg/simpleframework/xml/core/Section;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p4, v4}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 489
    .local v1, "label":Lorg/simpleframework/xml/core/Label;
    if-nez v1, :cond_0

    .line 490
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v2

    .line 491
    .local v2, "line":Lorg/simpleframework/xml/stream/Position;
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v5, v6, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 493
    .local v0, "expect":Ljava/lang/Class;
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p4, v5}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 494
    new-instance v5, Lorg/simpleframework/xml/core/AttributeException;

    const-string v6, "Attribute \'%s\' does not have a match in %s at %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 497
    .end local v0    # "expect":Ljava/lang/Class;
    .end local v2    # "line":Lorg/simpleframework/xml/stream/Position;
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    .line 499
    :cond_1
    return-void
.end method

.method private readAttributes(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 6
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 406
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v1

    .line 407
    .local v1, "list":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v2

    .line 409
    .local v2, "map":Lorg/simpleframework/xml/core/LabelMap;
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/NodeMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 410
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p1, v3}, Lorg/simpleframework/xml/stream/InputNode;->getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v4

    .line 412
    .local v4, "value":Lorg/simpleframework/xml/stream/InputNode;
    if-eqz v4, :cond_0

    .line 413
    invoke-direct {p0, v4, p2, p3, v2}, Lorg/simpleframework/xml/core/Composite;->readAttribute(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_0

    .line 416
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Lorg/simpleframework/xml/stream/InputNode;
    :cond_1
    invoke-direct {p0, p1, v2, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method private readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V
    .locals 9
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
    .param p4, "map"    # Lorg/simpleframework/xml/core/LabelMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 515
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p3, v3}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p4, v4}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v1

    .line 519
    .local v1, "label":Lorg/simpleframework/xml/core/Label;
    if-nez v1, :cond_0

    .line 520
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v5, v4}, Lorg/simpleframework/xml/core/Criteria;->resolve(Ljava/lang/String;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v1

    .line 522
    :cond_0
    if-nez v1, :cond_2

    .line 523
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v2

    .line 524
    .local v2, "line":Lorg/simpleframework/xml/stream/Position;
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v5, v6, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 526
    .local v0, "expect":Ljava/lang/Class;
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-virtual {p4, v5}, Lorg/simpleframework/xml/core/LabelMap;->isStrict(Lorg/simpleframework/xml/core/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 527
    new-instance v5, Lorg/simpleframework/xml/core/ElementException;

    const-string v6, "Element \'%s\' does not have a match in %s at %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 529
    :cond_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->skip()V

    .line 534
    .end local v0    # "expect":Ljava/lang/Class;
    .end local v2    # "line":Lorg/simpleframework/xml/stream/Position;
    :goto_0
    return-void

    .line 532
    :cond_2
    invoke-direct {p0, p1, p2, p4, v1}, Lorg/simpleframework/xml/core/Composite;->readUnion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0
.end method

.method private readElements(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 435
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getElements()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v2

    .line 436
    .local v2, "map":Lorg/simpleframework/xml/core/LabelMap;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    .line 438
    .local v1, "child":Lorg/simpleframework/xml/stream/InputNode;
    :goto_0
    if-eqz v1, :cond_1

    .line 439
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/InputNode;->getName()Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p3, v3}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    .line 442
    .local v0, "block":Lorg/simpleframework/xml/core/Section;
    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0, v1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 447
    :goto_1
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getNext()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v1

    .line 448
    goto :goto_0

    .line 445
    :cond_0
    invoke-direct {p0, v1, p2, p3, v2}, Lorg/simpleframework/xml/core/Composite;->readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/LabelMap;)V

    goto :goto_1

    .line 449
    .end local v0    # "block":Lorg/simpleframework/xml/core/Section;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v2, p2}, Lorg/simpleframework/xml/core/Composite;->validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V

    .line 450
    return-void
.end method

.method private readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;
    .locals 7
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readVariable(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v2

    .line 575
    .local v2, "object":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 576
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 577
    .local v1, "line":Lorg/simpleframework/xml/stream/Position;
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v3, v4, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 579
    .local v0, "expect":Ljava/lang/Class;
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    new-instance v3, Lorg/simpleframework/xml/core/ValueRequiredException;

    const-string v4, "Empty value for %s in %s at %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 583
    .end local v0    # "expect":Ljava/lang/Class;
    .end local v1    # "line":Lorg/simpleframework/xml/stream/Position;
    :cond_0
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v3}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 584
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v3, p3, v2}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 587
    :cond_1
    return-object v2
.end method

.method private readPrimitive(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "value"    # Lorg/simpleframework/xml/core/Instance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    invoke-interface {p2}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 250
    .local v1, "type":Ljava/lang/Class;
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v2, p1, v1}, Lorg/simpleframework/xml/core/Primitive;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, "result":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 253
    invoke-interface {p2, v0}, Lorg/simpleframework/xml/core/Instance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_0
    return-object v0
.end method

.method private readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;
    .locals 8
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "caller"    # Lorg/simpleframework/xml/core/Caller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    if-eqz p2, :cond_0

    .line 274
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v1

    .line 275
    .local v1, "line":Lorg/simpleframework/xml/stream/Position;
    invoke-virtual {p3, p2}, Lorg/simpleframework/xml/core/Caller;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 276
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 277
    .local v0, "expect":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 279
    .local v2, "real":Ljava/lang/Class;
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    new-instance v4, Lorg/simpleframework/xml/core/ElementException;

    const-string v5, "Type %s does not match %s at %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .end local v0    # "expect":Ljava/lang/Class;
    .end local v1    # "line":Lorg/simpleframework/xml/stream/Position;
    .end local v2    # "real":Ljava/lang/Class;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    move-object v3, p2

    .line 284
    :cond_1
    return-object v3
.end method

.method private readSection(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 0
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
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
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
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
    .local v0, "label":Lorg/simpleframework/xml/core/Label;
    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    .line 469
    :cond_0
    return-void
.end method

.method private readUnion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/LabelMap;Lorg/simpleframework/xml/core/Label;)V
    .locals 7
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "map"    # Lorg/simpleframework/xml/core/LabelMap;
    .param p4, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 549
    invoke-direct {p0, p1, p2, p4}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v5

    .line 550
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "list":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 553
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p3, v2}, Lorg/simpleframework/xml/core/LabelMap;->getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 556
    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v6, p4, v5}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 558
    :cond_1
    return-void
.end method

.method private readVariable(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p3, v4}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v1

    .line 606
    .local v1, "reader":Lorg/simpleframework/xml/core/Converter;
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 607
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v4, p3}, Lorg/simpleframework/xml/core/Criteria;->get(Lorg/simpleframework/xml/core/Label;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v3

    .line 608
    .local v3, "variable":Lorg/simpleframework/xml/core/Variable;
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 610
    .local v0, "contact":Lorg/simpleframework/xml/core/Contact;
    if-eqz v3, :cond_0

    .line 611
    invoke-virtual {v3}, Lorg/simpleframework/xml/core/Variable;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 613
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {v1, p1, v2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 623
    .end local v0    # "contact":Lorg/simpleframework/xml/core/Contact;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "variable":Lorg/simpleframework/xml/core/Variable;
    :goto_0
    return-object v4

    .line 615
    .restart local v0    # "contact":Lorg/simpleframework/xml/core/Contact;
    .restart local v3    # "variable":Lorg/simpleframework/xml/core/Variable;
    :cond_0
    if-eqz p2, :cond_1

    .line 616
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 618
    .restart local v2    # "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 619
    invoke-interface {v1, p1, v2}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 623
    .end local v0    # "contact":Lorg/simpleframework/xml/core/Contact;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "variable":Lorg/simpleframework/xml/core/Variable;
    :cond_1
    invoke-interface {v1, p1}, Lorg/simpleframework/xml/core/Converter;->read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method private readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 6
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->readInstance(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)Ljava/lang/Object;

    move-result-object v2

    .line 378
    .local v2, "value":Ljava/lang/Object;
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 380
    .local v1, "expect":Ljava/lang/Class;
    if-eqz v2, :cond_0

    .line 381
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v4, v1}, Lorg/simpleframework/xml/core/Context;->getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;

    move-result-object v3

    .line 382
    .local v3, "version":Lorg/simpleframework/xml/Version;
    invoke-interface {v3}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 384
    .local v0, "actual":Ljava/lang/Double;
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 385
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4, v0, v2}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 388
    .end local v0    # "actual":Ljava/lang/Double;
    .end local v3    # "version":Lorg/simpleframework/xml/Version;
    :cond_0
    return-void
.end method

.method private readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .locals 10
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "schema"    # Lorg/simpleframework/xml/core/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    .line 344
    .local v2, "label":Lorg/simpleframework/xml/core/Label;
    iget-object v8, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v8}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 346
    .local v0, "expect":Ljava/lang/Class;
    if-eqz v2, :cond_0

    .line 347
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getAttributes()Lorg/simpleframework/xml/stream/NodeMap;

    move-result-object v3

    .line 349
    .local v3, "map":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    invoke-interface {v3, v4}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v6

    check-cast v6, Lorg/simpleframework/xml/stream/InputNode;

    .line 351
    .local v6, "value":Lorg/simpleframework/xml/stream/InputNode;
    if-eqz v6, :cond_1

    .line 352
    invoke-direct {p0, v6, p2, v2}, Lorg/simpleframework/xml/core/Composite;->readVersion(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 362
    .end local v3    # "map":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "value":Lorg/simpleframework/xml/stream/InputNode;
    :cond_0
    :goto_0
    return-void

    .line 354
    .restart local v3    # "map":Lorg/simpleframework/xml/stream/NodeMap;, "Lorg/simpleframework/xml/stream/NodeMap<Lorg/simpleframework/xml/stream/InputNode;>;"
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "value":Lorg/simpleframework/xml/stream/InputNode;
    :cond_1
    iget-object v8, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v8, v0}, Lorg/simpleframework/xml/core/Context;->getVersion(Ljava/lang/Class;)Lorg/simpleframework/xml/Version;

    move-result-object v7

    .line 355
    .local v7, "version":Lorg/simpleframework/xml/Version;
    iget-object v8, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v8}, Lorg/simpleframework/xml/core/Revision;->getDefault()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 356
    .local v5, "start":Ljava/lang/Double;
    invoke-interface {v7}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 358
    .local v1, "expected":Ljava/lang/Double;
    iget-object v8, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v8, v2, v5}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 359
    iget-object v8, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v8, v1, v5}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private validate(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/LabelMap;Ljava/lang/Object;)V
    .locals 9
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "map"    # Lorg/simpleframework/xml/core/LabelMap;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v5, v6, p3}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 640
    .local v0, "expect":Ljava/lang/Class;
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v3

    .line 642
    .local v3, "line":Lorg/simpleframework/xml/stream/Position;
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    .line 643
    .local v2, "label":Lorg/simpleframework/xml/core/Label;
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v5}, Lorg/simpleframework/xml/core/Revision;->isEqual()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 644
    new-instance v5, Lorg/simpleframework/xml/core/ValueRequiredException;

    const-string v6, "Unable to satisfy %s for %s at %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v8, 0x2

    aput-object v3, v7, v8

    invoke-direct {v5, v6, v7}, Lorg/simpleframework/xml/core/ValueRequiredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 646
    :cond_1
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v5}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v4

    .line 648
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 649
    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v5, v2, v4}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    goto :goto_0

    .line 652
    .end local v2    # "label":Lorg/simpleframework/xml/core/Label;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .locals 1
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "schema"    # Lorg/simpleframework/xml/core/Schema;
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
    .local v0, "section":Lorg/simpleframework/xml/core/Section;
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeVersion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 975
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 976
    return-void
.end method

.method private writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 5
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1196
    if-eqz p2, :cond_0

    .line 1197
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    .line 1198
    .local v0, "decorator":Lorg/simpleframework/xml/core/Decorator;
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1199
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v4, p2}, Lorg/simpleframework/xml/core/ObjectFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1200
    .local v3, "text":Ljava/lang/String;
    invoke-interface {p1, v2, v3}, Lorg/simpleframework/xml/stream/OutputNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v1

    .line 1202
    .local v1, "done":Lorg/simpleframework/xml/stream/OutputNode;
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 1204
    .end local v0    # "decorator":Lorg/simpleframework/xml/core/Decorator;
    .end local v1    # "done":Lorg/simpleframework/xml/stream/OutputNode;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 10
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1051
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getAttributes()Lorg/simpleframework/xml/core/LabelMap;

    move-result-object v0

    .line 1053
    .local v0, "attributes":Lorg/simpleframework/xml/core/LabelMap;
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/simpleframework/xml/core/Label;

    .line 1054
    .local v4, "label":Lorg/simpleframework/xml/core/Label;
    invoke-interface {v4}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    .line 1055
    .local v1, "contact":Lorg/simpleframework/xml/core/Contact;
    invoke-interface {v1, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1056
    .local v5, "value":Ljava/lang/Object;
    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v7, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v6, v7, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    .line 1058
    .local v2, "expect":Ljava/lang/Class;
    if-nez v5, :cond_0

    .line 1059
    iget-object v6, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v4, v6}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v5

    .line 1061
    :cond_0
    if-nez v5, :cond_1

    invoke-interface {v4}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1062
    new-instance v6, Lorg/simpleframework/xml/core/AttributeException;

    const-string v7, "Value for %s is null in %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-direct {v6, v7, v8}, Lorg/simpleframework/xml/core/AttributeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    .line 1064
    :cond_1
    invoke-direct {p0, p1, v5, v4}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 1066
    .end local v1    # "contact":Lorg/simpleframework/xml/core/Contact;
    .end local v2    # "expect":Ljava/lang/Class;
    .end local v4    # "label":Lorg/simpleframework/xml/core/Label;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Converter;)V
    .locals 0
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "convert"    # Lorg/simpleframework/xml/core/Converter;
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
    .locals 8
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1224
    if-eqz p2, :cond_2

    .line 1225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1226
    .local v5, "real":Ljava/lang/Class;
    invoke-interface {p3, v5}, Lorg/simpleframework/xml/core/Label;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    .line 1227
    .local v2, "match":Lorg/simpleframework/xml/core/Label;
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1228
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p3, v5}, Lorg/simpleframework/xml/core/Label;->getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;

    move-result-object v6

    .line 1229
    .local v6, "type":Lorg/simpleframework/xml/strategy/Type;
    invoke-interface {p1, v3}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v4

    .line 1231
    .local v4, "next":Lorg/simpleframework/xml/stream/OutputNode;
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1232
    invoke-direct {p0, v4, v6, v2}, Lorg/simpleframework/xml/core/Composite;->writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V

    .line 1234
    :cond_0
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, v4, p2, v6}, Lorg/simpleframework/xml/core/Composite;->isOverridden(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1235
    :cond_1
    iget-object v7, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v7}, Lorg/simpleframework/xml/core/Label;->getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;

    move-result-object v0

    .line 1236
    .local v0, "convert":Lorg/simpleframework/xml/core/Converter;
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v1

    .line 1238
    .local v1, "data":Z
    invoke-interface {v4, v1}, Lorg/simpleframework/xml/stream/OutputNode;->setData(Z)V

    .line 1239
    invoke-direct {p0, v4, p2, v0}, Lorg/simpleframework/xml/core/Composite;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Converter;)V

    .line 1242
    .end local v0    # "convert":Lorg/simpleframework/xml/core/Converter;
    .end local v1    # "data":Z
    .end local v2    # "match":Lorg/simpleframework/xml/core/Label;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "next":Lorg/simpleframework/xml/stream/OutputNode;
    .end local v5    # "real":Ljava/lang/Class;
    .end local v6    # "type":Lorg/simpleframework/xml/strategy/Type;
    :cond_2
    return-void
.end method

.method private writeElements(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 12
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1081
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1082
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p3, v4}, Lorg/simpleframework/xml/core/Section;->getSection(Ljava/lang/String;)Lorg/simpleframework/xml/core/Section;

    move-result-object v0

    .line 1084
    .local v0, "child":Lorg/simpleframework/xml/core/Section;
    if-eqz v0, :cond_1

    .line 1085
    invoke-interface {p1, v4}, Lorg/simpleframework/xml/stream/OutputNode;->getChild(Ljava/lang/String;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v5

    .line 1087
    .local v5, "next":Lorg/simpleframework/xml/stream/OutputNode;
    invoke-direct {p0, v5, p2, v0}, Lorg/simpleframework/xml/core/Composite;->writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    goto :goto_0

    .line 1089
    .end local v5    # "next":Lorg/simpleframework/xml/stream/OutputNode;
    :cond_1
    invoke-interface {p3, v4}, Lorg/simpleframework/xml/core/Section;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1090
    .local v6, "path":Ljava/lang/String;
    invoke-interface {p3, v6}, Lorg/simpleframework/xml/core/Section;->getElement(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;

    move-result-object v3

    .line 1091
    .local v3, "label":Lorg/simpleframework/xml/core/Label;
    iget-object v8, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v9, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v8, v9, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 1092
    .local v1, "expect":Ljava/lang/Class;
    iget-object v8, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v8, v3}, Lorg/simpleframework/xml/core/Criteria;->get(Lorg/simpleframework/xml/core/Label;)Lorg/simpleframework/xml/core/Variable;

    move-result-object v7

    .line 1094
    .local v7, "value":Lorg/simpleframework/xml/core/Variable;
    if-nez v7, :cond_0

    .line 1095
    if-nez v3, :cond_2

    .line 1096
    new-instance v8, Lorg/simpleframework/xml/core/ElementException;

    const-string v9, "Element \'%s\' not defined in %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    aput-object v1, v10, v11

    invoke-direct {v8, v9, v10}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v8

    .line 1098
    :cond_2
    invoke-direct {p0, p1, p2, p3, v3}, Lorg/simpleframework/xml/core/Composite;->writeUnion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0

    .line 1102
    .end local v0    # "child":Lorg/simpleframework/xml/core/Section;
    .end local v1    # "expect":Ljava/lang/Class;
    .end local v3    # "label":Lorg/simpleframework/xml/core/Label;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "value":Lorg/simpleframework/xml/core/Variable;
    :cond_3
    return-void
.end method

.method private writeNamespaces(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/core/Label;)V
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "type"    # Lorg/simpleframework/xml/strategy/Type;
    .param p3, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1271
    invoke-interface {p2}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 1272
    .local v1, "expect":Ljava/lang/Class;
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v3, v1}, Lorg/simpleframework/xml/core/Context;->getDecorator(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Decorator;

    move-result-object v2

    .line 1273
    .local v2, "primary":Lorg/simpleframework/xml/core/Decorator;
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    .line 1275
    .local v0, "decorator":Lorg/simpleframework/xml/core/Decorator;
    invoke-interface {v0, p1, v2}, Lorg/simpleframework/xml/core/Decorator;->decorate(Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Decorator;)V

    .line 1276
    return-void
.end method

.method private writeReplace(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1145
    if-eqz p1, :cond_0

    .line 1146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1147
    .local v1, "type":Ljava/lang/Class;
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v1}, Lorg/simpleframework/xml/core/Context;->getCaller(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Caller;

    move-result-object v0

    .line 1149
    .local v0, "caller":Lorg/simpleframework/xml/core/Caller;
    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Caller;->replace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1151
    .end local v0    # "caller":Lorg/simpleframework/xml/core/Caller;
    .end local v1    # "type":Ljava/lang/Class;
    .end local p1    # "source":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method private writeSection(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 8
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 991
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->getNamespaces()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v2

    .line 992
    .local v2, "scope":Lorg/simpleframework/xml/stream/NamespaceMap;
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 995
    invoke-interface {v2, v0}, Lorg/simpleframework/xml/stream/NamespaceMap;->getReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 997
    .local v1, "reference":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 998
    new-instance v3, Lorg/simpleframework/xml/core/ElementException;

    const-string v4, "Namespace prefix \'%s\' in %s is not in scope"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 1000
    :cond_0
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/OutputNode;->setReference(Ljava/lang/String;)V

    .line 1003
    .end local v1    # "reference":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeAttributes(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1004
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeElements(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1005
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/Composite;->writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V

    .line 1006
    return-void
.end method

.method private writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1290
    if-eqz p2, :cond_0

    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isTextList()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1291
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v2, p2}, Lorg/simpleframework/xml/core/ObjectFactory;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    .local v1, "text":Ljava/lang/String;
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    .line 1294
    .local v0, "data":Z
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/stream/OutputNode;->setData(Z)V

    .line 1295
    invoke-interface {p1, v1}, Lorg/simpleframework/xml/stream/OutputNode;->setValue(Ljava/lang/String;)V

    .line 1297
    .end local v0    # "data":Z
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;)V
    .locals 8
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1167
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Section;->getText()Lorg/simpleframework/xml/core/Label;

    move-result-object v2

    .line 1169
    .local v2, "label":Lorg/simpleframework/xml/core/Label;
    if-eqz v2, :cond_2

    .line 1170
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 1171
    .local v0, "contact":Lorg/simpleframework/xml/core/Contact;
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1172
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4, v5, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 1174
    .local v1, "expect":Ljava/lang/Class;
    if-nez v3, :cond_0

    .line 1175
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v4}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v3

    .line 1177
    :cond_0
    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1178
    new-instance v4, Lorg/simpleframework/xml/core/TextException;

    const-string v5, "Value for %s is null in %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/simpleframework/xml/core/TextException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 1180
    :cond_1
    invoke-direct {p0, p1, v3, v2}, Lorg/simpleframework/xml/core/Composite;->writeText(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 1182
    .end local v0    # "contact":Lorg/simpleframework/xml/core/Contact;
    .end local v1    # "expect":Ljava/lang/Class;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private writeUnion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Section;Lorg/simpleframework/xml/core/Label;)V
    .locals 8
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "section"    # Lorg/simpleframework/xml/core/Section;
    .param p4, "label"    # Lorg/simpleframework/xml/core/Label;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1117
    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 1118
    .local v0, "contact":Lorg/simpleframework/xml/core/Contact;
    invoke-interface {v0, p2}, Lorg/simpleframework/xml/core/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1119
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    iget-object v5, p0, Lorg/simpleframework/xml/core/Composite;->type:Lorg/simpleframework/xml/strategy/Type;

    invoke-interface {v4, v5, p2}, Lorg/simpleframework/xml/core/Context;->getType(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 1121
    .local v1, "expect":Ljava/lang/Class;
    if-nez v3, :cond_0

    invoke-interface {p4}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1122
    new-instance v4, Lorg/simpleframework/xml/core/ElementException;

    const-string v5, "Value for %s is null in %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p4, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/simpleframework/xml/core/ElementException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v4

    .line 1124
    :cond_0
    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/Composite;->writeReplace(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1126
    .local v2, "replace":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 1127
    invoke-direct {p0, p1, v2, p4}, Lorg/simpleframework/xml/core/Composite;->writeElement(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 1129
    :cond_1
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v4, p4, v2}, Lorg/simpleframework/xml/core/Criteria;->set(Lorg/simpleframework/xml/core/Label;Ljava/lang/Object;)V

    .line 1130
    return-void
.end method

.method private writeVersion(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    .locals 6
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .param p3, "schema"    # Lorg/simpleframework/xml/core/Schema;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getRevision()Lorg/simpleframework/xml/Version;

    move-result-object v3

    .line 1022
    .local v3, "version":Lorg/simpleframework/xml/Version;
    invoke-interface {p3}, Lorg/simpleframework/xml/core/Schema;->getVersion()Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    .line 1024
    .local v0, "label":Lorg/simpleframework/xml/core/Label;
    if-eqz v3, :cond_0

    .line 1025
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4}, Lorg/simpleframework/xml/core/Revision;->getDefault()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1026
    .local v1, "start":Ljava/lang/Double;
    invoke-interface {v3}, Lorg/simpleframework/xml/Version;->revision()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1028
    .local v2, "value":Ljava/lang/Double;
    iget-object v4, p0, Lorg/simpleframework/xml/core/Composite;->revision:Lorg/simpleframework/xml/core/Revision;

    invoke-virtual {v4, v2, v1}, Lorg/simpleframework/xml/core/Revision;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1029
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1030
    invoke-direct {p0, p1, v2, v0}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    .line 1036
    .end local v1    # "start":Ljava/lang/Double;
    .end local v2    # "value":Ljava/lang/Double;
    :cond_0
    :goto_0
    return-void

    .line 1033
    .restart local v1    # "start":Ljava/lang/Double;
    .restart local v2    # "value":Ljava/lang/Double;
    :cond_1
    invoke-direct {p0, p1, v2, v0}, Lorg/simpleframework/xml/core/Composite;->writeAttribute(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Label;)V

    goto :goto_0
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->factory:Lorg/simpleframework/xml/core/ObjectFactory;

    invoke-virtual {v2, p1}, Lorg/simpleframework/xml/core/ObjectFactory;->getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 140
    .local v1, "value":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 142
    .local v0, "type":Ljava/lang/Class;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->isReference()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v2

    .line 148
    :goto_0
    return-object v2

    .line 145
    :cond_0
    iget-object v2, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/Composite;->readPrimitive(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 148
    :cond_1
    invoke-direct {p0, p1, v1, v0}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Instance;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 169
    .local v2, "type":Ljava/lang/Class;
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v1

    .line 170
    .local v1, "schema":Lorg/simpleframework/xml/core/Schema;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v0

    .line 172
    .local v0, "caller":Lorg/simpleframework/xml/core/Caller;
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/Composite;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V

    .line 173
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->criteria:Lorg/simpleframework/xml/core/Criteria;

    invoke-interface {v3, p2}, Lorg/simpleframework/xml/core/Criteria;->commit(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/Caller;->validate(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/Caller;->commit(Ljava/lang/Object;)V

    .line 177
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Composite;->readResolve(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Caller;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    .locals 4
    .param p1, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 943
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 944
    .local v2, "type":Ljava/lang/Class;
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v3, v2}, Lorg/simpleframework/xml/core/Context;->getSchema(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Schema;

    move-result-object v1

    .line 945
    .local v1, "schema":Lorg/simpleframework/xml/core/Schema;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Schema;->getCaller()Lorg/simpleframework/xml/core/Caller;

    move-result-object v0

    .line 948
    .local v0, "caller":Lorg/simpleframework/xml/core/Caller;
    :try_start_0
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Schema;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    iget-object v3, p0, Lorg/simpleframework/xml/core/Composite;->primitive:Lorg/simpleframework/xml/core/Primitive;

    invoke-virtual {v3, p1, p2}, Lorg/simpleframework/xml/core/Primitive;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :goto_0
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/Caller;->complete(Ljava/lang/Object;)V

    .line 957
    return-void

    .line 951
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/Caller;->persist(Ljava/lang/Object;)V

    .line 952
    invoke-direct {p0, p1, p2, v1}, Lorg/simpleframework/xml/core/Composite;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;Lorg/simpleframework/xml/core/Schema;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 955
    :catchall_0
    move-exception v3

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/Caller;->complete(Ljava/lang/Object;)V

    throw v3
.end method
