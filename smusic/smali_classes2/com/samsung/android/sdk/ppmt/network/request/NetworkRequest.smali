.class public abstract Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public abstract getRequestBody()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation
.end method

.method public abstract getRequestMethod()I
.end method

.method public abstract getServerUrl()Ljava/lang/String;
.end method
