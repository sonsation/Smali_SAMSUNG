.class Lorg/simpleframework/xml/core/ElementLabel;
.super Lorg/simpleframework/xml/core/TemplateLabel;
.source "ElementLabel.java"


# instance fields
.field private cache:Lorg/simpleframework/xml/core/Expression;

.field private data:Z

.field private decorator:Lorg/simpleframework/xml/core/Decorator;

.field private detail:Lorg/simpleframework/xml/core/Introspector;

.field private expect:Ljava/lang/Class;

.field private format:Lorg/simpleframework/xml/stream/Format;

.field private label:Lorg/simpleframework/xml/Element;

.field private name:Ljava/lang/String;

.field private override:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private required:Z

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Element;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/simpleframework/xml/core/TemplateLabel;-><init>()V

    .line 111
    new-instance v0, Lorg/simpleframework/xml/core/Introspector;

    invoke-direct {v0, p1, p0, p3}, Lorg/simpleframework/xml/core/Introspector;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    .line 112
    new-instance v0, Lorg/simpleframework/xml/core/Qualifier;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Qualifier;-><init>(Lorg/simpleframework/xml/core/Contact;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    .line 113
    invoke-interface {p2}, Lorg/simpleframework/xml/Element;->required()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->required:Z

    .line 114
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->type:Ljava/lang/Class;

    .line 115
    invoke-interface {p2}, Lorg/simpleframework/xml/Element;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/String;

    .line 116
    invoke-interface {p2}, Lorg/simpleframework/xml/Element;->type()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    .line 117
    invoke-interface {p2}, Lorg/simpleframework/xml/Element;->data()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->data:Z

    .line 118
    iput-object p3, p0, Lorg/simpleframework/xml/core/ElementLabel;->format:Lorg/simpleframework/xml/stream/Format;

    .line 119
    iput-object p2, p0, Lorg/simpleframework/xml/core/ElementLabel;->label:Lorg/simpleframework/xml/Element;

    .line 120
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->label:Lorg/simpleframework/xml/Element;

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 166
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    .line 172
    new-instance v1, Lorg/simpleframework/xml/core/Composite;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    invoke-direct {v1, p1, v0, v2}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-object v1

    .line 167
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/Primitive;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/Primitive;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1

    .line 170
    :cond_1
    new-instance v1, Lorg/simpleframework/xml/core/Composite;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/Composite;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->decorator:Lorg/simpleframework/xml/core/Decorator;

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->cache:Lorg/simpleframework/xml/core/Expression;

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->cache:Lorg/simpleframework/xml/core/Expression;

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->cache:Lorg/simpleframework/xml/core/Expression;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->name:Ljava/lang/String;

    return-object v0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/Format;->getStyle()Lorg/simpleframework/xml/stream/Style;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/Introspector;->getName()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOverride()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->override:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->path:Ljava/lang/String;

    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getName()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Expression;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 151
    new-instance v1, Lorg/simpleframework/xml/core/OverrideType;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ElementLabel;->expect:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Lorg/simpleframework/xml/core/OverrideType;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-object v1

    .line 149
    :cond_0
    return-object v0
.end method

.method public isData()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->data:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->required:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementLabel;->detail:Lorg/simpleframework/xml/core/Introspector;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Introspector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
