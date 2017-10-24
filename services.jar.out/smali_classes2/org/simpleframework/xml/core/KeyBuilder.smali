.class Lorg/simpleframework/xml/core/KeyBuilder;
.super Ljava/lang/Object;
.source "KeyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/core/KeyBuilder$Key;,
        Lorg/simpleframework/xml/core/KeyBuilder$KeyType;
    }
.end annotation


# instance fields
.field private final label:Lorg/simpleframework/xml/core/Label;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Label;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/simpleframework/xml/core/KeyBuilder;->label:Lorg/simpleframework/xml/core/Label;

    .line 48
    return-void
.end method

.method private getKey(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPaths()[Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->getKey([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz p1, :cond_0

    .line 82
    new-instance v1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    invoke-direct {v1, p1, v0}, Lorg/simpleframework/xml/core/KeyBuilder$Key;-><init>(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;Ljava/lang/String;)V

    return-object v1

    .line 80
    :cond_0
    return-object v0
.end method

.method private getKey([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    array-length v2, p1

    if-gtz v2, :cond_1

    .line 106
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 101
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lorg/simpleframework/xml/core/KeyBuilder$KeyType;->ELEMENT:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->getKey(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lorg/simpleframework/xml/core/KeyBuilder$KeyType;->ATTRIBUTE:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/KeyBuilder;->getKey(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
