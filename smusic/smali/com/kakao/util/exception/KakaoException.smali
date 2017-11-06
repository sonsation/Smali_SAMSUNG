.class public Lcom/kakao/util/exception/KakaoException;
.super Ljava/lang/RuntimeException;
.source "KakaoException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/util/exception/KakaoException$ErrorType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33e2d552915c92d8L


# instance fields
.field private errorType:Lcom/kakao/util/exception/KakaoException$ErrorType;


# direct methods
.method public constructor <init>(Lcom/kakao/util/exception/KakaoException$ErrorType;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorType"    # Lcom/kakao/util/exception/KakaoException$ErrorType;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/kakao/util/exception/KakaoException;->errorType:Lcom/kakao/util/exception/KakaoException$ErrorType;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getErrorType()Lcom/kakao/util/exception/KakaoException$ErrorType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kakao/util/exception/KakaoException;->errorType:Lcom/kakao/util/exception/KakaoException$ErrorType;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kakao/util/exception/KakaoException;->errorType:Lcom/kakao/util/exception/KakaoException$ErrorType;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kakao/util/exception/KakaoException;->errorType:Lcom/kakao/util/exception/KakaoException$ErrorType;

    invoke-virtual {v1}, Lcom/kakao/util/exception/KakaoException$ErrorType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isCancledOperation()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kakao/util/exception/KakaoException;->errorType:Lcom/kakao/util/exception/KakaoException$ErrorType;

    sget-object v1, Lcom/kakao/util/exception/KakaoException$ErrorType;->CANCELED_OPERATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
