.class interface abstract Lorg/simpleframework/xml/core/Instantiator;
.super Ljava/lang/Object;
.source "Instantiator.java"


# virtual methods
.method public abstract getCreators()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Creator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstance(Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isDefault()Z
.end method
