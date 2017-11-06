.class public Lcom/samsung/android/app/music/milk/share/KakaoTalk;
.super Lcom/samsung/android/app/music/milk/share/ShareItemImpl;
.source "KakaoTalk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;
    }
.end annotation


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.kakao.talk"


# instance fields
.field private mKakaoLink:Lcom/kakao/kakaolink/KakaoLink;

.field private mKakaoTalkLinkMessageBuilder:Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mKakaoTalkLinkMessageBuilder:Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/share/KakaoTalk;Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;)Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/KakaoTalk;
    .param p1, "x1"    # Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mKakaoTalkLinkMessageBuilder:Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)Lcom/kakao/kakaolink/KakaoLink;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/KakaoTalk;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mKakaoLink:Lcom/kakao/kakaolink/KakaoLink;

    return-object v0
.end method

.method private checkKakaoTalkInstalled()Z
    .locals 5

    .prologue
    .line 68
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mContext:Landroid/content/Context;

    const-string v4, "com.kakao.talk"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    const/4 v3, 0x1

    .line 80
    :goto_0
    return v3

    .line 73
    :cond_0
    :try_start_0
    const-string v3, "market://details?id=com.kakao.talk"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 74
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const v0, 0x7f020124

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getSnsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const v0, 0x7f0a041c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendKakaoTalkLink(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 84
    new-instance v0, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;-><init>(Lcom/samsung/android/app/music/milk/share/KakaoTalk;)V

    .line 85
    .local v0, "kakaoTalkLink":Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->setData(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 86
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/share/KakaoTalk$KakaoTalkLinkSendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    return-void
.end method


# virtual methods
.method public getSharedType()I
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x3e8

    return v0
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/kakao/kakaolink/KakaoLink;->getKakaoLink(Landroid/content/Context;)Lcom/kakao/kakaolink/KakaoLink;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mKakaoLink:Lcom/kakao/kakaolink/KakaoLink;

    .line 36
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mKakaoLink:Lcom/kakao/kakaolink/KakaoLink;

    invoke-virtual {v1}, Lcom/kakao/kakaolink/KakaoLink;->createKakaoTalkLinkMessageBuilder()Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mKakaoTalkLinkMessageBuilder:Lcom/kakao/kakaolink/KakaoTalkLinkMessageBuilder;
    :try_end_0
    .catch Lcom/kakao/util/KakaoParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lcom/kakao/util/KakaoParameterException;
    invoke-virtual {v0}, Lcom/kakao/util/KakaoParameterException;->printStackTrace()V

    goto :goto_0
.end method

.method public login()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onSendButtonClicked(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p1, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->sendKakaoTalkLink(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 150
    return-void
.end method

.method public share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->checkKakaoTalkInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->getSnsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->showEditDialog(Lcom/samsung/android/app/music/common/model/share/ShareData;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public shareViaKakaoTalk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->checkKakaoTalkInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->initialize()V

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/share/ShareData;-><init>()V

    .line 59
    .local v0, "shareData":Lcom/samsung/android/app/music/common/model/share/ShareData;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setEditText(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setCoverArtUrl(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/common/model/share/ShareData;->setDeeplinkUrl(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/share/KakaoTalk;->sendKakaoTalkLink(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 65
    .end local v0    # "shareData":Lcom/samsung/android/app/music/common/model/share/ShareData;
    :cond_0
    return-void
.end method
