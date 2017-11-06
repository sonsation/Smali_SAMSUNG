.class public Lcom/mezzo/common/network/parser/ParserMovie;
.super Lcom/mezzo/common/network/parser/ParserNTCommonResponse;
.source "ParserMovie.java"


# instance fields
.field private data:Lcom/mezzo/common/network/data/DataNTMovie;


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
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserMovie;->data:Lcom/mezzo/common/network/data/DataNTMovie;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 23
    new-instance v26, Lcom/mezzo/common/network/data/DataNTMovie;

    invoke-direct/range {v26 .. v26}, Lcom/mezzo/common/network/data/DataNTMovie;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mezzo/common/network/parser/ParserMovie;->data:Lcom/mezzo/common/network/data/DataNTMovie;

    .line 27
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/mezzo/common/network/parser/ParserMovie;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 28
    .local v16, "jsonToString":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "jsonToString : "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mezzo/common/MzLog;->ntlog(Ljava/lang/String;)V

    .line 29
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct/range {v15 .. v16}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v15, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v26, "vast"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v15, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 31
    .local v20, "rootObject":Lorg/json/JSONObject;
    if-eqz v20, :cond_a

    const-string v26, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserMovie;->data:Lcom/mezzo/common/network/data/DataNTMovie;

    move-object/from16 v26, v0

    const-string/jumbo v27, "version"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/mezzo/common/network/data/DataNTMovie;->setVersion(Ljava/lang/String;)V

    .line 33
    const-string v26, "ad"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 34
    .local v5, "adList":Lorg/json/JSONArray;
    if-eqz v5, :cond_0

    .line 35
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 36
    .local v6, "adListLen":I
    if-lez v6, :cond_0

    .line 37
    const/4 v10, 0x0

    .line 38
    .local v10, "dataAd":Lcom/mezzo/common/network/data/DataMovieAD;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-lt v13, v6, :cond_2

    .line 117
    .end local v6    # "adListLen":I
    .end local v10    # "dataAd":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v13    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserMovie;->data:Lcom/mezzo/common/network/data/DataNTMovie;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/mezzo/common/network/data/DataNTMovie;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 118
    const/16 v26, 0x1

    .line 121
    .end local v5    # "adList":Lorg/json/JSONArray;
    :goto_2
    return v26

    .line 25
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .end local v16    # "jsonToString":Ljava/lang/String;
    .end local v20    # "rootObject":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserMovie;->data:Lcom/mezzo/common/network/data/DataNTMovie;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/mezzo/common/network/data/DataNTMovie;->clear()V

    goto :goto_0

    .line 39
    .restart local v5    # "adList":Lorg/json/JSONArray;
    .restart local v6    # "adListLen":I
    .restart local v10    # "dataAd":Lcom/mezzo/common/network/data/DataMovieAD;
    .restart local v13    # "i":I
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    .restart local v16    # "jsonToString":Ljava/lang/String;
    .restart local v20    # "rootObject":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    .local v4, "ad":Lorg/json/JSONObject;
    new-instance v10, Lcom/mezzo/common/network/data/DataMovieAD;

    .end local v10    # "dataAd":Lcom/mezzo/common/network/data/DataMovieAD;
    invoke-direct {v10}, Lcom/mezzo/common/network/data/DataMovieAD;-><init>()V

    .line 41
    .restart local v10    # "dataAd":Lcom/mezzo/common/network/data/DataMovieAD;
    const-string v26, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setId(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v26, "sequence"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setSequence(Ljava/lang/String;)V

    .line 43
    const-string v26, "inline"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 44
    .local v14, "inline":Lorg/json/JSONObject;
    if-eqz v14, :cond_7

    .line 45
    const-string v26, "adsystem"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 46
    .local v7, "adsystem":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    .line 47
    const-string/jumbo v26, "version"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setAdsystem_version(Ljava/lang/String;)V

    .line 49
    :cond_3
    const-string v26, "adtitle"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setAdtitle(Ljava/lang/String;)V

    .line 50
    const-string v26, "extensions"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 51
    .local v12, "extensions":Lorg/json/JSONObject;
    if-eqz v12, :cond_4

    .line 52
    const-string/jumbo v26, "requestid"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setRequestid(Ljava/lang/String;)V

    .line 54
    :cond_4
    const-string v26, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setError(Ljava/lang/String;)V

    .line 55
    const-string v26, "impression"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setImpression(Ljava/lang/String;)V

    .line 56
    const-string v26, "creatives"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 57
    .local v9, "creatives":Lorg/json/JSONObject;
    if-eqz v9, :cond_7

    .line 58
    const-string v26, "creative"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 59
    .local v8, "creative":Lorg/json/JSONObject;
    if-eqz v8, :cond_7

    .line 60
    const-string v26, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v8, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setCreative_id(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v26, "sequence"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v8, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setCreative_sequence(Ljava/lang/String;)V

    .line 62
    const-string v26, "linear"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v8, v1}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 63
    .local v17, "linear":Lorg/json/JSONObject;
    if-eqz v17, :cond_7

    .line 64
    const-string/jumbo v26, "skipoffset"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setSkipoffset(Ljava/lang/String;)V

    .line 65
    const-string v26, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setDuration(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v26, "trackingevents"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 67
    .local v24, "trackingevents":Lorg/json/JSONObject;
    if-eqz v24, :cond_5

    .line 68
    const-string/jumbo v26, "tracking"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 69
    .local v22, "tracking":Lorg/json/JSONArray;
    if-eqz v22, :cond_5

    .line 70
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v23

    .line 71
    .local v23, "trackingLen":I
    if-lez v23, :cond_5

    .line 72
    const/4 v11, 0x0

    .line 73
    .local v11, "dataTracking":Lcom/mezzo/common/network/data/DataTracking;
    const/4 v3, 0x0

    .local v3, "a":I
    :goto_3
    move/from16 v0, v23

    if-lt v3, v0, :cond_8

    .line 90
    .end local v3    # "a":I
    .end local v11    # "dataTracking":Lcom/mezzo/common/network/data/DataTracking;
    .end local v22    # "tracking":Lorg/json/JSONArray;
    .end local v23    # "trackingLen":I
    :cond_5
    const-string/jumbo v26, "videoclicks"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 91
    .local v25, "videoclicks":Lorg/json/JSONObject;
    if-eqz v25, :cond_6

    .line 92
    const-string v26, "clickthrough"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setClickthrough(Ljava/lang/String;)V

    .line 93
    const-string v26, "clicktracking"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setClicktracking(Ljava/lang/String;)V

    .line 94
    const-string v26, "offset"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setOffset(Ljava/lang/String;)V

    .line 96
    :cond_6
    const-string v26, "mediafiles"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 97
    .local v19, "mediafiles":Lorg/json/JSONObject;
    if-eqz v19, :cond_7

    .line 98
    const-string v26, "mediafile"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 99
    .local v18, "mediafile":Lorg/json/JSONObject;
    if-eqz v18, :cond_7

    .line 100
    const-string v26, "delivery"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setDelivery(Ljava/lang/String;)V

    .line 101
    const-string/jumbo v26, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setType(Ljava/lang/String;)V

    .line 102
    const-string/jumbo v26, "width"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setWidth(Ljava/lang/String;)V

    .line 103
    const-string v26, "height"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setHeight(Ljava/lang/String;)V

    .line 104
    const-string v26, "bitrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setBitrate(Ljava/lang/String;)V

    .line 105
    const-string v26, "mediafile_src"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setMediafile_src(Ljava/lang/String;)V

    .line 113
    .end local v7    # "adsystem":Lorg/json/JSONObject;
    .end local v8    # "creative":Lorg/json/JSONObject;
    .end local v9    # "creatives":Lorg/json/JSONObject;
    .end local v12    # "extensions":Lorg/json/JSONObject;
    .end local v17    # "linear":Lorg/json/JSONObject;
    .end local v18    # "mediafile":Lorg/json/JSONObject;
    .end local v19    # "mediafiles":Lorg/json/JSONObject;
    .end local v24    # "trackingevents":Lorg/json/JSONObject;
    .end local v25    # "videoclicks":Lorg/json/JSONObject;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserMovie;->data:Lcom/mezzo/common/network/data/DataNTMovie;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/mezzo/common/network/data/DataNTMovie;->addAdList(Lcom/mezzo/common/network/data/DataMovieAD;)I

    .line 38
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 74
    .restart local v3    # "a":I
    .restart local v7    # "adsystem":Lorg/json/JSONObject;
    .restart local v8    # "creative":Lorg/json/JSONObject;
    .restart local v9    # "creatives":Lorg/json/JSONObject;
    .restart local v11    # "dataTracking":Lcom/mezzo/common/network/data/DataTracking;
    .restart local v12    # "extensions":Lorg/json/JSONObject;
    .restart local v17    # "linear":Lorg/json/JSONObject;
    .restart local v22    # "tracking":Lorg/json/JSONArray;
    .restart local v23    # "trackingLen":I
    .restart local v24    # "trackingevents":Lorg/json/JSONObject;
    :cond_8
    new-instance v11, Lcom/mezzo/common/network/data/DataTracking;

    .end local v11    # "dataTracking":Lcom/mezzo/common/network/data/DataTracking;
    invoke-direct {v11}, Lcom/mezzo/common/network/data/DataTracking;-><init>()V

    .line 75
    .restart local v11    # "dataTracking":Lcom/mezzo/common/network/data/DataTracking;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lcom/mezzo/common/network/parser/ParserMovie;->getObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v21

    .line 76
    .local v21, "track":Lorg/json/JSONObject;
    const-string v26, "event"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/mezzo/common/network/data/DataTracking;->setEvent(Ljava/lang/String;)V

    .line 77
    const-string v26, "event_traking"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/mezzo/common/network/data/DataTracking;->setEvent_traking(Ljava/lang/String;)V

    .line 78
    const-string v26, "offset"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/mezzo/common/network/parser/ParserMovie;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/mezzo/common/network/data/DataTracking;->setOffset(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v26, "skip"

    invoke-virtual {v11}, Lcom/mezzo/common/network/data/DataTracking;->getEvent()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 80
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/mezzo/common/network/data/DataTracking;->setCheck(Z)V

    .line 84
    :goto_4
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/mezzo/common/network/data/DataTracking;->setSend(Z)V

    .line 85
    invoke-virtual {v10, v11}, Lcom/mezzo/common/network/data/DataMovieAD;->addTrack(Lcom/mezzo/common/network/data/DataTracking;)I

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 82
    :cond_9
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Lcom/mezzo/common/network/data/DataTracking;->setCheck(Z)V

    goto :goto_4

    .line 120
    .end local v3    # "a":I
    .end local v4    # "ad":Lorg/json/JSONObject;
    .end local v5    # "adList":Lorg/json/JSONArray;
    .end local v6    # "adListLen":I
    .end local v7    # "adsystem":Lorg/json/JSONObject;
    .end local v8    # "creative":Lorg/json/JSONObject;
    .end local v9    # "creatives":Lorg/json/JSONObject;
    .end local v10    # "dataAd":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v11    # "dataTracking":Lcom/mezzo/common/network/data/DataTracking;
    .end local v12    # "extensions":Lorg/json/JSONObject;
    .end local v13    # "i":I
    .end local v14    # "inline":Lorg/json/JSONObject;
    .end local v17    # "linear":Lorg/json/JSONObject;
    .end local v21    # "track":Lorg/json/JSONObject;
    .end local v22    # "tracking":Lorg/json/JSONArray;
    .end local v23    # "trackingLen":I
    .end local v24    # "trackingevents":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mezzo/common/network/parser/ParserMovie;->data:Lcom/mezzo/common/network/data/DataNTMovie;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/mezzo/common/network/data/DataNTMovie;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/mezzo/common/MzLog;->datalog(Ljava/lang/String;)V

    .line 121
    const/16 v26, 0x0

    goto/16 :goto_2
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mezzo/common/network/parser/ParserMovie;->data:Lcom/mezzo/common/network/data/DataNTMovie;

    return-object v0
.end method
