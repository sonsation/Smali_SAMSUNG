.class public Lcom/mezzo/common/network/data/DataNTEnd;
.super Lcom/mezzo/common/network/data/DataNTCommon;
.source "DataNTEnd.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private ad_count:Ljava/lang/String;

.field private ad_type:Ljava/lang/String;

.field private listEndAD:Lcom/mezzo/common/network/data/DataListEndAD;

.field private product:Ljava/lang/String;

.field private product_attr:Ljava/lang/String;

.field private product_type:Ljava/lang/String;

.field private request_id:Ljava/lang/String;

.field private use_ssp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mezzo/common/network/data/DataNTCommon;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/mezzo/common/network/data/DataNTCommon;->clearResponse()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->request_id:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->ad_type:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->use_ssp:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product_type:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product_attr:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->ad_count:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->listEndAD:Lcom/mezzo/common/network/data/DataListEndAD;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->listEndAD:Lcom/mezzo/common/network/data/DataListEndAD;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataListEndAD;->clear()V

    .line 54
    :cond_0
    return-void
.end method

.method public getAd_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->ad_count:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->ad_type:Ljava/lang/String;

    return-object v0
.end method

.method public getListEndAD()Lcom/mezzo/common/network/data/DataListEndAD;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->listEndAD:Lcom/mezzo/common/network/data/DataListEndAD;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_attr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product_attr:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product_type:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->request_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_ssp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTEnd;->use_ssp:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_count(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_count"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->ad_count:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setAd_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_type"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->ad_type:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setListEndAD(Lcom/mezzo/common/network/data/DataListEndAD;)V
    .locals 0
    .param p1, "listEndAD"    # Lcom/mezzo/common/network/data/DataListEndAD;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->listEndAD:Lcom/mezzo/common/network/data/DataListEndAD;

    .line 131
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setProduct_attr(Ljava/lang/String;)V
    .locals 0
    .param p1, "product_attr"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product_attr:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setProduct_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "product_type"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product_type:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRequest_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "request_id"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->request_id:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUse_ssp(Ljava/lang/String;)V
    .locals 0
    .param p1, "use_ssp"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->use_ssp:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataNTEnd {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
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

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "request_id : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTEnd;->request_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTEnd;->ad_type:Ljava/lang/String;

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

    const-string/jumbo v2, "use_ssp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTEnd;->use_ssp:Ljava/lang/String;

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

    const-string/jumbo v2, "product_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product_type:Ljava/lang/String;

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

    const-string/jumbo v2, "product_attr : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product_attr:Ljava/lang/String;

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

    const-string/jumbo v2, "product : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTEnd;->product:Ljava/lang/String;

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

    const-string v2, "ad_count : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTEnd;->ad_count:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->listEndAD:Lcom/mezzo/common/network/data/DataListEndAD;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/mezzo/common/network/data/DataNTEnd;->listEndAD:Lcom/mezzo/common/network/data/DataListEndAD;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataListEndAD;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mezzo/common/network/data/DataNTEnd;->listEndAD:Lcom/mezzo/common/network/data/DataListEndAD;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataListEndAD;->toString()Ljava/lang/String;

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

    .line 32
    :cond_0
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
