.class public final enum Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;
.super Ljava/lang/Enum;
.source "LinkObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaolink/internal/LinkObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DISPLAY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

.field public static final enum BOTH:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

.field public static final enum RECEIVER:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

.field public static final enum SENDER:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    const-string v1, "BOTH"

    const-string v2, "both"

    invoke-direct {v0, v1, v3, v2}, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->BOTH:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    .line 48
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    const-string v1, "SENDER"

    const-string/jumbo v2, "sender"

    invoke-direct {v0, v1, v4, v2}, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->SENDER:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    .line 49
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    const-string v1, "RECEIVER"

    const-string/jumbo v2, "receiver"

    invoke-direct {v0, v1, v5, v2}, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->RECEIVER:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->BOTH:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->SENDER:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->RECEIVER:Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->$VALUES:[Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->value:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic access$200(Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->value:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->$VALUES:[Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    invoke-virtual {v0}, [Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/kakaolink/internal/LinkObject$DISPLAY_TYPE;

    return-object v0
.end method
