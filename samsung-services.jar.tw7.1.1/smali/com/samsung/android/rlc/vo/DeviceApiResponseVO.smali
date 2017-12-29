.class public Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
.super Ljava/lang/Object;
.source "DeviceApiResponseVO.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "response"
.end annotation


# instance fields
.field private bankName:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private cert:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private cmd:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private data:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private dmAddr:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private errorCode:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private errorDescription:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private imei:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private imeiHash:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private interval:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private mgAddr:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private nonceSvr:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private oprtId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private pin:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private requestor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private resultSvr:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private retryIntervalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        entry = "retryInterval"
        name = "retryIntervalList"
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private rlcId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private sign:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private tel:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->rlcId:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->oprtId:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->status:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->dmAddr:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->mgAddr:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->nonceSvr:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cmd:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->resultSvr:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->tel:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorCode:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorDescription:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imei:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imeiHash:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->icon:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->sign:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->interval:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->bankName:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->data:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->retryIntervalList:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public getBankName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->bankName:Ljava/lang/String;

    return-object v0
.end method

.method public getCert()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public getCertByte()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    return-object v1
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDmAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->dmAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImeiHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imeiHash:Ljava/lang/String;

    return-object v0
.end method

.method public getInterval()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessageByte()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public getMessageByte()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    .line 285
    :cond_0
    return-object v1
.end method

.method public getMgAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->mgAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getNonceSvr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->nonceSvr:Ljava/lang/String;

    return-object v0
.end method

.method public getOprtId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->oprtId:Ljava/lang/String;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    return-object v0
.end method

.method public getPinByte()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    .line 249
    :cond_0
    return-object v1
.end method

.method public getRequestor()Ljava/lang/String;
    .locals 4

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestorByte()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 299
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public getRequestorByte()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    return-object v1
.end method

.method public getResultSvr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->resultSvr:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryIntervalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->retryIntervalList:Ljava/util/List;

    return-object v0
.end method

.method public getRlcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->rlcId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignByte()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->sign:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->sign:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    .line 126
    :cond_0
    return-object v1
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->tel:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenByte()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    return-object v1
.end method

.method public setBankName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bankName"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->bankName:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setCert(Ljava/lang/String;)V
    .locals 0
    .param p1, "cert"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cert:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->cmd:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->data:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDmAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "dmAddr"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->dmAddr:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorCode:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setErrorDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->errorDescription:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->icon:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImeiHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "imeiHash"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->imeiHash:Ljava/lang/String;

    return-void
.end method

.method public setInterval(Ljava/lang/String;)V
    .locals 0
    .param p1, "interval"    # Ljava/lang/String;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->interval:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->message:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setMgAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mgAddr"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->mgAddr:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setNonceSvr(Ljava/lang/String;)V
    .locals 0
    .param p1, "nonceSvr"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->nonceSvr:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setOprtId(Ljava/lang/String;)V
    .locals 0
    .param p1, "oprtId"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->oprtId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->pin:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setRequestor(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestor"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->requestor:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setResultSvr(Ljava/lang/String;)V
    .locals 0
    .param p1, "resultSvr"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->resultSvr:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setRetryIntervalList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "retryIntervalList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->retryIntervalList:Ljava/util/List;

    .line 120
    return-void
.end method

.method public setRlcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "rlcId"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->rlcId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->status:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 0
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->tel:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->token:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "RLCCLIENT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMEI Hanhed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImeiHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v3, "<response>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "<pin>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</pin>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRlcId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 333
    const-string v3, "<rlcId>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRlcId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</rlcId>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 335
    const-string v3, "<oprtId>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</oprtId>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 337
    const-string v3, "<status>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</status>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getDmAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 339
    const-string v3, "<dmAddr>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getDmAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</dmAddr>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCert()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 341
    const-string v3, "<cert>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</cert>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getNonceSvr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 343
    const-string v3, "<nonceSvr>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getNonceSvr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</nonceSvr>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "<cmd>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</cmd>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 346
    const-string v3, "<resultSvr>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</resultSvr>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 348
    const-string v3, "<token>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</token>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 351
    const-string v3, "<requestor>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</requestor>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_a
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 353
    const-string v3, "<tel>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</tel>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 355
    const-string v3, "<message>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</message>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImeiHash()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 357
    const-string v3, "<imeiHash>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImeiHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</imeiHash>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 359
    const-string v3, "<errorCode>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</errorCode>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getErrorDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 361
    const-string v3, "<errorDescription>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</errorDescription>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 363
    const-string v3, "<data>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</data>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_10
    iget-object v3, p0, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->retryIntervalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_11

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRetryIntervalList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "retryInterval$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 366
    .local v1, "retryInterval":Ljava/lang/String;
    const-string v3, "<retryIntervalList>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</retryIntervalList>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 369
    .end local v1    # "retryInterval":Ljava/lang/String;
    .end local v2    # "retryInterval$iterator":Ljava/util/Iterator;
    :cond_11
    const-string v3, "</response>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
