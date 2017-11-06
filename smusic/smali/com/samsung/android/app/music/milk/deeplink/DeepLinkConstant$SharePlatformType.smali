.class public final enum Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
.super Ljava/lang/Enum;
.source "DeepLinkConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharePlatformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum FACEBOOK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum INSTAGRAM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum KAKAOSTORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum KAKAOTALK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum LINE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum SHARE_VIA:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum TWITTER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum WECHAT_MOMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum WECHAT_MY_FRIEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

.field public static final enum WEIBO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "FACEBOOK"

    const-string v2, "fb"

    const-string v3, "FaceBook"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->FACEBOOK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 234
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "TWITTER"

    const-string/jumbo v2, "tw"

    const-string v3, "Twitter"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->TWITTER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 235
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "KAKAOTALK"

    const-string v2, "kt"

    const-string v3, "KakaoTalk"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->KAKAOTALK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 236
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "KAKAOSTORY"

    const-string v2, "ks"

    const-string v3, "KakaoStory"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->KAKAOSTORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 237
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "LINE"

    const-string v2, "ln"

    const-string v3, "LINE"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->LINE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 238
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "INSTAGRAM"

    const/4 v2, 0x5

    const-string v3, "in"

    const-string v4, "Instagram"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->INSTAGRAM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 239
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "WECHAT_MY_FRIEND"

    const/4 v2, 0x6

    const-string/jumbo v3, "wcf"

    const-string v4, "Wechat My friend"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WECHAT_MY_FRIEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 240
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "WECHAT_MOMENT"

    const/4 v2, 0x7

    const-string/jumbo v3, "wcm"

    const-string v4, "Wechat Moment"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WECHAT_MOMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 241
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "WEIBO"

    const/16 v2, 0x8

    const-string/jumbo v3, "wb"

    const-string v4, "Weibo"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WEIBO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 242
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    const-string v1, "SHARE_VIA"

    const/16 v2, 0x9

    const-string/jumbo v3, "sv"

    const-string v4, "Share via"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->SHARE_VIA:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    .line 231
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->FACEBOOK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->TWITTER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->KAKAOTALK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->KAKAOSTORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->LINE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->INSTAGRAM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WECHAT_MY_FRIEND:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WECHAT_MOMENT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->WEIBO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->SHARE_VIA:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 248
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->value:Ljava/lang/String;

    .line 249
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->name:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public static getSharePlatfomType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    .locals 5
    .param p0, "org"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 262
    .local v0, "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    iget-object v4, v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    :goto_1
    return-object v0

    .line 261
    .restart local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "type":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;

    return-object v0
.end method


# virtual methods
.method public getPlatformName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SharePlatformType;->value:Ljava/lang/String;

    return-object v0
.end method
