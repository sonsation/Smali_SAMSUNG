.class public Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;
.super Ljava/lang/Object;
.source "FeedPluginImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/plugin/FeedPlugin;


# static fields
.field private static final FEED_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/statuses/home_timeline.json"

.field private static final dateFormat:Ljava/text/DateFormat;

.field private static final serialVersionUID:J = 0x46a74d3669c9f066L


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
    const-string v1, "EEE MMM dd hh:mm:ss z yyyy"

    .line 54
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->dateFormat:Ljava/text/DateFormat;

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 61
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

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
    .line 72
    const/4 v8, 0x0

    .line 73
    .local v8, "response":Lorg/brickred/socialauth/util/Response;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Feed;>;"
    iget-object v10, p0, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v11, "Getting feeds from URL : https://api.twitter.com/1.1/statuses/home_timeline.json"

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 76
    :try_start_0
    iget-object v10, p0, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    const-string v11, "https://api.twitter.com/1.1/statuses/home_timeline.json"

    invoke-virtual {v10, v11}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v8

    .line 78
    const-string v10, "UTF-8"

    invoke-virtual {v8, v10}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "respStr":Ljava/lang/String;
    iget-object v10, p0, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Feeds json string :: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 80
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, "jarr":Lorg/json/JSONArray;
    iget-object v10, p0, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Feeds count :: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 82
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v3, v10, :cond_0

    .line 110
    return-object v6

    .line 83
    :cond_0
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 84
    .local v5, "jobj":Lorg/json/JSONObject;
    new-instance v2, Lorg/brickred/socialauth/Feed;

    invoke-direct {v2}, Lorg/brickred/socialauth/Feed;-><init>()V

    .line 85
    .local v2, "feed":Lorg/brickred/socialauth/Feed;
    const-string v10, "created_at"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 86
    const-string v10, "created_at"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "dateStr":Ljava/lang/String;
    sget-object v10, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v10, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setCreatedAt(Ljava/util/Date;)V

    .line 89
    .end local v0    # "dateStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "text"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 90
    const-string/jumbo v10, "text"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    .line 92
    :cond_2
    const-string/jumbo v10, "user"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 93
    const-string/jumbo v10, "user"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 94
    .local v9, "userObj":Lorg/json/JSONObject;
    const-string v10, "id_str"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 95
    const-string v10, "id_str"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setId(Ljava/lang/String;)V

    .line 97
    :cond_3
    const-string v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 98
    const-string v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setFrom(Ljava/lang/String;)V

    .line 100
    :cond_4
    const-string/jumbo v10, "screen_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 101
    const-string/jumbo v10, "screen_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/brickred/socialauth/Feed;->setScreenName(Ljava/lang/String;)V

    .line 104
    .end local v9    # "userObj":Lorg/json/JSONObject;
    :cond_5
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 106
    .end local v2    # "feed":Lorg/brickred/socialauth/Feed;
    .end local v3    # "i":I
    .end local v4    # "jarr":Lorg/json/JSONArray;
    .end local v5    # "jobj":Lorg/json/JSONObject;
    .end local v7    # "respStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v11, "Error while getting feeds from https://api.twitter.com/1.1/statuses/home_timeline.json"

    invoke-direct {v10, v11, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public getProviderSupport()Lorg/brickred/socialauth/util/ProviderSupport;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    return-object v0
.end method

.method public setProviderSupport(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 0
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/twitter/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 122
    return-void
.end method
