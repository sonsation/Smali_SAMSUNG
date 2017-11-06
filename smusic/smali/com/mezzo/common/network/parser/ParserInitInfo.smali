.class public Lcom/mezzo/common/network/parser/ParserInitInfo;
.super Lcom/mezzo/common/network/parser/ParserNTCommonResponse;
.source "ParserInitInfo.java"


# instance fields
.field private data:Lcom/mezzo/common/network/data/DataNTInitInfo;


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
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    if-nez v3, :cond_0

    .line 19
    new-instance v3, Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-direct {v3}, Lcom/mezzo/common/network/data/DataNTInitInfo;-><init>()V

    iput-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    .line 23
    :goto_0
    invoke-static {p2}, Lcom/mezzo/common/network/parser/ParserInitInfo;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "jsonToString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jsonToString : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "init_info"

    invoke-virtual {p0, v0, v3}, Lcom/mezzo/common/network/parser/ParserInitInfo;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 27
    .local v2, "rootObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 28
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    const-string/jumbo v4, "version"

    invoke-virtual {p0, v2, v4}, Lcom/mezzo/common/network/parser/ParserInitInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setVersion(Ljava/lang/String;)V

    .line 29
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    const-string/jumbo v4, "pkg_target_use"

    invoke-virtual {p0, v2, v4}, Lcom/mezzo/common/network/parser/ParserInitInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setPkg_target_use(Ljava/lang/String;)V

    .line 30
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    const-string/jumbo v4, "pkg_target_info_ver"

    invoke-virtual {p0, v2, v4}, Lcom/mezzo/common/network/parser/ParserInitInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setPkg_target_info_ver(Ljava/lang/String;)V

    .line 31
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    const-string/jumbo v4, "pkg_target_period"

    invoke-virtual {p0, v2, v4}, Lcom/mezzo/common/network/parser/ParserInitInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setPkg_target_period(Ljava/lang/String;)V

    .line 32
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    const-string v4, "conf_period"

    invoke-virtual {p0, v2, v4}, Lcom/mezzo/common/network/parser/ParserInitInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setConf_period(Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    const-string v4, "ab_interval"

    invoke-virtual {p0, v2, v4}, Lcom/mezzo/common/network/parser/ParserInitInfo;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/data/DataNTInitInfo;->setAb_interval(Ljava/lang/String;)V

    .line 34
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTInitInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 35
    const/4 v3, 0x1

    .line 37
    :goto_1
    return v3

    .line 21
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "jsonToString":Ljava/lang/String;
    .end local v2    # "rootObject":Lorg/json/JSONObject;
    :cond_0
    iget-object v3, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTInitInfo;->clear()V

    goto :goto_0

    .line 37
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonToString":Ljava/lang/String;
    .restart local v2    # "rootObject":Lorg/json/JSONObject;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mezzo/common/network/parser/ParserInitInfo;->data:Lcom/mezzo/common/network/data/DataNTInitInfo;

    return-object v0
.end method
