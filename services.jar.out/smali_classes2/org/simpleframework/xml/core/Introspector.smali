.class Lorg/simpleframework/xml/core/Introspector;
.super Ljava/lang/Object;
.source "Introspector.java"


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/Contact;

.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final marker:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/core/Label;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->marker:Ljava/lang/annotation/Annotation;

    .line 71
    iput-object p1, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 72
    iput-object p3, p0, Lorg/simpleframework/xml/core/Introspector;->format:Lorg/simpleframework/xml/stream/Format;

    .line 73
    iput-object p2, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    .line 74
    return-void
.end method

.method private getDefault()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 220
    :cond_0
    return-object v0
.end method

.method private getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Introspector;->getRoot(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    return-object v0
.end method

.method private getRoot(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    move-object v0, p1

    .line 154
    :goto_0
    if-nez v0, :cond_0

    .line 162
    return-object v2

    .line 155
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Introspector;->getRoot(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 157
    if-nez v1, :cond_1

    .line 160
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_1
    return-object v1
.end method

.method private getRoot(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-class v0, Lorg/simpleframework/xml/Root;

    .line 178
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Root;

    .line 180
    if-nez v0, :cond_0

    .line 188
    return-object v2

    .line 181
    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/Root;->name()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Introspector;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-static {v1}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Introspector;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :goto_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Introspector;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Introspector;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 236
    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lorg/simpleframework/xml/core/EmptyExpression;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Introspector;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/EmptyExpression;-><init>(Lorg/simpleframework/xml/stream/Format;)V

    return-object v0

    .line 237
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PathParser;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    iget-object v3, p0, Lorg/simpleframework/xml/core/Introspector;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v1, v0, v2, v3}, Lorg/simpleframework/xml/core/PathParser;-><init>(Ljava/lang/String;Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/Format;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lorg/simpleframework/xml/core/Introspector;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v1}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    :goto_0
    return-object v0

    .line 203
    :cond_0
    invoke-direct {p0}, Lorg/simpleframework/xml/core/Introspector;->getDefault()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    const-class v1, Lorg/simpleframework/xml/Path;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/core/Contact;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/Path;

    .line 253
    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Lorg/simpleframework/xml/Path;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    return-object v2
.end method

.method public isEmpty(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 270
    if-nez p1, :cond_0

    .line 273
    return v1

    .line 271
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "%s on %s"

    const/4 v1, 0x2

    .line 286
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/Introspector;->marker:Ljava/lang/annotation/Annotation;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/Introspector;->contact:Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
