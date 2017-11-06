.class public Lcom/kakao/kakaolink/KakaoLink;
.super Ljava/lang/Object;
.source "KakaoLink.java"


# static fields
.field private static appKey:Ljava/lang/String;

.field private static appKeyHash:Ljava/lang/String;

.field private static appPackageName:Ljava/lang/String;

.field private static appVer:Ljava/lang/String;

.field private static singltonKakaoLink:Lcom/kakao/kakaolink/KakaoLink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, ""

    sput-object v0, Lcom/kakao/kakaolink/KakaoLink;->appVer:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/kakao/kakaolink/KakaoLink;->appPackageName:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/kakao/kakaolink/KakaoLink;->appKeyHash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kakao/kakaolink/KakaoLink;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/kakao/kakaolink/KakaoLink;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/kakao/kakaolink/KakaoLink;->makeReferrer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKakaoLink(Landroid/content/Context;)Lcom/kakao/kakaolink/KakaoLink;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 62
    sget-object v0, Lcom/kakao/kakaolink/KakaoLink;->singltonKakaoLink:Lcom/kakao/kakaolink/KakaoLink;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/kakao/kakaolink/KakaoLink;->singltonKakaoLink:Lcom/kakao/kakaolink/KakaoLink;

    .line 76
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/kakao/util/helper/SystemInfo;->initialize(Landroid/content/Context;)V

    .line 67
    sget-object v0, Lcom/kakao/kakaolink/KakaoLink;->appKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 68
    const-string v0, "com.kakao.sdk.AppKey"

    invoke-static {p0, v0}, Lcom/kakao/util/helper/Utility;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/kakaolink/KakaoLink;->appKey:Ljava/lang/String;

    .line 69
    :cond_1
    sget-object v0, Lcom/kakao/kakaolink/KakaoLink;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    new-instance v0, Lcom/kakao/util/KakaoParameterException;

    sget v1, Lcom/kakao/android/sdk/R$string;->com_kakao_alert_appKey:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kakao/util/KakaoParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    invoke-static {p0}, Lcom/kakao/util/helper/Utility;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/kakaolink/KakaoLink;->appVer:Ljava/lang/String;

    .line 73
    invoke-static {p0}, Lcom/kakao/util/helper/Utility;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/kakaolink/KakaoLink;->appPackageName:Ljava/lang/String;

    .line 74
    invoke-static {p0}, Lcom/kakao/util/helper/Utility;->getKeyHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kakao/kakaolink/KakaoLink;->appKeyHash:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/kakao/kakaolink/KakaoLink;

    invoke-direct {v0}, Lcom/kakao/kakaolink/KakaoLink;-><init>()V

    sput-object v0, Lcom/kakao/kakaolink/KakaoLink;->singltonKakaoLink:Lcom/kakao/kakaolink/KakaoLink;

    .line 76
    sget-object v0, Lcom/kakao/kakaolink/KakaoLink;->singltonKakaoLink:Lcom/kakao/kakaolink/KakaoLink;

    goto :goto_0
.end method

.method private makeExtra()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "KA"

    invoke-static {}, Lcom/kakao/util/helper/SystemInfo;->getKAHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v2, "appPkg"

    sget-object v3, Lcom/kakao/kakaolink/KakaoLink;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v2, "keyHash"

    sget-object v3, Lcom/kakao/kakaolink/KakaoLink;->appKeyHash:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/kakao/util/helper/log/Logger;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private makeReferrer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 125
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "KA"

    invoke-static {}, Lcom/kakao/util/helper/SystemInfo;->getKAHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v2, "appkey"

    sget-object v3, Lcom/kakao/kakaolink/KakaoLink;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v2, "appver"

    sget-object v3, Lcom/kakao/kakaolink/KakaoLink;->appVer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    const-string v2, "appPkg"

    sget-object v3, Lcom/kakao/kakaolink/KakaoLink;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/kakao/util/helper/log/Logger;->w(Ljava/lang/Throwable;)I

    .line 133
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public createKakaoTalkLinkMessageBuilder()Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    sget-object v1, Lcom/kakao/kakaolink/KakaoLink;->appKey:Ljava/lang/String;

    sget-object v2, Lcom/kakao/kakaolink/KakaoLink;->appVer:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kakao/kakaolink/KakaoLink;->makeExtra()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public sendMessage(Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;Landroid/content/Context;)V
    .locals 4
    .param p1, "builder"    # Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kakao/util/KakaoParameterException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;->build()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/kakao/util/helper/TalkProtocol;->createKakakoTalkLinkIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 99
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    .line 100
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/kakao/android/sdk/R$string;->com_kakao_alert_install_kakaotalk:I

    .line 101
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/kakao/kakaolink/KakaoLink$1;

    invoke-direct {v3, p0, p2}, Lcom/kakao/kakaolink/KakaoLink$1;-><init>(Lcom/kakao/kakaolink/KakaoLink;Landroid/content/Context;)V

    .line 102
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
