.class public Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;
.super Ljava/lang/Object;
.source "DeliveryReportHandler.java"


# static fields
.field private static final REPORT_ALREADY:I = 0x190

.field private static final REPORT_SUCCESS:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeliveryErrorDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 103
    move-object v0, p1

    .line 129
    .local v0, "ret":Ljava/lang/String;
    return-object p1
.end method

.method public static getDeliveryReportBody(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "pushType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 81
    new-instance v1, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;

    invoke-direct {v1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;-><init>()V

    .line 82
    .local v1, "report":Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    invoke-virtual {v1, p1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setMessageId(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p3}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setPushType(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, p2}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setErrorCode(Ljava/lang/String;)V

    .line 86
    invoke-static {p0, p2}, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->getDeliveryErrorDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setErrorDescription(Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "init"

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setRlcStsCode(Ljava/lang/String;)V

    .line 93
    :goto_0
    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverReportPUSH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v1

    .line 90
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->setRlcStsCode(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v1    # "report":Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Device ID is null."

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static makeDeliveryReportBundle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "pushType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->getDeliveryReportBody(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 71
    const-string v1, "pushType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v9, 0x44aa200

    .line 22
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    const-string v8, "DeliverReportManager run"

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 25
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "body"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;

    .line 26
    .local v1, "body":Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    const-string v7, "pushType"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "pushType":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getDeliveryURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 29
    .local v6, "uri":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 30
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    const-string v8, "unrecognized push type!! delivery repory ignored!!"

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 34
    :cond_0
    invoke-static {p0, v1, v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v5

    .line 36
    .local v5, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    if-eqz v5, :cond_4

    .line 37
    invoke-virtual {v5}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_1

    invoke-virtual {v5}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v7

    const/16 v8, 0x190

    if-ne v7, v8, :cond_3

    .line 40
    :cond_1
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PUSH_DELIVERY_REPORT RESULT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseDeliveryBean()Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->getErrorCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v7, "retry_16"

    const-string v8, ""

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .end local v1    # "body":Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "pushType":Ljava/lang/String;
    .end local v5    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 45
    .restart local v1    # "body":Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "pushType":Ljava/lang/String;
    .restart local v5    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_3
    const-string v7, "delivery_backoff"

    invoke-static {p0, v7}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, "backoffTimeMs":I
    if-gt v0, v9, :cond_2

    .line 47
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PUSH_DELIVERY_REPORT - retry-alarm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0    # "backoffTimeMs":I
    .end local v1    # "body":Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "pushType":Ljava/lang/String;
    .end local v5    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v6    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "body":Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "pushType":Ljava/lang/String;
    .restart local v5    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v7, "delivery_backoff"

    invoke-static {p0, v7}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRetryBackoff(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 56
    .restart local v0    # "backoffTimeMs":I
    if-gt v0, v9, :cond_2

    .line 57
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/DeliveryReportHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PUSH_DELIVERY_REPORT - retry-alarm: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
