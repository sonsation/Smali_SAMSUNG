.class final Lorg/simpleframework/xml/stream/ProviderFactory;
.super Ljava/lang/Object;
.source "ProviderFactory.java"


# direct methods
.method public static getInstance()Lorg/simpleframework/xml/stream/Provider;
    .locals 2

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Lorg/simpleframework/xml/stream/StreamProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/StreamProvider;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 49
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 50
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v1, Lorg/simpleframework/xml/stream/PullProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/PullProvider;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    new-instance v1, Lorg/simpleframework/xml/stream/DocumentProvider;

    invoke-direct {v1}, Lorg/simpleframework/xml/stream/DocumentProvider;-><init>()V

    goto :goto_0
.end method
