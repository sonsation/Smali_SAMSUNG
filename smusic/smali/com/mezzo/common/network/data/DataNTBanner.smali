.class public Lcom/mezzo/common/network/data/DataNTBanner;
.super Lcom/mezzo/common/network/data/DataNTCommon;
.source "DataNTBanner.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private ad_count:Ljava/lang/String;

.field private ad_type:Ljava/lang/String;

.field private listBannerAD:Lcom/mezzo/common/network/data/DataListBannerAD;

.field private product:Ljava/lang/String;

.field private product_attr:Ljava/lang/String;

.field private product_type:Ljava/lang/String;

.field private request_id:Ljava/lang/String;

.field private rotatetime:Ljava/lang/String;

.field private use_ssp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mezzo/common/network/data/DataNTCommon;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/mezzo/common/network/data/DataNTCommon;->clearResponse()V

    .line 45
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTBanner;->setRotatetime(Ljava/lang/String;)V

    .line 46
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTBanner;->setRequest_id(Ljava/lang/String;)V

    .line 47
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTBanner;->setAd_type(Ljava/lang/String;)V

    .line 48
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTBanner;->setUse_ssp(Ljava/lang/String;)V

    .line 49
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTBanner;->setProduct_type(Ljava/lang/String;)V

    .line 50
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTBanner;->setProduct_attr(Ljava/lang/String;)V

    .line 51
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTBanner;->setProduct(Ljava/lang/String;)V

    .line 52
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTBanner;->setAd_count(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataListBannerAD;->clear()V

    .line 58
    :cond_0
    return-void
.end method

.method public getAd_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTBanner;->ad_count:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTBanner;->ad_type:Ljava/lang/String;

    return-object v0
.end method

.method public getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTBanner;->listBannerAD:Lcom/mezzo/common/network/data/DataListBannerAD;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTBanner;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_attr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTBanner;->product_attr:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTBanner;->product_type:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTBanner;->request_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRotatetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTBanner;->rotatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_ssp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTBanner;->use_ssp:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_count(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_count"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTBanner;->ad_count:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setAd_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_type"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTBanner;->ad_type:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setListBannerAD(Lcom/mezzo/common/network/data/DataListBannerAD;)V
    .locals 0
    .param p1, "listBannerAD"    # Lcom/mezzo/common/network/data/DataListBannerAD;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTBanner;->listBannerAD:Lcom/mezzo/common/network/data/DataListBannerAD;

    .line 122
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTBanner;->product:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setProduct_attr(Ljava/lang/String;)V
    .locals 0
    .param p1, "product_attr"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTBanner;->product_attr:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setProduct_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "product_type"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTBanner;->product_type:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setRequest_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "request_id"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTBanner;->request_id:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setRotatetime(Ljava/lang/String;)V
    .locals 0
    .param p1, "rotatetime"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTBanner;->rotatetime:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setUse_ssp(Ljava/lang/String;)V
    .locals 0
    .param p1, "use_ssp"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTBanner;->use_ssp:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataNTBanner {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/mezzo/common/network/data/DataNTCommon;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "rotatetime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getRotatetime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request_id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getRequest_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getAd_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "use_ssp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getUse_ssp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "product_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getProduct_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "product_attr : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getProduct_attr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "product : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getAd_count()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataListBannerAD;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTBanner;->getListBannerAD()Lcom/mezzo/common/network/data/DataListBannerAD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataListBannerAD;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_0
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
