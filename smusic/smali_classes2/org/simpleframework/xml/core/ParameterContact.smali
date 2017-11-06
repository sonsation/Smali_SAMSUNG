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


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 147
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 6
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
    .line 173
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->labels:[Ljava/lang/annotation/Annotation;

    .local v0, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 174
    .local v3, "label":Ljava/lang/annotation/Annotation;
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 176
    .local v1, "expect":Ljava/lang/Class;
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 180
    .end local v1    # "expect":Ljava/lang/Class;
    .end local v3    # "label":Ljava/lang/annotation/Annotation;
    :goto_1
    return-object v3

    .line 173
    .restart local v1    # "expect":Ljava/lang/Class;
    .restart local v3    # "label":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "expect":Ljava/lang/Class;
    .end local v3    # "label":Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->owner:Ljava/lang/Class;

    return-object v0
.end method

.method public getDependent()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 110
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
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
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
    iget-object v0, p0, Lorg/simpleframework/xml/core/ParameterContact;->factory:Ljava/lang/reflect/Constructor;

    iget v1, p0, Lorg/simpleframework/xml/core/ParameterContact;->index:I

    invoke-static {v0, v1}, Lorg/simpleframework/xml/core/Reflector;->getParameterDependents(Ljava/lang/reflect/Constructor;I)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 98
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
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
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 160
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 203
    .local p0, "this":Lorg/simpleframework/xml/core/ParameterContact;, "Lorg/simpleframework/xml/core/ParameterContact<TT;>;"
    const-string v0, "parameter %s of constructor %s"

    const/4 v1, 0x2

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
