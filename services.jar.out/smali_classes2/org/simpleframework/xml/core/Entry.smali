.class Lorg/simpleframework/xml/core/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "entry"


# instance fields
.field private attribute:Z

.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private entry:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private keyType:Ljava/lang/Class;

.field private label:Lorg/simpleframework/xml/ElementMap;

.field private value:Ljava/lang/String;

.field private valueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementMap;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->attribute()Z

    move-result v0

    iput-boolean v0, p0, Lorg/simpleframework/xml/core/Entry;->attribute:Z

    .line 94
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->entry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    .line 95
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    .line 96
    invoke-interface {p2}, Lorg/simpleframework/xml/ElementMap;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    .line 98
    iput-object p2, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    .line 99
    return-void
.end method

.method private getDependent(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Contact;->getDependents()[Ljava/lang/Class;

    move-result-object v0

    .line 229
    array-length v1, v0

    if-lt v1, p1, :cond_0

    .line 232
    array-length v1, v0

    if-eqz v1, :cond_1

    .line 235
    aget-object v0, v0, p1

    return-object v0

    :cond_0
    const-class v0, Ljava/lang/Object;

    .line 230
    return-object v0

    :cond_1
    const-class v0, Ljava/lang/Object;

    .line 233
    return-object v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    return-object v0

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string/jumbo v0, "entry"

    .line 290
    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->entry:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    return-object v0

    .line 252
    :cond_1
    iput-object v1, p0, Lorg/simpleframework/xml/core/Entry;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKey(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Entry;->getKeyType()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 152
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lorg/simpleframework/xml/core/CompositeKey;

    invoke-direct {v1, p1, p0, v0}, Lorg/simpleframework/xml/core/CompositeKey;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1

    .line 153
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PrimitiveKey;

    invoke-direct {v1, p1, p0, v0}, Lorg/simpleframework/xml/core/PrimitiveKey;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1
.end method

.method protected getKeyType()Lorg/simpleframework/xml/strategy/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 188
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->keyType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    .line 190
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->getDependent(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->keyType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :goto_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    return-object v0

    .line 268
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    return-object v0

    .line 271
    :cond_1
    iput-object v1, p0, Lorg/simpleframework/xml/core/Entry;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Entry;->getValueType()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    .line 172
    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->isPrimitive(Lorg/simpleframework/xml/strategy/Type;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lorg/simpleframework/xml/core/CompositeValue;

    invoke-direct {v1, p1, p0, v0}, Lorg/simpleframework/xml/core/CompositeValue;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1

    .line 173
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PrimitiveValue;

    invoke-direct {v1, p1, p0, v0}, Lorg/simpleframework/xml/core/PrimitiveValue;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Entry;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v1
.end method

.method protected getValueType()Lorg/simpleframework/xml/strategy/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    new-instance v0, Lorg/simpleframework/xml/core/ClassType;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ClassType;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    invoke-interface {v0}, Lorg/simpleframework/xml/ElementMap;->valueType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    .line 209
    iget-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Entry;->getDependent(I)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/Entry;->valueType:Ljava/lang/Class;

    goto :goto_0
.end method

.method public isAttribute()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/Entry;->attribute:Z

    return v0
.end method

.method public isInline()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/Entry;->isAttribute()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "%s on %s"

    const/4 v1, 0x2

    .line 317
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/Entry;->label:Lorg/simpleframework/xml/ElementMap;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/Entry;->contact:Lorg/simpleframework/xml/core/Contact;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
