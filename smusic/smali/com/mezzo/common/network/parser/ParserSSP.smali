.class public Lcom/mezzo/common/network/parser/ParserSSP;
.super Lcom/mezzo/common/network/parser/ParserNTCommonResponse;
.source "ParserSSP.java"


# instance fields
.field private data:Lcom/mezzo/common/network/data/DataNTSSP;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mezzo/common/network/parser/ParserNTCommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public doParser(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    if-nez v3, :cond_1

    .line 19
    new-instance v3, Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-direct {v3}, Lcom/mezzo/common/network/data/DataNTSSP;-><init>()V

    iput-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    .line 23
    :goto_0
    invoke-static {p2}, Lcom/mezzo/common/network/parser/ParserSSP;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "jsonToString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jsonToString : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "jsonObject":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {p0, v1, v3}, Lcom/mezzo/common/network/parser/ParserSSP;->getResponse(Lorg/json/JSONObject;Lcom/mezzo/common/network/data/DataNTCommon;)Z

    move-result v0

    .line 27
    .local v0, "isResult":Z
    if-eqz v0, :cond_2

    .line 28
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getError_code()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "ad_pd_attr"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setAd_pd_attr(Ljava/lang/String;)V

    .line 30
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "code_type"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setCode_type(Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "img_path"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setImg_path(Ljava/lang/String;)V

    .line 32
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "landing_url"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setLanding_url(Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string/jumbo v4, "width"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setWidth(Ljava/lang/String;)V

    .line 34
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "height"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setHeight(Ljava/lang/String;)V

    .line 35
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string/jumbo v4, "ssp_imp"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setSsp_imp(Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "dsp_imp"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setDsp_imp(Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string/jumbo v4, "ssp_click"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setSsp_click(Ljava/lang/String;)V

    .line 38
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    sget-object v4, Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;->NO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setChk_ssp_click(Ljava/lang/String;)V

    .line 39
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "dsp_click"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setDsp_click(Ljava/lang/String;)V

    .line 40
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "html"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setHtml(Ljava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "adm"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setAdm(Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getAd_pd_attr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTSSP;->getAd_pd_attr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getAd_pd_attr()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    const-string v4, "bg_color"

    invoke-virtual {p0, v1, v4}, Lcom/mezzo/common/network/parser/ParserSSP;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTSSP;->setBg_color(Ljava/lang/String;)V

    .line 48
    :cond_0
    const/4 v3, 0x1

    .line 50
    :goto_1
    return v3

    .line 21
    .end local v0    # "isResult":Z
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "jsonToString":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->clear()V

    goto/16 :goto_0

    .line 50
    .restart local v0    # "isResult":Z
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonToString":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mezzo/common/network/parser/ParserSSP;->data:Lcom/mezzo/common/network/data/DataNTSSP;

    return-object v0
.end method
