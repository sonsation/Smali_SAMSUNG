.class Lorg/simpleframework/xml/core/MethodContact;
.super Ljava/lang/Object;
.source "MethodContact.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Contact;


# instance fields
.field private get:Lorg/simpleframework/xml/core/MethodPart;

.field private item:Ljava/lang/Class;

.field private items:[Ljava/lang/Class;

.field private label:Ljava/lang/annotation/Annotation;

.field private name:Ljava/lang/String;

.field private owner:Ljava/lang/Class;

.field private set:Lorg/simpleframework/xml/core/MethodPart;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodPart;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->owner:Ljava/lang/Class;

    .line 99
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    .line 100
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getDependents()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->items:[Ljava/lang/Class;

    .line 101
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getDependent()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->item:Ljava/lang/Class;

    .line 102
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->type:Ljava/lang/Class;

    .line 103
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    .line 105
    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    .line 106
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
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
    .line 163
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 168
    if-eqz v0, :cond_2

    .line 171
    :cond_0
    return-object v0

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    return-object v0

    .line 168
    :cond_2
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v1, :cond_0

    .line 169
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->owner:Ljava/lang/Class;

    return-object v0
.end method

.method public getDependent()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->item:Ljava/lang/Class;

    return-object v0
.end method

.method public getDependents()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->items:[Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Lorg/simpleframework/xml/core/MethodPart;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getWrite()Lorg/simpleframework/xml/core/MethodPart;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 242
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v1, :cond_0

    .line 248
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void

    .line 246
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/MethodException;

    const-string/jumbo v2, "Property \'%s\' is read only in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "method \'%s\'"

    const/4 v1, 0x1

    .line 274
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
