.class Lorg/simpleframework/xml/convert/Reference;
.super Ljava/lang/Object;
.source "Reference.java"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private actual:Ljava/lang/Class;

.field private data:Ljava/lang/Object;

.field private value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lorg/simpleframework/xml/convert/Reference;->actual:Ljava/lang/Class;

    .line 61
    iput-object p1, p0, Lorg/simpleframework/xml/convert/Reference;->value:Lorg/simpleframework/xml/strategy/Value;

    .line 62
    iput-object p2, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->actual:Ljava/lang/Class;

    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public isReference()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->value:Lorg/simpleframework/xml/strategy/Value;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    iput-object p1, p0, Lorg/simpleframework/xml/convert/Reference;->data:Ljava/lang/Object;

    .line 122
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Reference;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
