.class public final enum Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;
.super Ljava/lang/Enum;
.source "AppActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kakao/kakaolink/internal/AppActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION_INFO_OS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

.field public static final enum ANDROID:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

.field public static final enum IOS:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    const-string v1, "ANDROID"

    const-string v2, "android"

    invoke-direct {v0, v1, v3, v2}, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->ANDROID:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    .line 29
    new-instance v0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    const-string v1, "IOS"

    const-string v2, "ios"

    invoke-direct {v0, v1, v4, v2}, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->IOS:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    sget-object v1, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->ANDROID:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->IOS:Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->$VALUES:[Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->value:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->value:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    return-object v0
.end method

.method public static values()[Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->$VALUES:[Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    invoke-virtual {v0}, [Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kakao/kakaolink/internal/AppActionInfo$ACTION_INFO_OS;

    return-object v0
.end method
