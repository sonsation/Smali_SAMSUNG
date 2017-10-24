.class abstract Lorg/simpleframework/xml/stream/EventToken;
.super Ljava/lang/Object;
.source "EventToken.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventNode;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLine()I
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 45
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 105
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    return-object v0
.end method

.method public isEnd()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public isText()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/stream/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 117
    return-object v0
.end method
