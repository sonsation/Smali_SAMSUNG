.class public Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;
.source "TrackingRequest.java"


# instance fields
.field private mBody:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "body"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;->mBody:Lorg/json/JSONObject;

    .line 20
    return-void
.end method


# virtual methods
.method public getJsonRequestBody()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;->appendIdsBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/TrackingRequest;->mBody:Lorg/json/JSONObject;

    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v1
.end method

.method public getRequestMethod()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "https://sdk.peppermint.samsung.com/v2/app/tracking"

    return-object v0
.end method

.method public isGzipEnabled()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method
