.class public interface abstract Lorg/brickred/socialauth/AuthProvider;
.super Ljava/lang/Object;
.source "AuthProvider.java"


# virtual methods
.method public abstract getAccessGrant()Lorg/brickred/socialauth/util/AccessGrant;
.end method

.method public abstract getLoginRedirectURL(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getProviderId()Ljava/lang/String;
.end method

.method public abstract getUserProfile()Lorg/brickred/socialauth/Profile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract logout()V
.end method

.method public abstract refreshToken(Lorg/brickred/socialauth/util/AccessGrant;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation
.end method

.method public abstract registerPlugins()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setAccessGrant(Lorg/brickred/socialauth/util/AccessGrant;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/brickred/socialauth/exception/AccessTokenExpireException;,
            Lorg/brickred/socialauth/exception/SocialAuthException;
        }
    .end annotation
.end method

.method public abstract setPermission(Lorg/brickred/socialauth/Permission;)V
.end method

.method public abstract updateStatus(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract uploadImage(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lorg/brickred/socialauth/util/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract verifyResponse(Ljava/util/Map;)Lorg/brickred/socialauth/Profile;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
