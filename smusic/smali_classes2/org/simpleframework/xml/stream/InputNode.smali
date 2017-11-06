.class public interface abstract Lorg/simpleframework/xml/stream/InputNode;
.super Ljava/lang/Object;
.source "InputNode.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/Node;


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
.end method

.method public abstract getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/xml/stream/NodeMap",
            "<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNext()Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getParent()Lorg/simpleframework/xml/stream/InputNode;
.end method

.method public abstract getPosition()Lorg/simpleframework/xml/stream/Position;
.end method

.method public abstract isElement()Z
.end method

.method public abstract isEmpty()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract skip()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
