.class public Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;
.super Ljava/lang/Object;
.source "DeliveryReportApiResponseVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "DeliveryReportVO"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:Ljava/lang/String;
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
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->errorCode:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->rlcStsCode:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRlcStsCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->rlcStsCode:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->errorCode:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRlcStsCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "rlcStsCode"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->rlcStsCode:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "<DeliveryReportVO>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<errorCode>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</errorCode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->getRlcStsCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "<rlcStsCode>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/rlc/vo/DeliveryReportApiResponseVO;->getRlcStsCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</rlcStsCode>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_1
    const-string v1, "</DeliveryReportVO>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
