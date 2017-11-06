.class public Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;
.super Ljava/lang/Object;
.source "FeedPluginImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/plugin/FeedPlugin;


# static fields
.field private static final FEED_URL:Ljava/lang/String; = "https://graph.facebook.com/me/feed"

.field private static final dateFormat:Ljava/text/DateFormat;

.field private static final serialVersionUID:J = 0x1d42e88573ed66ddL


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 55
    const-string/jumbo v1, "yyyy-MM-dd\'T\'hh:mm:ssz"

    .line 54
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;->dateFormat:Ljava/text/DateFormat;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 1
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-class v0, Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 61
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 62
    return-void
.end method


# virtual methods
.method public getFeeds()Ljava/util/List;
    .locals 13
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
    .line 66
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Feed;>;"
    :try_start_0
    iget-object v10, p0, Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    const-string v11, "https://graph.facebook.com/me/feed"

    invoke-virtual {v10, v11}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v9

    .line 70
    .local v9, "response":Lorg/brickred/socialauth/util/Response;
    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "respStr":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    .local v7, "resp":Lorg/json/JSONObject;
    const-string v10, "data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 73
    .local v0, "data":Lorg/json/JSONArray;
    iget-object v10, p0, Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

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

    .line 74
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v4, v10, :cond_0

    .line 110
    return-object v5

    .line 75
    :cond_0
    new-instance v2, Lorg/brickred/socialauth/Feed;

    invoke-direct {v2}, Lorg/brickred/socialauth/Feed;-><init>()V

    .line 76
    .local v2, "feed":Lorg/brickred/socialauth/Feed;
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 77
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v10, "from"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 78
    const-string v10, "from"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 79
    .local v3, "fobj":Lorg/json/JSONObject;
    const-string v10, "name"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 80
    const-string v10, "name"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setFrom(Ljava/lang/String;)V

    .line 82
    :cond_1
    const-string v10, "id"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 83
    const-string v10, "id"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setId(Ljava/lang/String;)V

    .line 86
    .end local v3    # "fobj":Lorg/json/JSONObject;
    :cond_2
    const-string v10, "message"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 87
    const-string v10, "message"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    .line 100
    :cond_3
    :goto_1
    const-string v10, "created_time"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 101
    sget-object v10, Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;->dateFormat:Ljava/text/DateFormat;

    .line 102
    const-string v11, "created_time"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setCreatedAt(Ljava/util/Date;)V

    .line 104
    :cond_4
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 88
    :cond_5
    const-string/jumbo v10, "story"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 89
    const-string/jumbo v10, "story"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "feed":Lorg/brickred/socialauth/Feed;
    .end local v4    # "i":I
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "resp":Lorg/json/JSONObject;
    .end local v8    # "respStr":Ljava/lang/String;
    .end local v9    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v11, "Error while getting Feeds from https://graph.facebook.com/me/feed"

    invoke-direct {v10, v11, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Lorg/json/JSONArray;
    .restart local v2    # "feed":Lorg/brickred/socialauth/Feed;
    .restart local v4    # "i":I
    .restart local v6    # "obj":Lorg/json/JSONObject;
    .restart local v7    # "resp":Lorg/json/JSONObject;
    .restart local v8    # "respStr":Ljava/lang/String;
    .restart local v9    # "response":Lorg/brickred/socialauth/util/Response;
    :cond_6
    :try_start_1
    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 91
    const-string v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_7
    const-string v10, "caption"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 93
    const-string v10, "caption"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_8
    const-string v10, "description"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 95
    const-string v10, "description"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_9
    const-string v10, "picture"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 97
    const-string v10, "picture"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getProviderSupport()Lorg/brickred/socialauth/util/ProviderSupport;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    return-object v0
.end method

.method public setProviderSupport(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 0
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/facebook/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 121
    return-void
.end method
