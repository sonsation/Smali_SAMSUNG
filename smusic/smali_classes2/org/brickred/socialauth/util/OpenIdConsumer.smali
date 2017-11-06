.class public Lorg/brickred/socialauth/util/OpenIdConsumer;
.super Ljava/lang/Object;
.source "OpenIdConsumer.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static associationMap:Ljava/util/Map;
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

.field private static requestTokenMap:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const-class v0, Lorg/brickred/socialauth/util/OpenIdConsumer;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->LOG:Lorg/apache/commons/logging/Log;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->associationMap:Ljava/util/Map;

    .line 47
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->associationMap:Ljava/util/Map;

    const-string v1, "openid.ns"

    const-string v2, "http://specs.openid.net/auth/2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->associationMap:Ljava/util/Map;

    const-string v1, "openid.mode"

    const-string v2, "associate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->associationMap:Ljava/util/Map;

    const-string v1, "openid.assoc_type"

    const-string v2, "HMAC-SHA1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->associationMap:Ljava/util/Map;

    const-string v1, "openid.session_type"

    const-string v2, "no-encryption"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    .line 53
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ns"

    const-string v2, "http://specs.openid.net/auth/2.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.claimed_id"

    .line 55
    const-string v2, "http://specs.openid.net/auth/2.0/identifier_select"

    .line 54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.identity"

    .line 57
    const-string v2, "http://specs.openid.net/auth/2.0/identifier_select"

    .line 56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.mode"

    const-string v2, "checkid_setup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ns.pape"

    .line 60
    const-string v2, "http://specs.openid.net/extensions/pape/1.0"

    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ns.max_auth_age"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ns.ax"

    const-string v2, "http://openid.net/srv/ax/1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ax.mode"

    const-string v2, "fetch_request"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ax.type.country"

    .line 65
    const-string v2, "http://axschema.org/contact/country/home"

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ax.type.email"

    .line 67
    const-string v2, "http://axschema.org/contact/email"

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ax.type.firstname"

    .line 69
    const-string v2, "http://axschema.org/namePerson/first"

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ax.type.language"

    .line 71
    const-string v2, "http://axschema.org/pref/language"

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ax.type.lastname"

    .line 73
    const-string v2, "http://axschema.org/namePerson/last"

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ax.required"

    .line 75
    const-string v2, "country,email,firstname,language,lastname"

    .line 74
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    const-string v1, "openid.ns.ext2"

    .line 78
    const-string v2, "http://specs.openid.net/extensions/oauth/1.0"

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssociationURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v1, 0x3f

    .line 92
    sget-object v2, Lorg/brickred/socialauth/util/OpenIdConsumer;->associationMap:Ljava/util/Map;

    invoke-static {v2}, Lorg/brickred/socialauth/util/HttpUtil;->buildParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 94
    .local v1, "separator":C
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 93
    .end local v1    # "separator":C
    :cond_0
    const/16 v1, 0x26

    goto :goto_0
.end method

.method public static getRequestTokenURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "requestTokenUrl"    # Ljava/lang/String;
    .param p1, "returnTo"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "assocHandle"    # Ljava/lang/String;
    .param p4, "consumerURL"    # Ljava/lang/String;
    .param p5, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3f

    .line 117
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lorg/brickred/socialauth/util/OpenIdConsumer;->requestTokenMap:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 119
    const-string v4, "openid.return_to"

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v4, "openid.realm"

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v4, "openid.assoc_handle"

    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v4, "openid.ext2.consumer"

    invoke-interface {v1, v4, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    if-eqz p5, :cond_0

    .line 124
    const-string v4, "openid.ext2.scope"

    invoke-interface {v1, v4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    invoke-static {v1}, Lorg/brickred/socialauth/util/HttpUtil;->buildParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "paramStr":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 128
    .local v2, "separator":C
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "url":Ljava/lang/String;
    sget-object v4, Lorg/brickred/socialauth/util/OpenIdConsumer;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Request Token URL : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 130
    return-object v3

    .line 127
    .end local v2    # "separator":C
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x26

    goto :goto_0
.end method

.method public static getUserInfo(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/brickred/socialauth/Profile;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/brickred/socialauth/Profile;

    invoke-direct {v0}, Lorg/brickred/socialauth/Profile;-><init>()V

    .line 142
    .local v0, "p":Lorg/brickred/socialauth/Profile;
    const-string v1, "openid.ext1.value.email"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setEmail(Ljava/lang/String;)V

    .line 143
    const-string v1, "openid.ext1.value.firstname"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setFirstName(Ljava/lang/String;)V

    .line 144
    const-string v1, "openid.ext1.value.lastname"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setLastName(Ljava/lang/String;)V

    .line 145
    const-string v1, "openid.ext1.value.country"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setCountry(Ljava/lang/String;)V

    .line 146
    const-string v1, "openid.ext1.value.language"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setLanguage(Ljava/lang/String;)V

    .line 147
    const-string v1, "openid.identity"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Profile;->setValidatedId(Ljava/lang/String;)V

    .line 148
    return-object v0
.end method
