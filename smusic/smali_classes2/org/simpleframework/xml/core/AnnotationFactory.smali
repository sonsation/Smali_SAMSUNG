.class Lorg/simpleframework/xml/core/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"


# instance fields
.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final required:Z


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1
    .param p1, "detail"    # Lorg/simpleframework/xml/core/Detail;
    .param p2, "support"    # Lorg/simpleframework/xml/core/Support;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Detail;->isRequired()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->required:Z

    .line 69
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/Support;->getFormat()Lorg/simpleframework/xml/stream/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->format:Lorg/simpleframework/xml/stream/Format;

    .line 70
    return-void
.end method

.method private getClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    const-class v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private getInstance(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 112
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 114
    .local v0, "entry":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 123
    :goto_0
    return-object v2

    .line 118
    :cond_0
    const-class v2, Lorg/simpleframework/xml/ElementArray;

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    goto :goto_0

    .line 120
    :cond_1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lorg/simpleframework/xml/core/AnnotationFactory;->isAttribute()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    const-class v2, Lorg/simpleframework/xml/Attribute;

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    goto :goto_0

    .line 123
    :cond_2
    const-class v2, Lorg/simpleframework/xml/Element;

    invoke-direct {p0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    goto :goto_0
.end method

.method private getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "label"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method private getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "label"    # Ljava/lang/Class;
    .param p3, "attribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lorg/simpleframework/xml/core/AnnotationHandler;

    iget-boolean v2, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->required:Z

    invoke-direct {v0, p2, v2, p3}, Lorg/simpleframework/xml/core/AnnotationHandler;-><init>(Ljava/lang/Class;ZZ)V

    .line 153
    .local v0, "handler":Lorg/simpleframework/xml/core/AnnotationHandler;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 155
    .local v1, "list":[Ljava/lang/Class;
    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Annotation;

    return-object v2
.end method

.method private isAttribute()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v2, p0, Lorg/simpleframework/xml/core/AnnotationFactory;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/Format;->getVerbosity()Lorg/simpleframework/xml/stream/Verbosity;

    move-result-object v0

    .line 230
    .local v0, "verbosity":Lorg/simpleframework/xml/stream/Verbosity;
    if-eqz v0, :cond_0

    .line 231
    sget-object v2, Lorg/simpleframework/xml/stream/Verbosity;->LOW:Lorg/simpleframework/xml/stream/Verbosity;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    .line 233
    :cond_0
    return v1
.end method

.method private isPrimitive(Ljava/lang/Class;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x1

    .line 208
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 211
    :cond_1
    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_0

    .line 214
    const-class v1, Ljava/lang/Character;

    if-eq p1, v1, :cond_0

    .line 217
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    goto :goto_0
.end method

.method private isPrimitiveKey([Ljava/lang/Class;)Z
    .locals 5
    .param p1, "dependents"    # [Ljava/lang/Class;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    if-eqz p1, :cond_3

    array-length v4, p1

    if-lez v4, :cond_3

    .line 182
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 183
    .local v0, "parent":Ljava/lang/Class;
    aget-object v1, p1, v3

    .line 185
    .local v1, "type":Ljava/lang/Class;
    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    .end local v0    # "parent":Ljava/lang/Class;
    .end local v1    # "type":Ljava/lang/Class;
    :cond_0
    :goto_0
    return v2

    .line 189
    .restart local v0    # "parent":Ljava/lang/Class;
    .restart local v1    # "type":Ljava/lang/Class;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    :cond_2
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_0

    .end local v0    # "parent":Ljava/lang/Class;
    .end local v1    # "type":Ljava/lang/Class;
    :cond_3
    move v2, v3

    .line 195
    goto :goto_0
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "dependents"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 87
    .local v0, "loader":Ljava/lang/ClassLoader;
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;->isPrimitiveKey([Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/simpleframework/xml/core/AnnotationFactory;->isAttribute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-class v1, Lorg/simpleframework/xml/ElementMap;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;Z)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 91
    :cond_0
    const-class v1, Lorg/simpleframework/xml/ElementMap;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-class v1, Lorg/simpleframework/xml/ElementList;

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    goto :goto_0
.end method
