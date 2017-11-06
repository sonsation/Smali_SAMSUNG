.class Lorg/simpleframework/xml/core/ConversionInstance;
.super Ljava/lang/Object;
.source "ConversionInstance.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Instance;


# instance fields
.field private final context:Lorg/simpleframework/xml/core/Context;

.field private final convert:Ljava/lang/Class;

.field private final value:Lorg/simpleframework/xml/strategy/Value;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V
    .locals 0
    .param p1, "context"    # Lorg/simpleframework/xml/core/Context;
    .param p2, "value"    # Lorg/simpleframework/xml/strategy/Value;
    .param p3, "convert"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/simpleframework/xml/core/ConversionInstance;->context:Lorg/simpleframework/xml/core/Context;

    .line 67
    iput-object p3, p0, Lorg/simpleframework/xml/core/ConversionInstance;->convert:Ljava/lang/Class;

    .line 68
    iput-object p2, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    .line 69
    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v1}, Lorg/simpleframework/xml/strategy/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 87
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    iget-object v1, p0, Lorg/simpleframework/xml/core/ConversionInstance;->convert:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Lorg/simpleframework/xml/core/ConversionInstance;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "created":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/ConversionInstance;->setInstance(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v2, p0, Lorg/simpleframework/xml/core/ConversionInstance;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {v2, p1}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object v1

    .line 101
    .local v1, "value":Lorg/simpleframework/xml/core/Instance;
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Instance;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "object":Ljava/lang/Object;
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/simpleframework/xml/core/ConversionInstance;->convert:Ljava/lang/Class;

    return-object v0
.end method

.method public isReference()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0}, Lorg/simpleframework/xml/strategy/Value;->isReference()Z

    move-result v0

    return v0
.end method

.method public setInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/simpleframework/xml/core/ConversionInstance;->value:Lorg/simpleframework/xml/strategy/Value;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/strategy/Value;->setValue(Ljava/lang/Object;)V

    .line 120
    :cond_0
    return-object p1
.end method
