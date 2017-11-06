.class public Lorg/brickred/socialauth/util/OAuthConfig;
.super Ljava/lang/Object;
.source "OAuthConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x691e3efa9062eb37L


# instance fields
.field private final _consumerKey:Ljava/lang/String;

.field private final _consumerSecret:Ljava/lang/String;

.field private final _signatureMethod:Ljava/lang/String;

.field private final _transportName:Ljava/lang/String;

.field private accessTokenUrl:Ljava/lang/String;

.field private authenticationUrl:Ljava/lang/String;

.field private customPermissions:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private pluginsScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providerImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private registeredPlugins:[Ljava/lang/String;

.field private requestTokenUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_consumerKey:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_consumerSecret:Ljava/lang/String;

    .line 83
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_transportName:Ljava/lang/String;

    .line 84
    const-string v0, "HMAC-SHA1"

    iput-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_signatureMethod:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "signatureMethod"    # Ljava/lang/String;
    .param p4, "transportName"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_consumerKey:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_consumerSecret:Ljava/lang/String;

    .line 68
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 69
    :cond_0
    const-string v0, "HMAC-SHA1"

    iput-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_signatureMethod:Ljava/lang/String;

    .line 73
    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 74
    :cond_1
    sget-object v0, Lorg/brickred/socialauth/util/MethodType;->GET:Lorg/brickred/socialauth/util/MethodType;

    invoke-virtual {v0}, Lorg/brickred/socialauth/util/MethodType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_transportName:Ljava/lang/String;

    .line 78
    :goto_1
    return-void

    .line 71
    :cond_2
    iput-object p3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_signatureMethod:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_3
    iput-object p4, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_transportName:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getAccessTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->accessTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->authenticationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomPermissions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->customPermissions:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginsScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->pluginsScopes:Ljava/util/List;

    return-object v0
.end method

.method public getProviderImplClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->providerImplClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getRegisteredPlugins()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->registeredPlugins:[Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTokenUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->requestTokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public get_consumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public get_consumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public get_signatureMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_signatureMethod:Ljava/lang/String;

    return-object v0
.end method

.method public get_transportName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_transportName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessTokenUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessTokenUrl"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->accessTokenUrl:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setAuthenticationUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "authenticationUrl"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->authenticationUrl:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setCustomPermissions(Ljava/lang/String;)V
    .locals 0
    .param p1, "customPermissions"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->customPermissions:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->id:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setPluginsScopes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "pluginsScopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->pluginsScopes:Ljava/util/List;

    .line 275
    return-void
.end method

.method public setProviderImplClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "providerImplClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->providerImplClass:Ljava/lang/Class;

    .line 159
    return-void
.end method

.method public setRegisteredPlugins([Ljava/lang/String;)V
    .locals 0
    .param p1, "registeredPlugins"    # [Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->registeredPlugins:[Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setRequestTokenUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestTokenUrl"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lorg/brickred/socialauth/util/OAuthConfig;->requestTokenUrl:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v1, "result":Ljava/lang/StringBuilder;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "NEW_LINE":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Object {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " consumerKey: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_consumerKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " consumerSecret: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_consumerSecret:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " signatureMethod: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_signatureMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " transportName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->_transportName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " providerImplClass: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->providerImplClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " customPermissions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->customPermissions:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " requestTokenUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->requestTokenUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " authenticationUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->authenticationUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " accessTokenUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->accessTokenUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " registeredPlugins: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->registeredPlugins:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " pluginsScopes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/brickred/socialauth/util/OAuthConfig;->pluginsScopes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
