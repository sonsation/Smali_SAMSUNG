.class abstract Lorg/simpleframework/xml/core/ParameterContact;
.super Ljava/lang/Object;
.source "ParameterContact.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Contact;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/core/Contact;"
    }
.end annotation


# instance fields
.field protected final factory:Ljava/lang/reflect/Constructor;

.field protected final index:I

.field protected final label:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final labels:[Ljava/lang/annotation/Annotation;

.field protected final owner:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Constructor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Constructor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    aget-object v0, v0, p3

    iput-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->labels:[Ljava/lang/annotation/Annotation;

    .line 73
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->owner:Ljava/lang/Class;

    .line 74
    iput-object p2, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    .line 75
    iput p3, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    .line 76
    iput-object p1, p0, Lorg/simpleframework/xml/core/ParameterContact;->label:Ljava/lang/annotation/Annotation;

    .line 77
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    return-object v0
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 173
    iget-object v1, p0, Lorg/simpleframework/xml/core/ParameterContact;->labels:[Ljava/lang/annotation/Annotation;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 180
    return-object v0

    .line 173
    :cond_0
    aget-object v3, v1, v0

    .line 174
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 176
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    return-object v3
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->owner:Ljava/lang/Class;

    return-object v0
.end method

.method public getDependent()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    iget v1, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    invoke-static {v0, v1}, Lorg/simpleframework/xml/core/Reflector;->getParameterDependent(Ljava/lang/reflect/Constructor;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDependents()[Ljava/lang/Class;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    iget v1, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    invoke-static {v0, v1}, Lorg/simpleframework/xml/core/Reflector;->getParameterDependents(Ljava/lang/reflect/Constructor;I)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getType()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "parameter %s of constructor %s"

    const/4 v1, 0x2

    .line 203
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
