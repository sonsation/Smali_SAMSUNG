.class public Lorg/brickred/socialauth/SocialAuthConfig;
.super Ljava/lang/Object;
.source "SocialAuthConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static DEFAULT:Lorg/brickred/socialauth/SocialAuthConfig; = null

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final OAUTH_CONSUMER_PROPS:Ljava/lang/String; = "oauth_consumer.properties"

.field private static final serialVersionUID:J = 0x1205c9d990efefa7L


# instance fields
.field private applicationProperties:Ljava/util/Properties;

.field private configSetup:Z

.field private domainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isConfigLoaded:Z

.field private providersConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/brickred/socialauth/util/OAuthConfig;",
            ">;"
        }
    .end annotation
.end field

.field private providersImplMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lorg/brickred/socialauth/SocialAuthConfig;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    .line 68
    new-instance v0, Lorg/brickred/socialauth/SocialAuthConfig;

    invoke-direct {v0}, Lorg/brickred/socialauth/SocialAuthConfig;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/SocialAuthConfig;->DEFAULT:Lorg/brickred/socialauth/SocialAuthConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    .line 82
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "facebook"

    .line 83
    const-class v3, Lorg/brickred/socialauth/provider/FacebookImpl;

    .line 82
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "foursquare"

    .line 85
    const-class v3, Lorg/brickred/socialauth/provider/FourSquareImpl;

    .line 84
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "google"

    .line 87
    const-class v3, Lorg/brickred/socialauth/provider/GoogleImpl;

    .line 86
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "hotmail"

    .line 89
    const-class v3, Lorg/brickred/socialauth/provider/HotmailImpl;

    .line 88
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "linkedin"

    .line 91
    const-class v3, Lorg/brickred/socialauth/provider/LinkedInImpl;

    .line 90
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "myspace"

    .line 93
    const-class v3, Lorg/brickred/socialauth/provider/MySpaceImpl;

    .line 92
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "openid"

    .line 95
    const-class v3, Lorg/brickred/socialauth/provider/OpenIdImpl;

    .line 94
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string/jumbo v2, "twitter"

    .line 97
    const-class v3, Lorg/brickred/socialauth/provider/TwitterImpl;

    .line 96
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string/jumbo v2, "yahoo"

    .line 99
    const-class v3, Lorg/brickred/socialauth/provider/YahooImpl;

    .line 98
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string/jumbo v2, "salesforce"

    .line 101
    const-class v3, Lorg/brickred/socialauth/provider/SalesForceImpl;

    .line 100
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string/jumbo v2, "yammer"

    .line 103
    const-class v3, Lorg/brickred/socialauth/provider/YammerImpl;

    .line 102
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "mendeley"

    .line 105
    const-class v3, Lorg/brickred/socialauth/provider/MendeleyImpl;

    .line 104
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string/jumbo v2, "runkeeper"

    .line 107
    const-class v3, Lorg/brickred/socialauth/provider/RunkeeperImpl;

    .line 106
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "googleplus"

    .line 109
    const-class v3, Lorg/brickred/socialauth/provider/GooglePlusImpl;

    .line 108
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "instagram"

    .line 111
    const-class v3, Lorg/brickred/socialauth/provider/InstagramImpl;

    .line 110
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "github"

    .line 113
    const-class v3, Lorg/brickred/socialauth/provider/GitHubImpl;

    .line 112
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "flickr"

    .line 115
    const-class v3, Lorg/brickred/socialauth/provider/FlickerImpl;

    .line 114
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    const-string v2, "nimble"

    .line 117
    const-class v3, Lorg/brickred/socialauth/provider/NimbleImpl;

    .line 116
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    .line 120
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "google"

    const-string/jumbo v3, "www.google.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string/jumbo v2, "yahoo"

    const-string v3, "api.login.yahoo.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string/jumbo v2, "twitter"

    const-string/jumbo v3, "twitter.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "facebook"

    const-string v3, "graph.facebook.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "hotmail"

    const-string v3, "consent.live.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "linkedin"

    const-string v3, "api.linkedin.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "foursquare"

    const-string v3, "foursquare.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "myspace"

    const-string v3, "api.myspace.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string/jumbo v2, "salesforce"

    const-string v3, "login.salesforce.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string/jumbo v2, "yammer"

    const-string/jumbo v3, "www.yammer.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "mendeley"

    const-string v3, "api.mendeley.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string/jumbo v2, "runkeeper"

    const-string/jumbo v3, "runkeeper.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "googleplus"

    const-string v3, "googleapis.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "instagram"

    const-string v3, "api.instagram.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "github"

    const-string v3, "api.github.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "flickr"

    const-string/jumbo v3, "www.flickr.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    const-string v2, "nimble"

    const-string v3, "api.nimble.com"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersConfig:Ljava/util/Map;

    .line 140
    new-instance v0, Lorg/brickred/socialauth/util/OAuthConfig;

    const-string v1, "openid"

    const-string v2, "openid"

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/util/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v0, "c":Lorg/brickred/socialauth/util/OAuthConfig;
    const-class v1, Lorg/brickred/socialauth/provider/OpenIdImpl;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/util/OAuthConfig;->setProviderImplClass(Ljava/lang/Class;)V

    .line 142
    iget-object v1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersConfig:Ljava/util/Map;

    const-string v2, "openid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public static getDefault()Lorg/brickred/socialauth/SocialAuthConfig;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/brickred/socialauth/SocialAuthConfig;->DEFAULT:Lorg/brickred/socialauth/SocialAuthConfig;

    return-object v0
.end method

.method private loadProvidersConfig()V
    .locals 24

    .prologue
    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_0

    .line 393
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/brickred/socialauth/SocialAuthConfig;->configSetup:Z

    .line 394
    return-void

    .line 314
    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 315
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 316
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 317
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    const-string v21, ".consumer_key"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 317
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "cKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    const-string v21, ".consumer_secret"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 319
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "cSecret":Ljava/lang/String;
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 322
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 323
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 324
    sget-object v18, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Loading configuration for provider : "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 325
    new-instance v5, Lorg/brickred/socialauth/util/OAuthConfig;

    invoke-direct {v5, v3, v4}, Lorg/brickred/socialauth/util/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v5, "conf":Lorg/brickred/socialauth/util/OAuthConfig;
    invoke-virtual {v5, v7}, Lorg/brickred/socialauth/util/OAuthConfig;->setId(Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setProviderImplClass(Ljava/lang/Class;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    const-string v21, ".custom_permissions"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 328
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    .line 329
    if-eqz v18, :cond_1

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    .line 331
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ".custom_permissions"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 330
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 331
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, "perms":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    .line 333
    invoke-virtual {v5, v8}, Lorg/brickred/socialauth/util/OAuthConfig;->setCustomPermissions(Ljava/lang/String;)V

    .line 336
    .end local v8    # "perms":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v21, ".request_token_url"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 336
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    .line 337
    if-eqz v18, :cond_2

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    .line 339
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ".request_token_url"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 338
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 339
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 340
    .local v14, "reqUrl":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 341
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setRequestTokenUrl(Ljava/lang/String;)V

    .line 344
    .end local v14    # "reqUrl":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    const-string v21, ".authentication_url"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 344
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    .line 345
    if-eqz v18, :cond_3

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    .line 347
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ".authentication_url"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 346
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 347
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "authUrl":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 349
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAuthenticationUrl(Ljava/lang/String;)V

    .line 352
    .end local v2    # "authUrl":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    const-string v21, ".access_token_url"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 352
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    .line 353
    if-eqz v18, :cond_4

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    .line 355
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ".access_token_url"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 354
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 355
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 356
    .local v16, "tokenUrl":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_4

    .line 357
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setAccessTokenUrl(Ljava/lang/String;)V

    .line 360
    .end local v16    # "tokenUrl":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ".plugins"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v18, v0

    .line 362
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, ".plugins"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 361
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 362
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 363
    .local v12, "pluginsStr":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_5

    .line 364
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 365
    .local v11, "plugins":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v18, v0

    if-lez v18, :cond_5

    .line 366
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v10, "pluginScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5, v11}, Lorg/brickred/socialauth/util/OAuthConfig;->setRegisteredPlugins([Ljava/lang/String;)V

    .line 368
    array-length v0, v11

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 381
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 382
    invoke-virtual {v5, v10}, Lorg/brickred/socialauth/util/OAuthConfig;->setPluginsScopes(Ljava/util/List;)V

    .line 387
    .end local v10    # "pluginScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "plugins":[Ljava/lang/String;
    .end local v12    # "pluginsStr":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->providersConfig:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 368
    .restart local v10    # "pluginScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "plugins":[Ljava/lang/String;
    .restart local v12    # "pluginsStr":Ljava/lang/String;
    :cond_6
    aget-object v9, v11, v18

    .line 369
    .local v9, "plugin":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    const-string v23, ".scope"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 369
    invoke-virtual/range {v21 .. v22}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    .line 370
    if-eqz v21, :cond_7

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    move-object/from16 v21, v0

    .line 372
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ".scope"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 373
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 374
    .local v13, "pscope":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_7

    .line 375
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 377
    .local v15, "sarr":[Ljava/lang/String;
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 368
    .end local v13    # "pscope":Ljava/lang/String;
    .end local v15    # "sarr":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 389
    .end local v5    # "conf":Lorg/brickred/socialauth/util/OAuthConfig;
    .end local v9    # "plugin":Ljava/lang/String;
    .end local v10    # "pluginScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "plugins":[Ljava/lang/String;
    .end local v12    # "pluginsStr":Ljava/lang/String;
    :cond_8
    sget-object v18, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Configuration for provider "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 390
    const-string v21, " is not available"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 389
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private registerProviders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v3, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    return-void

    .line 147
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v4, "socialauth."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    const-string/jumbo v4, "socialauth."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "val":Ljava/lang/String;
    iget-object v4, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    iget-object v5, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    .line 152
    invoke-virtual {v5, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v4, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    invoke-interface {v4, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setProxy()V
    .locals 6

    .prologue
    .line 441
    const/4 v2, 0x0

    .line 442
    .local v2, "proxyHost":Ljava/lang/String;
    const/4 v3, 0x0

    .line 443
    .local v3, "proxyPort":Ljava/lang/String;
    iget-object v4, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    const-string v5, "proxy.host"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    iget-object v4, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    const-string v5, "proxy.host"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 447
    :cond_0
    iget-object v4, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    const-string v5, "proxy.port"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 448
    iget-object v4, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    const-string v5, "proxy.port"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 451
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, "port":I
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 455
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 460
    :cond_2
    :goto_0
    invoke-static {v2, v1}, Lorg/brickred/socialauth/util/HttpUtil;->setProxyConfig(Ljava/lang/String;I)V

    .line 462
    .end local v1    # "port":I
    :cond_3
    return-void

    .line 456
    .restart local v1    # "port":I
    :catch_0
    move-exception v0

    .line 457
    .local v0, "ne":Ljava/lang/NumberFormatException;
    sget-object v4, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Proxy port is not an integer in configuration"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addProvider(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "pname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registering a provider "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public addProviderConfig(Ljava/lang/String;Lorg/brickred/socialauth/util/OAuthConfig;)V
    .locals 3
    .param p1, "providerId"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/brickred/socialauth/util/OAuthConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p2, p1}, Lorg/brickred/socialauth/util/OAuthConfig;->setId(Ljava/lang/String;)V

    .line 299
    sget-object v0, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding provider configuration :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersConfig:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-virtual {p2}, Lorg/brickred/socialauth/util/OAuthConfig;->getProviderImplClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/brickred/socialauth/util/OAuthConfig;->getProviderImplClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->domainMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    new-instance v0, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v1, "Provider Impl class not found"

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_1
    invoke-virtual {p2}, Lorg/brickred/socialauth/util/OAuthConfig;->getProviderImplClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersImplMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lorg/brickred/socialauth/util/OAuthConfig;->setProviderImplClass(Ljava/lang/Class;)V

    .line 310
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->configSetup:Z

    .line 311
    return-void
.end method

.method public getApplicationProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getProviderConfig(Ljava/lang/String;)Lorg/brickred/socialauth/util/OAuthConfig;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/SocialAuthException;,
            Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v2, p0, Lorg/brickred/socialauth/SocialAuthConfig;->providersConfig:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/brickred/socialauth/util/OAuthConfig;

    .line 408
    .local v0, "config":Lorg/brickred/socialauth/util/OAuthConfig;
    if-nez v0, :cond_0

    .line 410
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 411
    const-string v2, "openid"

    invoke-virtual {p0, v2}, Lorg/brickred/socialauth/SocialAuthConfig;->getProviderConfig(Ljava/lang/String;)Lorg/brickred/socialauth/util/OAuthConfig;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p1}, Lorg/brickred/socialauth/util/OAuthConfig;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :cond_0
    if-nez v0, :cond_1

    .line 421
    new-instance v2, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Configuration of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 422
    const-string v4, " provider is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    invoke-direct {v2, v3}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "me":Ljava/net/MalformedURLException;
    new-instance v2, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    const-string v4, " is not a provider or valid OpenId URL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-direct {v2, v3}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    .end local v1    # "me":Ljava/net/MalformedURLException;
    :cond_1
    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 426
    new-instance v2, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    const-string v4, " consumer_secret value is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-direct {v2, v3}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 429
    :cond_2
    invoke-virtual {v0}, Lorg/brickred/socialauth/util/OAuthConfig;->get_consumerKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    .line 430
    new-instance v2, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    const-string v4, " consumer_key value is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    invoke-direct {v2, v3}, Lorg/brickred/socialauth/exception/SocialAuthConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    :cond_3
    return-object v0
.end method

.method protected isConfigSetup()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->configSetup:Z

    return v0
.end method

.method public load()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 280
    iget-boolean v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->isConfigLoaded:Z

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Loading application configuration from file oauth_consumer.properties"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 283
    const-string v0, "oauth_consumer.properties"

    invoke-virtual {p0, v0}, Lorg/brickred/socialauth/SocialAuthConfig;->load(Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    iget-boolean v2, p0, Lorg/brickred/socialauth/SocialAuthConfig;->isConfigLoaded:Z

    if-nez v2, :cond_0

    .line 205
    sget-object v2, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Loading application configuration through input stream."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 206
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 208
    .local v1, "props":Ljava/util/Properties;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 209
    invoke-virtual {p0, v1}, Lorg/brickred/socialauth/SocialAuthConfig;->load(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1    # "props":Ljava/util/Properties;
    :cond_0
    return-void

    .line 210
    .restart local v1    # "props":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ie":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    .line 212
    const-string v3, "Could not load configuration from input stream"

    .line 211
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public load(Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 261
    iget-boolean v3, p0, Lorg/brickred/socialauth/SocialAuthConfig;->isConfigLoaded:Z

    if-nez v3, :cond_0

    .line 262
    sget-object v3, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading application configuration from file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 263
    const-class v3, Lorg/brickred/socialauth/SocialAuthConfig;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 265
    .local v1, "loader":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 266
    .local v0, "in":Ljava/io/InputStream;
    invoke-virtual {p0, v0}, Lorg/brickred/socialauth/SocialAuthConfig;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    return-void

    .line 267
    .restart local v1    # "loader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    .line 268
    .local v2, "ne":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    const-string v5, " file is not found in your class path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public load(Ljava/util/Properties;)V
    .locals 6
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 225
    iget-boolean v3, p0, Lorg/brickred/socialauth/SocialAuthConfig;->isConfigLoaded:Z

    if-nez v3, :cond_2

    .line 226
    sget-object v3, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Loading application configuration"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 227
    sget-object v3, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading application configuration through properties. Given properties are :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 229
    iput-object p1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    .line 230
    invoke-direct {p0}, Lorg/brickred/socialauth/SocialAuthConfig;->registerProviders()V

    .line 231
    invoke-direct {p0}, Lorg/brickred/socialauth/SocialAuthConfig;->loadProvidersConfig()V

    .line 232
    invoke-direct {p0}, Lorg/brickred/socialauth/SocialAuthConfig;->setProxy()V

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "timeout":Ljava/lang/String;
    iget-object v3, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    .line 235
    const-string v4, "http.connectionTimeOut"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    .line 237
    const-string v4, "http.connectionTimeOut"

    .line 236
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 239
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 240
    const/4 v1, 0x0

    .line 242
    .local v1, "time":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    :goto_0
    invoke-static {v1}, Lorg/brickred/socialauth/util/HttpUtil;->setConnectionTimeout(I)V

    .line 248
    .end local v1    # "time":I
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/brickred/socialauth/SocialAuthConfig;->isConfigLoaded:Z

    .line 250
    .end local v2    # "timeout":Ljava/lang/String;
    :cond_2
    return-void

    .line 243
    .restart local v1    # "time":I
    .restart local v2    # "timeout":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "ne":Ljava/lang/NumberFormatException;
    sget-object v3, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Http connection timout is not an integer in configuration"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setApplicationProperties(Ljava/util/Properties;)V
    .locals 2
    .param p1, "applicationProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    sget-object v0, Lorg/brickred/socialauth/SocialAuthConfig;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Loading application properties"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 190
    iput-object p1, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    .line 191
    iget-object v0, p0, Lorg/brickred/socialauth/SocialAuthConfig;->applicationProperties:Ljava/util/Properties;

    invoke-virtual {p0, v0}, Lorg/brickred/socialauth/SocialAuthConfig;->load(Ljava/util/Properties;)V

    .line 192
    return-void
.end method
