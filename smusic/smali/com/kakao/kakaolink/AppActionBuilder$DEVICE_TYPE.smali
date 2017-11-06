.class public final enum Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;
.super Ljava/lang/Enum;
.source "AppActionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaolink/AppActionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DEVICE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

.field public static final enum PAD:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

.field public static final enum PHONE:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    const-string v1, "PHONE"

    const-string/jumbo v2, "phone"

    invoke-direct {v0, v1, v3, v2}, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->PHONE:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    .line 43
    new-instance v0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    const-string v1, "PAD"

    const-string/jumbo v2, "pad"

    invoke-direct {v0, v1, v4, v2}, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->PAD:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    sget-object v1, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->PHONE:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->PAD:Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->$VALUES:[Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->value:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->$VALUES:[Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    invoke-virtual {v0}, [Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kakao/kakaolink/AppActionBuilder$DEVICE_TYPE;->value:Ljava/lang/String;

    return-object v0
.end method
