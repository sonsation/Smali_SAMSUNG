.class public final enum Lcom/kakao/util/exception/KakaoException$ErrorType;
.super Ljava/lang/Enum;
.source "KakaoException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/util/exception/KakaoException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/util/exception/KakaoException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/util/exception/KakaoException$ErrorType;

.field public static final enum AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

.field public static final enum CANCELED_OPERATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

.field public static final enum ILLEGAL_ARGUMENT:Lcom/kakao/util/exception/KakaoException$ErrorType;

.field public static final enum MISS_CONFIGURATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

.field public static final enum UNSPECIFIED_ERROR:Lcom/kakao/util/exception/KakaoException$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v1, "ILLEGAL_ARGUMENT"

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/exception/KakaoException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->ILLEGAL_ARGUMENT:Lcom/kakao/util/exception/KakaoException$ErrorType;

    .line 27
    new-instance v0, Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v1, "MISS_CONFIGURATION"

    invoke-direct {v0, v1, v3}, Lcom/kakao/util/exception/KakaoException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->MISS_CONFIGURATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    .line 28
    new-instance v0, Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v1, "CANCELED_OPERATION"

    invoke-direct {v0, v1, v4}, Lcom/kakao/util/exception/KakaoException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->CANCELED_OPERATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    .line 29
    new-instance v0, Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v1, "AUTHORIZATION_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/kakao/util/exception/KakaoException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    .line 30
    new-instance v0, Lcom/kakao/util/exception/KakaoException$ErrorType;

    const-string v1, "UNSPECIFIED_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/kakao/util/exception/KakaoException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->UNSPECIFIED_ERROR:Lcom/kakao/util/exception/KakaoException$ErrorType;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kakao/util/exception/KakaoException$ErrorType;

    sget-object v1, Lcom/kakao/util/exception/KakaoException$ErrorType;->ILLEGAL_ARGUMENT:Lcom/kakao/util/exception/KakaoException$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kakao/util/exception/KakaoException$ErrorType;->MISS_CONFIGURATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/util/exception/KakaoException$ErrorType;->CANCELED_OPERATION:Lcom/kakao/util/exception/KakaoException$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/util/exception/KakaoException$ErrorType;->AUTHORIZATION_FAILED:Lcom/kakao/util/exception/KakaoException$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/util/exception/KakaoException$ErrorType;->UNSPECIFIED_ERROR:Lcom/kakao/util/exception/KakaoException$ErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->$VALUES:[Lcom/kakao/util/exception/KakaoException$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/util/exception/KakaoException$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/kakao/util/exception/KakaoException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/util/exception/KakaoException$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/kakao/util/exception/KakaoException$ErrorType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/kakao/util/exception/KakaoException$ErrorType;->$VALUES:[Lcom/kakao/util/exception/KakaoException$ErrorType;

    invoke-virtual {v0}, [Lcom/kakao/util/exception/KakaoException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/util/exception/KakaoException$ErrorType;

    return-object v0
.end method
