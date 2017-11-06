.class Lorg/simpleframework/xml/core/GetPart;
.super Ljava/lang/Object;
.source "GetPart.java"

# interfaces
.implements Lorg/simpleframework/xml/core/MethodPart;


# instance fields
.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final label:Ljava/lang/annotation/Annotation;

.field private final list:[Ljava/lang/annotation/Annotation;

.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private final type:Lorg/simpleframework/xml/core/MethodType;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1
    .param p1, "method"    # Lorg/simpleframework/xml/core/MethodName;
    .param p2, "label"    # Ljava/lang/annotation/Annotation;
    .param p3, "list"    # [Ljava/lang/annotation/Annotation;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->cache:Lorg/simpleframework/xml/util/Cache;

    .line 81
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    .line 82
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->name:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    .line 84
    iput-object p2, p0, Lorg/simpleframework/xml/core/GetPart;->label:Ljava/lang/annotation/Annotation;

    .line 85
    iput-object p3, p0, Lorg/simpleframework/xml/core/GetPart;->list:[Ljava/lang/annotation/Annotation;

    .line 86
    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v5, p0, Lorg/simpleframework/xml/core/GetPart;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v5}, Lorg/simpleframework/xml/util/Cache;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->list:[Ljava/lang/annotation/Annotation;

    .local v0, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 170
    .local v1, "entry":Ljava/lang/annotation/Annotation;
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 171
    .local v3, "key":Ljava/lang/Class;
    iget-object v5, p0, Lorg/simpleframework/xml/core/GetPart;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v5, v3, v1}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v1    # "entry":Ljava/lang/annotation/Annotation;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/Class;
    .end local v4    # "len$":I
    :cond_0
    iget-object v5, p0, Lorg/simpleframework/xml/core/GetPart;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v5, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/annotation/Annotation;

    return-object v5
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDependent()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependent(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDependents()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethodType()Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
