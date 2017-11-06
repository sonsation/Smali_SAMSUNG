.class public final enum Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
.super Ljava/lang/Enum;
.source "DeepLinkConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchemeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

.field public static final enum CONTENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

.field public static final enum FILE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

.field public static final enum RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

.field public static final enum SAMSUNG_MUSIC:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    const-string v1, "SAMSUNG_MUSIC"

    const-string/jumbo v2, "samu"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->SAMSUNG_MUSIC:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    .line 7
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    const-string v1, "RADIO"

    const-string/jumbo v2, "radio"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    .line 8
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    const-string v1, "FILE"

    const-string v2, "file"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->FILE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    .line 9
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    const-string v1, "CONTENT"

    const-string v2, "content"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->CONTENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->SAMSUNG_MUSIC:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->RADIO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->FILE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->CONTENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->value:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static getSchemeType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    .locals 5
    .param p0, "scheme"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 23
    .local v0, "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    iget-object v4, v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 28
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    :goto_1
    return-object v0

    .line 22
    .restart local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->value:Ljava/lang/String;

    return-object v0
.end method
