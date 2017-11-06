.class public Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;
.source "GetCancelStatusRequest.java"


# instance fields
.field private mAppid:Ljava/lang/String;

.field private mMid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;->mMid:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;->mAppid:Ljava/lang/String;

    .line 15
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
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestMethod()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sdk.peppermint.samsung.com/v2/app/marketing/status/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;->mAppid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
