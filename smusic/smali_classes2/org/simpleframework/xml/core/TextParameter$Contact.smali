.class Lorg/simpleframework/xml/core/TextParameter$Contact;
.super Lorg/simpleframework/xml/core/ParameterContact;
.source "TextParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/TextParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/core/ParameterContact",
        "<",
        "Lorg/simpleframework/xml/Text;",
        ">;"
    }
.end annotation


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const-string v0, ""

    return-object v0
.end method
