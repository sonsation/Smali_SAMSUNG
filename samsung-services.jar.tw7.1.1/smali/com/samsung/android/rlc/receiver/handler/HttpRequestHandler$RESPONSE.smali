.class public Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RESPONSE"
.end annotation


# instance fields
.field httpStatusCode:I

.field response:Ljava/lang/String;

.field responseBean:Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

.field responseDeliveryBean:Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->httpStatusCode:I

    return v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->response:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->responseBean:Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    return-object v0
.end method

.method public getResponseDeliveryBean()Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->responseDeliveryBean:Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;

    return-object v0
.end method

.method public setHttpStatusCode(I)V
    .locals 0
    .param p1, "httpStatusCode"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->httpStatusCode:I

    .line 173
    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->response:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setResponseBean(Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;)V
    .locals 0
    .param p1, "responseBean"    # Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->responseBean:Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    .line 164
    return-void
.end method

.method public setResponseDeliveryBean(Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;)V
    .locals 0
    .param p1, "responseDeliveryBean"    # Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->responseDeliveryBean:Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;

    .line 182
    return-void
.end method
