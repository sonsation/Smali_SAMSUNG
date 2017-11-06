.class public Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;
.super Ljava/lang/Object;
.source "AlbumsPluginImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/plugin/AlbumsPlugin;


# static fields
.field private static final ALBUMS_URL:Ljava/lang/String; = "https://picasaweb.google.com/data/feed/api/user/default"

.field private static final ALBUM_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/photos/2007"

.field private static final MEDIA_NAMESPACE:Ljava/lang/String; = "http://search.yahoo.com/mrss/"

.field private static final PHOTOS_URL:Ljava/lang/String; = "https://picasaweb.google.com/data/feed/api/user/default/albumid/"

.field private static final serialVersionUID:J = 0x138d82562c54dca0L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;


# direct methods
.method public constructor <init>(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 1
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 62
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 63
    return-void
.end method

.method private getAlbumPhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 29
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
    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://picasaweb.google.com/data/feed/api/user/default/albumid/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    sget-object v3, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v3}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 152
    invoke-virtual/range {v1 .. v6}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v20

    .line 154
    .local v20, "response":Lorg/brickred/socialauth/util/Response;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting Photos of Album :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 158
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 165
    .local v21, "root":Lorg/w3c/dom/Element;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v17, "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    if-eqz v21, :cond_0

    .line 168
    const-string v1, "entry"

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 169
    .local v16, "photoList":Lorg/w3c/dom/NodeList;
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_8

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found photos : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 171
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v11, v1, :cond_1

    .line 236
    .end local v11    # "i":I
    .end local v16    # "photoList":Lorg/w3c/dom/NodeList;
    :cond_0
    :goto_1
    return-object v17

    .line 159
    .end local v17    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    .end local v21    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v9

    .line 160
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to parse the photos from response.https://picasaweb.google.com/data/feed/api/user/default/albumid/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-direct {v1, v2, v9}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 172
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "i":I
    .restart local v16    # "photoList":Lorg/w3c/dom/NodeList;
    .restart local v17    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    .restart local v21    # "root":Lorg/w3c/dom/Element;
    :cond_1
    new-instance v14, Lorg/brickred/socialauth/Photo;

    invoke-direct {v14}, Lorg/brickred/socialauth/Photo;-><init>()V

    .line 173
    .local v14, "photo":Lorg/brickred/socialauth/Photo;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 175
    .local v19, "pl":Lorg/w3c/dom/Element;
    const-string v1, "http://schemas.google.com/photos/2007"

    .line 176
    const-string v2, "id"

    .line 175
    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 177
    .local v18, "pid":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    .line 178
    .local v15, "photoId":Ljava/lang/String;
    invoke-virtual {v14, v15}, Lorg/brickred/socialauth/Photo;->setId(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v1, "title"

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lorg/brickred/socialauth/Photo;->setTitle(Ljava/lang/String;)V

    .line 183
    const-string v1, "http://search.yahoo.com/mrss/"

    const-string v2, "group"

    .line 182
    move-object/from16 v0, v19

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 184
    .local v13, "mediaGroup":Lorg/w3c/dom/NodeList;
    const/16 v24, 0x0

    .line 185
    .local v24, "urlLarge":Ljava/lang/String;
    const/16 v25, 0x0

    .line 186
    .local v25, "urlMedium":Ljava/lang/String;
    const/16 v26, 0x0

    .line 187
    .local v26, "urlSmall":Ljava/lang/String;
    const/16 v27, 0x0

    .line 188
    .local v27, "urlThumb":Ljava/lang/String;
    const/16 v28, 0x0

    .line 190
    .local v28, "width":I
    if-eqz v13, :cond_3

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    .line 191
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 192
    .local v10, "el":Lorg/w3c/dom/Element;
    if-eqz v10, :cond_3

    .line 194
    const-string v1, "http://search.yahoo.com/mrss/"

    const-string v2, "content"

    .line 193
    invoke-interface {v10, v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 195
    .local v8, "content":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_2

    .line 196
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 197
    .local v7, "cl":Lorg/w3c/dom/Element;
    if-eqz v7, :cond_2

    .line 198
    const-string/jumbo v1, "url"

    invoke-interface {v7, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 203
    .end local v7    # "cl":Lorg/w3c/dom/Element;
    :cond_2
    const-string v1, "http://search.yahoo.com/mrss/"

    const-string/jumbo v2, "thumbnail"

    .line 202
    invoke-interface {v10, v1, v2}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 204
    .local v23, "thumbnail":Lorg/w3c/dom/NodeList;
    if-eqz v23, :cond_3

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    .line 205
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_2
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v12, v1, :cond_4

    .line 225
    .end local v8    # "content":Lorg/w3c/dom/NodeList;
    .end local v10    # "el":Lorg/w3c/dom/Element;
    .end local v12    # "k":I
    .end local v23    # "thumbnail":Lorg/w3c/dom/NodeList;
    :cond_3
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Photo;->setLargeImage(Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Photo;->setMediumImage(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Photo;->setSmallImage(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Photo;->setThumbImage(Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 206
    .restart local v8    # "content":Lorg/w3c/dom/NodeList;
    .restart local v10    # "el":Lorg/w3c/dom/Element;
    .restart local v12    # "k":I
    .restart local v23    # "thumbnail":Lorg/w3c/dom/NodeList;
    :cond_4
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Element;

    .line 207
    .local v22, "thumb":Lorg/w3c/dom/Element;
    if-eqz v22, :cond_5

    .line 209
    const-string/jumbo v1, "width"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 210
    const/16 v1, 0x120

    move/from16 v0, v28

    if-ne v0, v1, :cond_6

    .line 212
    const-string/jumbo v1, "url"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 205
    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 213
    :cond_6
    const/16 v1, 0x90

    move/from16 v0, v28

    if-ne v0, v1, :cond_7

    .line 215
    const-string/jumbo v1, "url"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 216
    goto :goto_3

    :cond_7
    const/16 v1, 0x48

    move/from16 v0, v28

    if-ne v0, v1, :cond_5

    .line 218
    const-string/jumbo v1, "url"

    move-object/from16 v0, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 217
    goto :goto_3

    .line 233
    .end local v8    # "content":Lorg/w3c/dom/NodeList;
    .end local v10    # "el":Lorg/w3c/dom/Element;
    .end local v11    # "i":I
    .end local v12    # "k":I
    .end local v13    # "mediaGroup":Lorg/w3c/dom/NodeList;
    .end local v14    # "photo":Lorg/brickred/socialauth/Photo;
    .end local v15    # "photoId":Ljava/lang/String;
    .end local v18    # "pid":Lorg/w3c/dom/NodeList;
    .end local v19    # "pl":Lorg/w3c/dom/Element;
    .end local v22    # "thumb":Lorg/w3c/dom/Element;
    .end local v23    # "thumbnail":Lorg/w3c/dom/NodeList;
    .end local v24    # "urlLarge":Ljava/lang/String;
    .end local v25    # "urlMedium":Ljava/lang/String;
    .end local v26    # "urlSmall":Ljava/lang/String;
    .end local v27    # "urlThumb":Ljava/lang/String;
    .end local v28    # "width":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "No photos were obtained from : https://picasaweb.google.com/data/feed/api/user/default/albumid/"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getAlbums()Ljava/util/List;
    .locals 30
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
    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    const-string v3, "https://picasaweb.google.com/data/feed/api/user/default"

    .line 68
    sget-object v4, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v4}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 67
    invoke-virtual/range {v2 .. v7}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v25

    .line 72
    .local v25, "response":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    invoke-virtual/range {v25 .. v25}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 78
    .local v26, "root":Lorg/w3c/dom/Element;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v11, "albums":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Album;>;"
    if-eqz v26, :cond_0

    .line 81
    const-string v2, "entry"

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 82
    .local v10, "albumList":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_6

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_6

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Found albums : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 84
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_1

    .line 147
    .end local v10    # "albumList":Lorg/w3c/dom/NodeList;
    .end local v16    # "i":I
    :cond_0
    :goto_1
    return-object v11

    .line 73
    .end local v11    # "albums":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Album;>;"
    .end local v26    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v13

    .line 74
    .local v13, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 75
    const-string v3, "Failed to parse the albums from response.https://picasaweb.google.com/data/feed/api/user/default"

    .line 74
    invoke-direct {v2, v3, v13}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 85
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v10    # "albumList":Lorg/w3c/dom/NodeList;
    .restart local v11    # "albums":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Album;>;"
    .restart local v16    # "i":I
    .restart local v26    # "root":Lorg/w3c/dom/Element;
    :cond_1
    new-instance v8, Lorg/brickred/socialauth/Album;

    invoke-direct {v8}, Lorg/brickred/socialauth/Album;-><init>()V

    .line 86
    .local v8, "album":Lorg/brickred/socialauth/Album;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Element;

    .line 88
    .local v22, "p":Lorg/w3c/dom/Element;
    const-string v2, "http://schemas.google.com/photos/2007"

    .line 89
    const-string v3, "id"

    .line 88
    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 90
    .local v17, "id":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v2}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "albumId":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lorg/brickred/socialauth/Album;->setId(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "title"

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lorg/brickred/socialauth/Album;->setName(Ljava/lang/String;)V

    .line 95
    const-string v2, "http://schemas.google.com/photos/2007"

    .line 96
    const-string v3, "numphotos"

    .line 95
    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 98
    .local v12, "count":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-static {v2}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/brickred/socialauth/Album;->setPhotosCount(I)V

    .line 101
    const-string v2, "http://search.yahoo.com/mrss/"

    const-string v3, "group"

    .line 100
    move-object/from16 v0, v22

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 102
    .local v21, "mediaGroup":Lorg/w3c/dom/NodeList;
    const/16 v29, 0x0

    .line 103
    .local v29, "url":Ljava/lang/String;
    if-eqz v21, :cond_2

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_2

    .line 104
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 105
    .local v14, "el":Lorg/w3c/dom/Element;
    if-eqz v14, :cond_2

    .line 107
    const-string v2, "http://search.yahoo.com/mrss/"

    const-string/jumbo v3, "thumbnail"

    .line 106
    invoke-interface {v14, v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 108
    .local v27, "thumbnail":Lorg/w3c/dom/NodeList;
    if-eqz v27, :cond_2

    .line 109
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    check-cast v28, Lorg/w3c/dom/Element;

    .line 110
    .local v28, "tl":Lorg/w3c/dom/Element;
    if-eqz v28, :cond_2

    .line 111
    const-string/jumbo v2, "url"

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 116
    .end local v14    # "el":Lorg/w3c/dom/Element;
    .end local v27    # "thumbnail":Lorg/w3c/dom/NodeList;
    .end local v28    # "tl":Lorg/w3c/dom/Element;
    :cond_2
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Lorg/brickred/socialauth/Album;->setCoverPhoto(Ljava/lang/String;)V

    .line 118
    const/16 v24, 0x0

    .line 119
    .local v24, "rel":Ljava/lang/String;
    const/4 v15, 0x0

    .line 121
    .local v15, "href":Ljava/lang/String;
    const-string v2, "link"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 122
    .local v20, "link":Lorg/w3c/dom/NodeList;
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    .line 123
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_4

    .line 135
    .end local v18    # "j":I
    :cond_3
    invoke-virtual {v8, v15}, Lorg/brickred/socialauth/Album;->setLink(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->getAlbumPhotos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 137
    .local v23, "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/brickred/socialauth/Album;->setPhotos(Ljava/util/List;)V

    .line 139
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 84
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 124
    .end local v23    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Photo;>;"
    .restart local v18    # "j":I
    :cond_4
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    .line 125
    .local v19, "l":Lorg/w3c/dom/Element;
    if-eqz v19, :cond_5

    .line 126
    const-string/jumbo v2, "rel"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 127
    if-eqz v24, :cond_5

    .line 128
    const-string v2, "alternate"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    const-string v2, "href"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 123
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 143
    .end local v8    # "album":Lorg/brickred/socialauth/Album;
    .end local v9    # "albumId":Ljava/lang/String;
    .end local v12    # "count":Lorg/w3c/dom/NodeList;
    .end local v15    # "href":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v17    # "id":Lorg/w3c/dom/NodeList;
    .end local v18    # "j":I
    .end local v19    # "l":Lorg/w3c/dom/Element;
    .end local v20    # "link":Lorg/w3c/dom/NodeList;
    .end local v21    # "mediaGroup":Lorg/w3c/dom/NodeList;
    .end local v22    # "p":Lorg/w3c/dom/Element;
    .end local v24    # "rel":Ljava/lang/String;
    .end local v29    # "url":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "No albums were obtained from : https://picasaweb.google.com/data/feed/api/user/default"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public getProviderSupport()Lorg/brickred/socialauth/util/ProviderSupport;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    return-object v0
.end method

.method public setProviderSupport(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 0
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/googleplus/AlbumsPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 247
    return-void
.end method
