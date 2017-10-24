.class Lorg/simpleframework/xml/core/ParameterFactory;
.super Ljava/lang/Object;
.source "ParameterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;
    }
.end annotation


# instance fields
.field private final format:Lorg/simpleframework/xml/stream/Format;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Support;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/Support;->getFormat()Lorg/simpleframework/xml/stream/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ParameterFactory;->format:Lorg/simpleframework/xml/stream/Format;

    .line 65
    return-void
.end method

.method private getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    instance-of v0, p1, Lorg/simpleframework/xml/Element;

    if-nez v0, :cond_0

    .line 141
    instance-of v0, p1, Lorg/simpleframework/xml/ElementList;

    if-nez v0, :cond_1

    .line 144
    instance-of v0, p1, Lorg/simpleframework/xml/ElementArray;

    if-nez v0, :cond_2

    .line 147
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMapUnion;

    if-nez v0, :cond_3

    .line 150
    instance-of v0, p1, Lorg/simpleframework/xml/ElementListUnion;

    if-nez v0, :cond_4

    .line 153
    instance-of v0, p1, Lorg/simpleframework/xml/ElementUnion;

    if-nez v0, :cond_5

    .line 156
    instance-of v0, p1, Lorg/simpleframework/xml/ElementMap;

    if-nez v0, :cond_6

    .line 159
    instance-of v0, p1, Lorg/simpleframework/xml/Attribute;

    if-nez v0, :cond_7

    .line 162
    instance-of v0, p1, Lorg/simpleframework/xml/Text;

    if-nez v0, :cond_8

    .line 165
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string/jumbo v1, "Annotation %s not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 139
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementParameter;

    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 142
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementListParameter;

    const-class v2, Lorg/simpleframework/xml/ElementList;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 145
    :cond_2
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementArrayParameter;

    const-class v2, Lorg/simpleframework/xml/ElementArray;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 148
    :cond_3
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementMapUnionParameter;

    const-class v2, Lorg/simpleframework/xml/ElementMapUnion;

    const-class v3, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 151
    :cond_4
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementListUnionParameter;

    const-class v2, Lorg/simpleframework/xml/ElementListUnion;

    const-class v3, Lorg/simpleframework/xml/ElementList;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 154
    :cond_5
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementUnionParameter;

    const-class v2, Lorg/simpleframework/xml/ElementUnion;

    const-class v3, Lorg/simpleframework/xml/Element;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 157
    :cond_6
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/ElementMapParameter;

    const-class v2, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 160
    :cond_7
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/AttributeParameter;

    const-class v2, Lorg/simpleframework/xml/Attribute;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 163
    :cond_8
    new-instance v0, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    const-class v1, Lorg/simpleframework/xml/core/TextParameter;

    const-class v2, Lorg/simpleframework/xml/Text;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ParameterFactory;->getBuilder(Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ParameterFactory$ParameterBuilder;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/simpleframework/xml/core/ParameterFactory;->getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/ParameterFactory;->getConstructor(Ljava/lang/annotation/Annotation;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 99
    if-nez p3, :cond_0

    .line 102
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    iget-object v2, p0, Lorg/simpleframework/xml/core/ParameterFactory;->format:Lorg/simpleframework/xml/stream/Format;

    aput-object v2, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0

    :cond_0
    const/4 v1, 0x5

    .line 100
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    aput-object p3, v1, v4

    iget-object v2, p0, Lorg/simpleframework/xml/core/ParameterFactory;->format:Lorg/simpleframework/xml/stream/Format;

    aput-object v2, v1, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method
