.class Lorg/simpleframework/xml/core/ElementMapParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "ElementMapParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/ElementMapParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/ElementMap;",
        ">;"
    }
.end annotation


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementMapParameter$Contact;->label:Ljava/lang/annotation/Annotation;

    check-cast v0, Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
