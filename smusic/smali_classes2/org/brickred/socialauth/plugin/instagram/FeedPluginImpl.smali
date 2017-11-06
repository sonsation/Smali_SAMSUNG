.class public Lorg/brickred/socialauth/plugin/instagram/FeedPluginImpl;
.super Ljava/lang/Object;
.source "FeedPluginImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/plugin/FeedPlugin;


# static fields
.field private static final FEED_URL:Ljava/lang/String; = "https://api.instagram.com/v1/users/self/feed"

.field private static final serialVersionUID:J = 0x659dd825119914e9L


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
    const-class v0, Lorg/brickred/socialauth/plugin/instagram/FeedPluginImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/instagram/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 60
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/instagram/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 61
    return-void
.end method


# virtual methods
.method public getFeeds()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/brickred/socialauth/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Feed;>;"
    :try_start_0
    iget-object v10, p0, Lorg/brickred/socialauth/plugin/instagram/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    const-string v11, "https://api.instagram.com/v1/users/self/feed"

    invoke-virtual {v10, v11}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v9

    .line 72
    .local v9, "response":Lorg/brickred/socialauth/util/Response;
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "respStr":Ljava/lang/String;
    iget-object v10, p0, Lorg/brickred/socialauth/plugin/instagram/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Feed Json response :: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 74
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v7, "resp":Lorg/json/JSONObject;
    const-string v10, "data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 76
    .local v0, "data":Lorg/json/JSONArray;
    iget-object v10, p0, Lorg/brickred/socialauth/plugin/instagram/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Feeds count : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 77
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v3, v10, :cond_0

    .line 109
    return-object v5

    .line 78
    :cond_0
    new-instance v2, Lorg/brickred/socialauth/Feed;

    invoke-direct {v2}, Lorg/brickred/socialauth/Feed;-><init>()V

    .line 79
    .local v2, "feed":Lorg/brickred/socialauth/Feed;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 80
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v10, "images"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 81
    const-string v10, "images"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 82
    .local v4, "iobj":Lorg/json/JSONObject;
    const-string v10, "low_resolution"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 83
    const-string v10, "low_resolution"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 84
    const-string/jumbo v11, "url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 83
    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    .line 87
    .end local v4    # "iobj":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v10, "user"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 88
    const-string/jumbo v10, "user"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 89
    .restart local v4    # "iobj":Lorg/json/JSONObject;
    const-string v10, "full_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 90
    const-string v10, "full_name"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setFrom(Ljava/lang/String;)V

    .line 92
    :cond_2
    const-string v10, "id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 93
    const-string v10, "id"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setId(Ljava/lang/String;)V

    .line 95
    :cond_3
    const-string/jumbo v10, "username"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 96
    const-string/jumbo v10, "username"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setScreenName(Ljava/lang/String;)V

    .line 99
    .end local v4    # "iobj":Lorg/json/JSONObject;
    :cond_4
    const-string v10, "created_time"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 100
    new-instance v10, Ljava/util/Date;

    .line 101
    const-string v11, "created_time"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v12, v11

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setCreatedAt(Ljava/util/Date;)V

    .line 103
    :cond_5
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 105
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "feed":Lorg/brickred/socialauth/Feed;
    .end local v3    # "i":I
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "resp":Lorg/json/JSONObject;
    .end local v8    # "respStr":Ljava/lang/String;
    .end local v9    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v11, "Error while getting Feeds from https://api.instagram.com/v1/users/self/feed"

    invoke-direct {v10, v11, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public getProviderSupport()Lorg/brickred/socialauth/util/ProviderSupport;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/brickred/socialauth/plugin/instagram/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    return-object v0
.end method

.method public setProviderSupport(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 0
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 119
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/instagram/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 120
    return-void
.end method
