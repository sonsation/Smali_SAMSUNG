.class public Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;
.super Ljava/lang/Object;
.source "AlbumsPluginImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/plugin/AlbumsPlugin;


# static fields
.field private static final FEED_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/statuses/home_timeline.json?include_entities=true&count=100"

.field private static final serialVersionUID:J = -0x42c3c5ac0044d8f6L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private photo_data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/brickred/socialauth/Photo;",
            ">;>;"
        }
    .end annotation
.end field

.field private providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;


# direct methods
.method public constructor <init>(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 1
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->photo_data:Ljava/util/HashMap;

    .line 60
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 61
    return-void
.end method


# virtual methods
.method public getAlbums()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/brickred/socialauth/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v13, 0x0

    .line 66
    .local v13, "response":Lorg/brickred/socialauth/util/Response;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v2, "albums":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Album;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v16, "Getting feeds from URL : https://api.twitter.com/1.1/statuses/home_timeline.json?include_entities=true&count=100"

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 69
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    const-string v16, "https://api.twitter.com/1.1/statuses/home_timeline.json?include_entities=true&count=100"

    invoke-virtual/range {v15 .. v16}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v13

    .line 70
    const-string v15, "UTF-8"

    invoke-virtual {v13, v15}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "respStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Feeds json string :: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 72
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 73
    .local v5, "jarr":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Feeds count :: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 75
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v4, v15, :cond_0

    .line 137
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_7

    .line 142
    return-object v2

    .line 76
    :cond_0
    new-instance v1, Lorg/brickred/socialauth/Album;

    invoke-direct {v1}, Lorg/brickred/socialauth/Album;-><init>()V

    .line 77
    .local v1, "album":Lorg/brickred/socialauth/Album;
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 79
    .local v6, "jobj":Lorg/json/JSONObject;
    const-string/jumbo v15, "user"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 80
    const-string/jumbo v15, "user"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 82
    .local v14, "userObj":Lorg/json/JSONObject;
    const-string v15, "entities"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 83
    const-string v15, "entities"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 84
    .local v3, "entitiesObj":Lorg/json/JSONObject;
    const-string v15, "media"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 85
    const-string v15, "media"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 86
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 87
    .local v8, "mediaObj":Lorg/json/JSONObject;
    const-string/jumbo v15, "type"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 88
    const-string/jumbo v15, "type"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 89
    const-string v16, "photo"

    .line 88
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 89
    if-eqz v15, :cond_6

    .line 90
    const-string v15, "name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 91
    const-string v15, "media_url"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->photo_data:Ljava/util/HashMap;

    .line 93
    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 92
    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 94
    .local v11, "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    if-nez v11, :cond_1

    .line 95
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .restart local v11    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->photo_data:Ljava/util/HashMap;

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v15, "name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lorg/brickred/socialauth/Album;->setName(Ljava/lang/String;)V

    .line 101
    const-string v15, "profile_image_url"

    .line 100
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 102
    const-string v16, "_normal"

    const-string v17, "_reasonably_small"

    .line 101
    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 100
    invoke-virtual {v1, v15}, Lorg/brickred/socialauth/Album;->setCoverPhoto(Ljava/lang/String;)V

    .line 103
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    new-instance v9, Lorg/brickred/socialauth/Photo;

    invoke-direct {v9}, Lorg/brickred/socialauth/Photo;-><init>()V

    .line 107
    .local v9, "photo":Lorg/brickred/socialauth/Photo;
    const-string v15, "media_url"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "photoURL":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":thumb"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/brickred/socialauth/Photo;->setThumbImage(Ljava/lang/String;)V

    .line 109
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":small"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/brickred/socialauth/Photo;->setSmallImage(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v9, v10}, Lorg/brickred/socialauth/Photo;->setMediumImage(Ljava/lang/String;)V

    .line 111
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":large"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/brickred/socialauth/Photo;->setLargeImage(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v15, "text"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 113
    const-string/jumbo v15, "text"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/brickred/socialauth/Photo;->setTitle(Ljava/lang/String;)V

    .line 115
    :cond_2
    const-string v15, "id_str"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 116
    const-string v15, "id_str"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/brickred/socialauth/Photo;->setId(Ljava/lang/String;)V

    .line 118
    :cond_3
    const-string v15, "expanded_url"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 120
    const-string v15, "expanded_url"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 119
    invoke-virtual {v9, v15}, Lorg/brickred/socialauth/Photo;->setLink(Ljava/lang/String;)V

    .line 122
    :cond_4
    const-string/jumbo v15, "retweet_count"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 123
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "retweet_count"

    .line 126
    const-string/jumbo v16, "retweet_count"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 125
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 124
    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v9, v7}, Lorg/brickred/socialauth/Photo;->setMetaData(Ljava/util/Map;)V

    .line 129
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .end local v3    # "entitiesObj":Lorg/json/JSONObject;
    .end local v8    # "mediaObj":Lorg/json/JSONObject;
    .end local v9    # "photo":Lorg/brickred/socialauth/Photo;
    .end local v10    # "photoURL":Ljava/lang/String;
    .end local v11    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    .end local v14    # "userObj":Lorg/json/JSONObject;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 137
    .end local v1    # "album":Lorg/brickred/socialauth/Album;
    .end local v6    # "jobj":Lorg/json/JSONObject;
    :cond_7
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/brickred/socialauth/Album;

    .line 138
    .restart local v1    # "album":Lorg/brickred/socialauth/Album;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->photo_data:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual {v1}, Lorg/brickred/socialauth/Album;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 139
    .restart local v11    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    invoke-virtual {v1, v11}, Lorg/brickred/socialauth/Album;->setPhotos(Ljava/util/List;)V

    .line 140
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/brickred/socialauth/Album;->setPhotosCount(I)V

    goto/16 :goto_1
.end method

.method public getProviderSupport()Lorg/brickred/socialauth/util/ProviderSupport;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    return-object v0
.end method

.method public setProviderSupport(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 0
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/twitter/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 153
    return-void
.end method
