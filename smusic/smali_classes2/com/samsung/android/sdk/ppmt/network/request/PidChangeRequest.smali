.class public Lcom/samsung/android/sdk/ppmt/network/request/PidChangeRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;
.source "PidChangeRequest.java"


# instance fields
.field private mBody:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "body"    # Lorg/json/JSONObject;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/network/request/PidChangeRequest;->mBody:Lorg/json/JSONObject;

    .line 19
    return-void
.end method


# virtual methods
.method public getJsonRequestBody()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/PidChangeRequest;->mBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRequestMethod()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "https://sdk.peppermint.samsung.com/v2/app/pidchange"

    return-object v0
.end method

.method public isGzipEnabled()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
