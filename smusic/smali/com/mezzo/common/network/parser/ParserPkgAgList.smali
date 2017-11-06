.class public Lcom/mezzo/common/network/parser/ParserPkgAgList;
.super Lcom/mezzo/common/network/parser/ParserNTCommonResponse;
.source "ParserPkgAgList.java"


# instance fields
.field private data:Lcom/mezzo/common/network/data/DataNTPkgAgList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mezzo/common/network/parser/ParserNTCommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public doParser(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 25
    new-instance v18, Lcom/mezzo/common/network/data/DataNTPkgAgList;

    invoke-direct/range {v18 .. v18}, Lcom/mezzo/common/network/data/DataNTPkgAgList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    .line 29
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 30
    .local v10, "jsonToString":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "jsonToString : "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 31
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v18, "pkginfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 33
    .local v14, "rootObject":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setPackage_info(Ljava/lang/String;)V

    .line 34
    if-eqz v14, :cond_7

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    move-object/from16 v18, v0

    const-string/jumbo v19, "version"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setVersion(Ljava/lang/String;)V

    .line 36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    move-object/from16 v18, v0

    const-string v19, "error_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setError_code(Ljava/lang/String;)V

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    move-object/from16 v18, v0

    const-string/jumbo v19, "section_count"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setSection_count(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v18, "section"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 39
    .local v16, "sectionList":Lorg/json/JSONArray;
    new-instance v12, Lcom/mezzo/common/network/data/DataListSection;

    invoke-direct {v12}, Lcom/mezzo/common/network/data/DataListSection;-><init>()V

    .line 40
    .local v12, "listSection":Lcom/mezzo/common/network/data/DataListSection;
    if-eqz v16, :cond_0

    .line 41
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 42
    .local v13, "listSectionLen":I
    if-lez v13, :cond_0

    .line 43
    const/4 v15, 0x0

    .line 44
    .local v15, "section":Lcom/mezzo/common/network/data/DataSection;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-lt v8, v13, :cond_2

    .line 79
    .end local v8    # "i":I
    .end local v13    # "listSectionLen":I
    .end local v15    # "section":Lcom/mezzo/common/network/data/DataSection;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->setListSection(Lcom/mezzo/common/network/data/DataListSection;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 81
    const/16 v18, 0x1

    .line 84
    .end local v12    # "listSection":Lcom/mezzo/common/network/data/DataListSection;
    .end local v16    # "sectionList":Lorg/json/JSONArray;
    :goto_2
    return v18

    .line 27
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "jsonToString":Ljava/lang/String;
    .end local v14    # "rootObject":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->clear()V

    goto/16 :goto_0

    .line 45
    .restart local v8    # "i":I
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "jsonToString":Ljava/lang/String;
    .restart local v12    # "listSection":Lcom/mezzo/common/network/data/DataListSection;
    .restart local v13    # "listSectionLen":I
    .restart local v14    # "rootObject":Lorg/json/JSONObject;
    .restart local v15    # "section":Lcom/mezzo/common/network/data/DataSection;
    .restart local v16    # "sectionList":Lorg/json/JSONArray;
    :cond_2
    new-instance v15, Lcom/mezzo/common/network/data/DataSection;

    .end local v15    # "section":Lcom/mezzo/common/network/data/DataSection;
    invoke-direct {v15}, Lcom/mezzo/common/network/data/DataSection;-><init>()V

    .line 46
    .restart local v15    # "section":Lcom/mezzo/common/network/data/DataSection;
    if-eqz v15, :cond_4

    .line 47
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v17

    .line 48
    .local v17, "sectionObj":Lorg/json/JSONObject;
    const-string/jumbo v18, "publisher_no"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/mezzo/common/network/data/DataSection;->setPublisher_no(Ljava/lang/String;)V

    .line 49
    const-string v18, "media_no"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/mezzo/common/network/data/DataSection;->setMedia_no(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v18, "section_no"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/mezzo/common/network/data/DataSection;->setSection_no(Ljava/lang/String;)V

    .line 51
    const-string v18, "ad_count"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/mezzo/common/network/data/DataSection;->setAd_count(Ljava/lang/String;)V

    .line 52
    const-string v18, "ad"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 53
    .local v4, "adList":Lorg/json/JSONArray;
    new-instance v11, Lcom/mezzo/common/network/data/DataListAD;

    invoke-direct {v11}, Lcom/mezzo/common/network/data/DataListAD;-><init>()V

    .line 54
    .local v11, "listAD":Lcom/mezzo/common/network/data/DataListAD;
    if-eqz v4, :cond_3

    .line 55
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 56
    .local v5, "adListLen":I
    if-lez v5, :cond_3

    .line 57
    const/4 v7, 0x0

    .line 58
    .local v7, "dataAD":Lcom/mezzo/common/network/data/DataAD;
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_3
    if-lt v3, v5, :cond_5

    .line 72
    .end local v3    # "a":I
    .end local v5    # "adListLen":I
    .end local v7    # "dataAD":Lcom/mezzo/common/network/data/DataAD;
    :cond_3
    invoke-virtual {v15, v11}, Lcom/mezzo/common/network/data/DataSection;->setListAD(Lcom/mezzo/common/network/data/DataListAD;)V

    .line 74
    .end local v4    # "adList":Lorg/json/JSONArray;
    .end local v11    # "listAD":Lcom/mezzo/common/network/data/DataListAD;
    .end local v17    # "sectionObj":Lorg/json/JSONObject;
    :cond_4
    invoke-virtual {v12, v15}, Lcom/mezzo/common/network/data/DataListSection;->add(Lcom/mezzo/common/network/data/IData;)I

    .line 44
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 59
    .restart local v3    # "a":I
    .restart local v4    # "adList":Lorg/json/JSONArray;
    .restart local v5    # "adListLen":I
    .restart local v7    # "dataAD":Lcom/mezzo/common/network/data/DataAD;
    .restart local v11    # "listAD":Lcom/mezzo/common/network/data/DataListAD;
    .restart local v17    # "sectionObj":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    .line 60
    .local v6, "adObj":Lorg/json/JSONObject;
    if-eqz v6, :cond_6

    .line 61
    new-instance v7, Lcom/mezzo/common/network/data/DataAD;

    .end local v7    # "dataAD":Lcom/mezzo/common/network/data/DataAD;
    invoke-direct {v7}, Lcom/mezzo/common/network/data/DataAD;-><init>()V

    .line 62
    .restart local v7    # "dataAD":Lcom/mezzo/common/network/data/DataAD;
    const-string v18, "ad_group_no"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/mezzo/common/network/data/DataAD;->setAd_group_no(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v18, "pkg_target"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkg_target(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v18, "pkg_target_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkg_target_list(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v18, "pkg_filter"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkg_filter(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v18, "pkg_filter_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/mezzo/common/network/parser/ParserPkgAgList;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/mezzo/common/network/data/DataAD;->setPkg_filter_list(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v11, v7}, Lcom/mezzo/common/network/data/DataListAD;->add(Lcom/mezzo/common/network/data/IData;)I

    .line 58
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 83
    .end local v3    # "a":I
    .end local v4    # "adList":Lorg/json/JSONArray;
    .end local v5    # "adListLen":I
    .end local v6    # "adObj":Lorg/json/JSONObject;
    .end local v7    # "dataAD":Lcom/mezzo/common/network/data/DataAD;
    .end local v8    # "i":I
    .end local v11    # "listAD":Lcom/mezzo/common/network/data/DataListAD;
    .end local v12    # "listSection":Lcom/mezzo/common/network/data/DataListSection;
    .end local v13    # "listSectionLen":I
    .end local v15    # "section":Lcom/mezzo/common/network/data/DataSection;
    .end local v16    # "sectionList":Lorg/json/JSONArray;
    .end local v17    # "sectionObj":Lorg/json/JSONObject;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/mezzo/common/network/data/DataNTPkgAgList;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 84
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mezzo/common/network/parser/ParserPkgAgList;->data:Lcom/mezzo/common/network/data/DataNTPkgAgList;

    return-object v0
.end method
