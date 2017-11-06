.class public final enum Lcom/kakao/util/KakaoParameterException$ERROR_CODE;
.super Ljava/lang/Enum;
.source "KakaoParameterException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/util/KakaoParameterException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERROR_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/util/KakaoParameterException$ERROR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

.field public static final enum CORE_PARAMETER_MISSING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

.field public static final enum DUPLICATE_OBJECTS_USED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

.field public static final enum JSON_PARSING_ERROR:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

.field public static final enum MINIMUM_IMAGE_SIZE_REQUIRED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

.field public static final enum NOT_EXIST_IMAGE:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

.field public static final enum UNKNOWN:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

.field public static final enum UNSUPPORTED_ENCODING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->UNKNOWN:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 38
    new-instance v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v1, "CORE_PARAMETER_MISSING"

    invoke-direct {v0, v1, v4}, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->CORE_PARAMETER_MISSING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 42
    new-instance v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v1, "MINIMUM_IMAGE_SIZE_REQUIRED"

    invoke-direct {v0, v1, v5}, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->MINIMUM_IMAGE_SIZE_REQUIRED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 46
    new-instance v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v1, "DUPLICATE_OBJECTS_USED"

    invoke-direct {v0, v1, v6}, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->DUPLICATE_OBJECTS_USED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 50
    new-instance v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v1, "UNSUPPORTED_ENCODING"

    invoke-direct {v0, v1, v7}, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->UNSUPPORTED_ENCODING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 54
    new-instance v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v1, "JSON_PARSING_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->JSON_PARSING_ERROR:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 58
    new-instance v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    const-string v1, "NOT_EXIST_IMAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->NOT_EXIST_IMAGE:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    .line 30
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->UNKNOWN:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->CORE_PARAMETER_MISSING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->MINIMUM_IMAGE_SIZE_REQUIRED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->DUPLICATE_OBJECTS_USED:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->UNSUPPORTED_ENCODING:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->JSON_PARSING_ERROR:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->NOT_EXIST_IMAGE:Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->$VALUES:[Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/util/KakaoParameterException$ERROR_CODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    return-object v0
.end method

.method public static values()[Lcom/kakao/util/KakaoParameterException$ERROR_CODE;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->$VALUES:[Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    invoke-virtual {v0}, [Lcom/kakao/util/KakaoParameterException$ERROR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/util/KakaoParameterException$ERROR_CODE;

    return-object v0
.end method
