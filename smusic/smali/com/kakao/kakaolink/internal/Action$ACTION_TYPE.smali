.class public final enum Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;
.super Ljava/lang/Enum;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaolink/internal/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

.field public static final enum APP:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

.field public static final enum INWEB:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

.field public static final enum WEB:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    const-string v1, "WEB"

    const-string/jumbo v2, "web"

    invoke-direct {v0, v1, v3, v2}, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->WEB:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    .line 31
    new-instance v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    const-string v1, "APP"

    const-string v2, "app"

    invoke-direct {v0, v1, v4, v2}, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->APP:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    .line 32
    new-instance v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    const-string v1, "INWEB"

    const-string v2, "inweb"

    invoke-direct {v0, v1, v5, v2}, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->INWEB:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    sget-object v1, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->WEB:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->APP:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->INWEB:Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->$VALUES:[Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->value:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->value:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->$VALUES:[Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    invoke-virtual {v0}, [Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/kakaolink/internal/Action$ACTION_TYPE;

    return-object v0
.end method
