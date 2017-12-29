.class public Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;
.super Ljava/lang/Object;
.source "DeliveryReportApiRequestVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "DeliveryReportVO"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private deviceType:Ljava/lang/String;
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

.field private messageId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/convert/Convert;
        value = Lcom/samsung/android/rlc/util/XMLUtil$EmptyElementConverter;
    .end annotation
.end field

.field private pushType:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
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

.field private rlcStsCode:Ljava/lang/String;
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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->messageId:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcId:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->deviceType:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->pushType:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorCode:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorDescription:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcStsCode:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public getRlcId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcId:Ljava/lang/String;

    return-object v0
.end method

.method public getRlcStsCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcStsCode:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceType"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->deviceType:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorCode:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setErrorDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDescription"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->errorDescription:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setMessageId(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->messageId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->pushType:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setRlcId(Ljava/lang/String;)V
    .locals 0
    .param p1, "rlcId"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setRlcStsCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "rlcStsCode"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->rlcStsCode:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<DeliveryReportVO>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<messageId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</messageId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getRlcId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "<rlcId>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getRlcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</rlcId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "<deviceType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</deviceType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getPushType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<pushType>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getPushType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</pushType>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "<errorCode>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</errorCode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getErrorDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "<errorDescription>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiRequestVO;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</errorDescription>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_5
    const-string v1, "</DeliveryReportVO>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
