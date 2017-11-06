.class public Lcom/mezzo/common/network/parser/ParserEnd;
.super Lcom/mezzo/common/network/parser/ParserNTCommonResponse;
.source "ParserEnd.java"


# instance fields
.field private data:Lcom/mezzo/common/network/data/DataNTEnd;


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
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    if-nez v9, :cond_1

    .line 23
    new-instance v9, Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-direct {v9}, Lcom/mezzo/common/network/data/DataNTEnd;-><init>()V

    iput-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    .line 27
    :goto_0
    invoke-static {p2}, Lcom/mezzo/common/network/parser/ParserEnd;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

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

    invoke-virtual {p0, v4, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 31
    .local v8, "rootObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 32
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-virtual {p0, v8, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getResponse(Lorg/json/JSONObject;Lcom/mezzo/common/network/data/DataNTCommon;)Z

    .line 33
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    const-string/jumbo v10, "request_id"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTEnd;->setRequest_id(Ljava/lang/String;)V

    .line 34
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    const-string v10, "ad_type"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTEnd;->setAd_type(Ljava/lang/String;)V

    .line 35
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    const-string/jumbo v10, "use_ssp"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTEnd;->setUse_ssp(Ljava/lang/String;)V

    .line 36
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    const-string/jumbo v10, "product_type"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTEnd;->setProduct_type(Ljava/lang/String;)V

    .line 37
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    const-string/jumbo v10, "product_attr"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTEnd;->setProduct_attr(Ljava/lang/String;)V

    .line 38
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    const-string/jumbo v10, "product"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTEnd;->setProduct(Ljava/lang/String;)V

    .line 39
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    const-string v10, "ad_count"

    invoke-virtual {p0, v8, v10}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mezzo/common/network/data/DataNTEnd;->setAd_count(Ljava/lang/String;)V

    .line 40
    const-string v9, "ad"

    invoke-virtual {p0, v8, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 41
    .local v1, "adList":Lorg/json/JSONArray;
    new-instance v6, Lcom/mezzo/common/network/data/DataListEndAD;

    invoke-direct {v6}, Lcom/mezzo/common/network/data/DataListEndAD;-><init>()V

    .line 42
    .local v6, "listEndAD":Lcom/mezzo/common/network/data/DataListEndAD;
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 44
    .local v2, "adListLen":I
    if-lez v2, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v2, :cond_2

    .line 69
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    .end local v2    # "adListLen":I
    .end local v3    # "i":I
    :cond_0
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-virtual {v9, v6}, Lcom/mezzo/common/network/data/DataNTEnd;->setListEndAD(Lcom/mezzo/common/network/data/DataListEndAD;)V

    .line 70
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-virtual {v9}, Lcom/mezzo/common/network/data/DataNTEnd;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 71
    const/4 v9, 0x1

    .line 74
    .end local v1    # "adList":Lorg/json/JSONArray;
    .end local v6    # "listEndAD":Lcom/mezzo/common/network/data/DataListEndAD;
    :goto_2
    return v9

    .line 25
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "jsonToString":Ljava/lang/String;
    .end local v8    # "rootObject":Lorg/json/JSONObject;
    :cond_1
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-virtual {v9}, Lcom/mezzo/common/network/data/DataNTEnd;->clear()V

    goto/16 :goto_0

    .line 47
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    .restart local v1    # "adList":Lorg/json/JSONArray;
    .restart local v2    # "adListLen":I
    .restart local v3    # "i":I
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "jsonToString":Ljava/lang/String;
    .restart local v6    # "listEndAD":Lcom/mezzo/common/network/data/DataListEndAD;
    .restart local v8    # "rootObject":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p0, v1, v3}, Lcom/mezzo/common/network/parser/ParserEnd;->getObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v7

    .line 48
    .local v7, "object":Lorg/json/JSONObject;
    new-instance v0, Lcom/mezzo/common/network/data/DataIEndAD;

    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    invoke-direct {v0}, Lcom/mezzo/common/network/data/DataIEndAD;-><init>()V

    .line 49
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    const-string v9, "cmp_no"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setCmp_no(Ljava/lang/String;)V

    .line 50
    const-string v9, "ad_group_no"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setAd_group_no(Ljava/lang/String;)V

    .line 51
    const-string v9, "ad_no"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setAd_no(Ljava/lang/String;)V

    .line 52
    const-string v9, "img_path"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setImg_path(Ljava/lang/String;)V

    .line 53
    const-string v9, "img_name"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setImg_name(Ljava/lang/String;)V

    .line 54
    const-string v9, "click_option"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setClick_option(Ljava/lang/String;)V

    .line 55
    const-string v9, "click_action_type"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setClick_action_type(Ljava/lang/String;)V

    .line 56
    const-string v9, "landing_url"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setLanding_url(Ljava/lang/String;)V

    .line 57
    const-string v9, "bg_color"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setBg_color(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v9, "width"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setWidth(Ljava/lang/String;)V

    .line 59
    const-string v9, "height"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setHeight(Ljava/lang/String;)V

    .line 60
    const-string v9, "end_datetime"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setEnd_datetime(Ljava/lang/String;)V

    .line 61
    const-string v9, "impression_api"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setImpression_api(Ljava/lang/String;)V

    .line 62
    const-string v9, "click_api"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setClick_api(Ljava/lang/String;)V

    .line 63
    const-string v9, "click_tracking_api"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setClick_tracking_api(Ljava/lang/String;)V

    .line 64
    const-string v9, "html"

    invoke-virtual {p0, v7, v9}, Lcom/mezzo/common/network/parser/ParserEnd;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/mezzo/common/network/data/DataIEndAD;->setHtml(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6, v0}, Lcom/mezzo/common/network/data/DataListEndAD;->add(Lcom/mezzo/common/network/data/IData;)I

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 73
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataIEndAD;
    .end local v1    # "adList":Lorg/json/JSONArray;
    .end local v2    # "adListLen":I
    .end local v3    # "i":I
    .end local v6    # "listEndAD":Lcom/mezzo/common/network/data/DataListEndAD;
    .end local v7    # "object":Lorg/json/JSONObject;
    :cond_3
    iget-object v9, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    invoke-virtual {v9}, Lcom/mezzo/common/network/data/DataNTEnd;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 74
    const/4 v9, 0x0

    goto/16 :goto_2
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mezzo/common/network/parser/ParserEnd;->data:Lcom/mezzo/common/network/data/DataNTEnd;

    return-object v0
.end method
