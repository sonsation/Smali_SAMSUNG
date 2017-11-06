.class public Lcom/kakao/util/KakaoParameterException;
.super Ljava/lang/Exception;
.source "KakaoParameterException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/util/KakaoParameterException$ERROR_CODE;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3f00665dfab92418L


# instance fields
.field private code:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;


# direct methods
.method public constructor <init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "code"    # Lcom/kakao/util/KakaoParameterException$ERROR_CODE;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 87
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 25
    sget-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->UNKNOWN:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    iput-object v0, p0, Lcom/kakao/util/KakaoParameterException;->code:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 88
    iput-object p1, p0, Lcom/kakao/util/KakaoParameterException;->code:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/kakao/util/KakaoParameterException$ERROR_CODE;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Lcom/kakao/util/KakaoParameterException$ERROR_CODE;
    .param p2, "e"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->UNKNOWN:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    iput-object v0, p0, Lcom/kakao/util/KakaoParameterException;->code:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 83
    iput-object p1, p0, Lcom/kakao/util/KakaoParameterException;->code:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->UNKNOWN:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    iput-object v0, p0, Lcom/kakao/util/KakaoParameterException;->code:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 79
    return-void
.end method


# virtual methods
.method public getCode()Lcom/kakao/util/KakaoParameterException$ERROR_CODE;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kakao/util/KakaoParameterException;->code:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kakao/util/KakaoParameterException;->code:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kakao/util/KakaoParameterException;->code:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
