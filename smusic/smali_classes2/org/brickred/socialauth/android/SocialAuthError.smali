.class public Lorg/brickred/socialauth/android/SocialAuthError;
.super Ljava/lang/Throwable;
.source "SocialAuthError.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final innerException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthError;->innerException:Ljava/lang/Exception;

    .line 51
    const-string v0, "SocialAuthError"

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method


# virtual methods
.method public getInnerException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthError;->innerException:Ljava/lang/Exception;

    return-object v0
.end method
