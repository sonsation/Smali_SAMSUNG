.class Lorg/simpleframework/xml/core/ElementMapUnionParameter;
.super Lorg/simpleframework/xml/core/TemplateParameter;
.source "ElementMapUnionParameter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;
    }
.end annotation


# instance fields
.field private final contact:Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;

.field private final expression:Lorg/simpleframework/xml/core/Expression;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final label:Lorg/simpleframework/xml/core/Label;

.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Ljava/lang/Class;


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->index:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isPrimitive()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapUnionParameter;->contact:Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ElementMapUnionParameter$Contact;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
