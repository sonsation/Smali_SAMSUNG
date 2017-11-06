.class public Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;
.super Ljava/lang/Object;
.source "AlbumsPluginImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/plugin/AlbumsPlugin;


# static fields
.field private static final ALBUMS_URL:Ljava/lang/String; = "https://graph.facebook.com/me/albums"

.field private static final ALBUM_COVER_URL:Ljava/lang/String; = "https://graph.facebook.com/%1$s/picture?access_token=%2$s"

.field private static final ALBUM_PHOTOS_URL:Ljava/lang/String; = "https://graph.facebook.com/%1$s/photos"

.field private static final serialVersionUID:J = 0x4a41cf32e3b5ab1dL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;


# direct methods
.method public constructor <init>(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 1
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 60
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 61
    return-void
.end method

.method private getAlbumPhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/brickred/socialauth/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 102
    const-string v2, "https://graph.facebook.com/%1$s/photos"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v3}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 101
    invoke-virtual/range {v1 .. v6}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v18

    .line 104
    .local v18, "response":Lorg/brickred/socialauth/util/Response;
    const-string v1, "UTF-8"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 105
    .local v17, "respStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting Photos of Album :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 106
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v17}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .local v16, "resp":Lorg/json/JSONObject;
    const-string v1, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 108
    .local v7, "data":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Photos count : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 109
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v15, "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v9, v1, :cond_0

    .line 144
    return-object v15

    .line 111
    :cond_0
    new-instance v14, Lorg/brickred/socialauth/Photo;

    invoke-direct {v14}, Lorg/brickred/socialauth/Photo;-><init>()V

    .line 112
    .local v14, "photo":Lorg/brickred/socialauth/Photo;
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 113
    .local v13, "obj":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/brickred/socialauth/Photo;->setId(Ljava/lang/String;)V

    .line 114
    const-string v1, "name"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "name"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/brickred/socialauth/Photo;->setTitle(Ljava/lang/String;)V

    .line 117
    :cond_1
    const-string v1, "link"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v1, "link"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/brickred/socialauth/Photo;->setLink(Ljava/lang/String;)V

    .line 120
    :cond_2
    const-string v1, "picture"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    const-string v1, "picture"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/brickred/socialauth/Photo;->setThumbImage(Ljava/lang/String;)V

    .line 123
    :cond_3
    const-string v1, "images"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 124
    .local v10, "images":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_4

    .line 142
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 126
    .local v11, "img":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 127
    .local v8, "ht":I
    const/16 v19, 0x0

    .line 128
    .local v19, "wt":I
    const-string v1, "height"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 129
    const-string v1, "height"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 131
    :cond_5
    const-string/jumbo v1, "width"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    const-string/jumbo v1, "width"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 134
    :cond_6
    const/16 v1, 0x258

    if-eq v8, v1, :cond_7

    const/16 v1, 0x258

    move/from16 v0, v19

    if-ne v0, v1, :cond_9

    .line 135
    :cond_7
    const-string/jumbo v1, "source"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/brickred/socialauth/Photo;->setLargeImage(Ljava/lang/String;)V

    .line 124
    :cond_8
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 136
    :cond_9
    const/16 v1, 0x1e0

    if-eq v8, v1, :cond_a

    const/16 v1, 0x1e0

    move/from16 v0, v19

    if-ne v0, v1, :cond_b

    .line 137
    :cond_a
    const-string/jumbo v1, "source"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/brickred/socialauth/Photo;->setMediumImage(Ljava/lang/String;)V

    goto :goto_2

    .line 138
    :cond_b
    const/16 v1, 0x140

    if-eq v8, v1, :cond_c

    const/16 v1, 0x140

    move/from16 v0, v19

    if-ne v0, v1, :cond_8

    .line 139
    :cond_c
    const-string/jumbo v1, "source"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/brickred/socialauth/Photo;->setSmallImage(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getAlbums()Ljava/util/List;
    .locals 17
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
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    const-string v2, "https://graph.facebook.com/me/albums"

    .line 66
    sget-object v3, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v3}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 65
    invoke-virtual/range {v1 .. v6}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v16

    .line 67
    .local v16, "response":Lorg/brickred/socialauth/util/Response;
    const-string v1, "UTF-8"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, "respStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Albums JSON :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 69
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v9, "albums":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Album;>;"
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v14, "resp":Lorg/json/JSONObject;
    const-string v1, "data"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 72
    .local v10, "data":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Albums count : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 73
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v11, v1, :cond_0

    .line 97
    return-object v9

    .line 74
    :cond_0
    new-instance v7, Lorg/brickred/socialauth/Album;

    invoke-direct {v7}, Lorg/brickred/socialauth/Album;-><init>()V

    .line 75
    .local v7, "album":Lorg/brickred/socialauth/Album;
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 76
    .local v12, "obj":Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "albumId":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lorg/brickred/socialauth/Album;->setId(Ljava/lang/String;)V

    .line 78
    const-string v1, "name"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string v1, "name"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/brickred/socialauth/Album;->setName(Ljava/lang/String;)V

    .line 82
    :cond_1
    const-string v1, "link"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const-string v1, "link"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/brickred/socialauth/Album;->setLink(Ljava/lang/String;)V

    .line 85
    :cond_2
    const-string v1, "cover_photo"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    const-string v1, "cover_photo"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/brickred/socialauth/Album;->setCoverPhoto(Ljava/lang/String;)V

    .line 88
    :cond_3
    const-string v1, "count"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    const-string v1, "count"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lorg/brickred/socialauth/Album;->setPhotosCount(I)V

    .line 91
    :cond_4
    const-string v1, "https://graph.facebook.com/%1$s/picture?access_token=%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/ProviderSupport;->getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;

    move-result-object v4

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/AccessGrant;->getKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 91
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/brickred/socialauth/Album;->setCoverPhoto(Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->getAlbumPhotos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 94
    .local v13, "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    invoke-virtual {v7, v13}, Lorg/brickred/socialauth/Album;->setPhotos(Ljava/util/List;)V

    .line 95
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0
.end method

.method public getProviderSupport()Lorg/brickred/socialauth/util/ProviderSupport;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    return-object v0
.end method

.method public setProviderSupport(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 0
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 154
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/facebook/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 155
    return-void
.end method
