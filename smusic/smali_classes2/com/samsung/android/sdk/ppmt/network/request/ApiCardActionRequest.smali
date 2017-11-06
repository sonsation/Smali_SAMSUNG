.class public Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;
.source "ApiCardActionRequest.java"


# instance fields
.field private final mApiUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiUrl"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;->mApiUrl:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getRequestBody()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestMethod()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;->mApiUrl:Ljava/lang/String;

    return-object v0
.end method
