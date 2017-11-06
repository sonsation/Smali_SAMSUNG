.class public Lcom/mezzo/common/network/parser/ParserBanner;
.super Lcom/mezzo/common/network/parser/ParserNTCommonResponse;
.source "ParserBanner.java"


# instance fields
.field private data:Lcom/mezzo/common/network/data/DataNTBanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mezzo/common/network/parser/ParserNTCommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public doParser(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    if-nez v9, :cond_1

    .line 23
    new-instance v9, Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-direct {v9}, Lcom/mezzo/common/network/data/DataNTBanner;-><init>()V

    iput-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    .line 27
    :goto_0
    invoke-static {p2}, Lcom/mezzo/common/network/parser/ParserBanner;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "jsonToString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "jsonToString : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 29
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "adsinfo"

    invoke-virtual {p0, v4, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 31
    .local v8, "rootObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 32
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {p0, v8, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getResponse(Lorg/json/JSONObject;Lcom/mezzo/common/network/data/DataNTCommon;)Z

    .line 33
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    const-string/jumbo v10, "rotatetime"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTBanner;->setRotatetime(Ljava/lang/String;)V

    .line 34
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    const-string/jumbo v10, "request_id"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTBanner;->setRequest_id(Ljava/lang/String;)V

    .line 35
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    const-string v10, "ad_type"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTBanner;->setAd_type(Ljava/lang/String;)V

    .line 36
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    const-string/jumbo v10, "use_ssp"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTBanner;->setUse_ssp(Ljava/lang/String;)V

    .line 37
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    const-string/jumbo v10, "product_type"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTBanner;->setProduct_type(Ljava/lang/String;)V

    .line 38
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    const-string/jumbo v10, "product_attr"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTBanner;->setProduct_attr(Ljava/lang/String;)V

    .line 39
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    const-string/jumbo v10, "product"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTBanner;->setProduct(Ljava/lang/String;)V

    .line 40
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    const-string v10, "ad_count"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTBanner;->setAd_count(Ljava/lang/String;)V

    .line 41
    const-string v9, "ad"

    invoke-virtual {p0, v8, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 42
    .local v1, "adList":Lorg/json/JSONArray;
    new-instance v6, Lcom/mezzo/common/network/data/DataListBannerAD;

    invoke-direct {v6}, Lcom/mezzo/common/network/data/DataListBannerAD;-><init>()V

    .line 43
    .local v6, "listBannerAD":Lcom/mezzo/common/network/data/DataListBannerAD;
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 45
    .local v2, "adListLen":I
    if-lez v2, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v2, :cond_2

    .line 70
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .end local v2    # "adListLen":I
    .end local v3    # "i":I
    :cond_0
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v9, v6}, Lcom/mezzo/common/network/data/DataNTBanner;->setListBannerAD(Lcom/mezzo/common/network/data/DataListBannerAD;)V

    .line 71
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v9}, Lcom/mezzo/common/network/data/DataNTBanner;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 72
    const/4 v9, 0x1

    .line 75
    .end local v1    # "adList":Lorg/json/JSONArray;
    .end local v6    # "listBannerAD":Lcom/mezzo/common/network/data/DataListBannerAD;
    :goto_2
    return v9

    .line 25
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonToString":Ljava/lang/String;
    .end local v8    # "rootObject":Lorg/json/JSONObject;
    :cond_1
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v9}, Lcom/mezzo/common/network/data/DataNTBanner;->clear()V

    goto/16 :goto_0

    .line 48
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .restart local v1    # "adList":Lorg/json/JSONArray;
    .restart local v2    # "adListLen":I
    .restart local v3    # "i":I
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonToString":Ljava/lang/String;
    .restart local v6    # "listBannerAD":Lcom/mezzo/common/network/data/DataListBannerAD;
    .restart local v8    # "rootObject":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/mezzo/common/network/parser/ParserBanner;->getObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 49
    .local v7, "object":Lorg/json/JSONObject;
    new-instance v0, Lcom/mezzo/common/network/data/DataBannerAD;

    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    invoke-direct {v0}, Lcom/mezzo/common/network/data/DataBannerAD;-><init>()V

    .line 50
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    const-string v9, "cmp_no"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setCmp_no(Ljava/lang/String;)V

    .line 51
    const-string v9, "ad_group_no"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setAd_group_no(Ljava/lang/String;)V

    .line 52
    const-string v9, "ad_no"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setAd_no(Ljava/lang/String;)V

    .line 53
    const-string v9, "img_path"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setImg_path(Ljava/lang/String;)V

    .line 54
    const-string v9, "img_name"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setImg_name(Ljava/lang/String;)V

    .line 55
    const-string v9, "click_option"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setClick_option(Ljava/lang/String;)V

    .line 56
    const-string v9, "click_action_type"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setClick_action_type(Ljava/lang/String;)V

    .line 57
    const-string v9, "landing_url"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setLanding_url(Ljava/lang/String;)V

    .line 58
    const-string v9, "bg_color"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setBg_color(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v9, "width"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setWidth(Ljava/lang/String;)V

    .line 60
    const-string v9, "height"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setHeight(Ljava/lang/String;)V

    .line 61
    const-string v9, "end_datetime"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setEnd_datetime(Ljava/lang/String;)V

    .line 62
    const-string v9, "impression_api"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setImpression_api(Ljava/lang/String;)V

    .line 63
    const-string v9, "click_api"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setClick_api(Ljava/lang/String;)V

    .line 64
    const-string v9, "click_tracking_api"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setClick_tracking_api(Ljava/lang/String;)V

    .line 65
    const-string v9, "html"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserBanner;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataBannerAD;->setHtml(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v6, v0}, Lcom/mezzo/common/network/data/DataListBannerAD;->add(Lcom/mezzo/common/network/data/IData;)I

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 74
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataBannerAD;
    .end local v1    # "adList":Lorg/json/JSONArray;
    .end local v2    # "adListLen":I
    .end local v3    # "i":I
    .end local v6    # "listBannerAD":Lcom/mezzo/common/network/data/DataListBannerAD;
    .end local v7    # "object":Lorg/json/JSONObject;
    :cond_3
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    invoke-virtual {v9}, Lcom/mezzo/common/network/data/DataNTBanner;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 75
    const/4 v9, 0x0

    goto/16 :goto_2
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mezzo/common/network/parser/ParserBanner;->data:Lcom/mezzo/common/network/data/DataNTBanner;

    return-object v0
.end method
