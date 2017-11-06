.class public Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;
.super Ljava/lang/Object;
.source "FeedPluginImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/plugin/FeedPlugin;


# static fields
.field private static final FEED_URL:Ljava/lang/String; = "https://www.googleapis.com/plus/v1/people/me/activities/public?maxResults=100"

.field private static final dateFormat:Ljava/text/DateFormat;

.field private static final serialVersionUID:J = -0xe8c0ef6fdd8c14L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 58
    const-string/jumbo v1, "yyyy-MM-dd\'T\'hh:mm:ss.SSS\'Z\'"

    .line 57
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->dateFormat:Ljava/text/DateFormat;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 2
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 63
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 64
    sget-object v0, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->dateFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
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
    .line 79
    iget-object v11, p0, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v12, "getting feeds for google plus"

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 80
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Feed;>;"
    :try_start_0
    iget-object v11, p0, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    const-string v12, "https://www.googleapis.com/plus/v1/people/me/activities/public?maxResults=100"

    invoke-virtual {v11, v12}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;

    move-result-object v10

    .line 84
    .local v10, "response":Lorg/brickred/socialauth/util/Response;
    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Lorg/brickred/socialauth/util/Response;->getResponseBodyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "respStr":Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v8, "resp":Lorg/json/JSONObject;
    const-string v11, "items"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 88
    .local v5, "items":Lorg/json/JSONArray;
    iget-object v11, p0, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Feeds count : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 89
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v4, v11, :cond_0

    .line 116
    return-object v6

    .line 90
    :cond_0
    new-instance v3, Lorg/brickred/socialauth/Feed;

    invoke-direct {v3}, Lorg/brickred/socialauth/Feed;-><init>()V

    .line 91
    .local v3, "feed":Lorg/brickred/socialauth/Feed;
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 92
    .local v7, "obj":Lorg/json/JSONObject;
    const-string/jumbo v11, "title"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 93
    const-string/jumbo v11, "title"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    .line 95
    :cond_1
    const-string v11, "id"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 96
    const-string v11, "id"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/brickred/socialauth/Feed;->setId(Ljava/lang/String;)V

    .line 98
    :cond_2
    const-string v11, "actor"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 99
    const-string v11, "actor"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    .local v0, "actor":Lorg/json/JSONObject;
    const-string v11, "displayName"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 101
    const-string v11, "displayName"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/brickred/socialauth/Feed;->setFrom(Ljava/lang/String;)V

    .line 104
    .end local v0    # "actor":Lorg/json/JSONObject;
    :cond_3
    const-string v11, "published"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 105
    sget-object v11, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->dateFormat:Ljava/text/DateFormat;

    const-string v12, "published"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 106
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v3, v1}, Lorg/brickred/socialauth/Feed;->setCreatedAt(Ljava/util/Date;)V

    .line 108
    .end local v1    # "date":Ljava/util/Date;
    :cond_4
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 109
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "feed":Lorg/brickred/socialauth/Feed;
    .end local v4    # "i":I
    .end local v5    # "items":Lorg/json/JSONArray;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "resp":Lorg/json/JSONObject;
    .end local v9    # "respStr":Ljava/lang/String;
    .end local v10    # "response":Lorg/brickred/socialauth/util/Response;
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v12, "Error while getting Feeds from https://www.googleapis.com/plus/v1/people/me/activities/public?maxResults=100"

    invoke-direct {v11, v12, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

.method public getProviderSupport()Lorg/brickred/socialauth/util/ProviderSupport;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    return-object v0
.end method

.method public setProviderSupport(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 0
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/googleplus/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 75
    return-void
.end method
