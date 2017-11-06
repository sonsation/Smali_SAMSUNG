.class public final enum Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;
.super Ljava/lang/Enum;
.source "LinkObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaolink/internal/LinkObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OBJTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

.field public static final enum BUTTON:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

.field public static final enum IMAGE:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

.field public static final enum TEXT:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

.field public static final enum TEXT_LINK:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

.field public static final enum UNKNOWN:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;


# instance fields
.field private final actionable:Z

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    const-string v1, "UNKNOWN"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->UNKNOWN:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    .line 31
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    const-string v1, "TEXT"

    const-string v2, "label"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->TEXT:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    .line 32
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    const-string v1, "IMAGE"

    const-string v2, "image"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->IMAGE:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    .line 33
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    const-string v1, "BUTTON"

    const-string v2, "button"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->BUTTON:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    .line 34
    new-instance v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    const-string v1, "TEXT_LINK"

    const-string v2, "link"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->TEXT_LINK:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->UNKNOWN:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->TEXT:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->IMAGE:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->BUTTON:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->TEXT_LINK:Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->$VALUES:[Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "actionable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->value:Ljava/lang/String;

    .line 42
    iput-boolean p4, p0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->actionable:Z

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->actionable:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    return-object v0
.end method

.method public static values()[Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->$VALUES:[Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    invoke-virtual {v0}, [Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/kakaolink/internal/LinkObject$OBJTYPE;

    return-object v0
.end method
