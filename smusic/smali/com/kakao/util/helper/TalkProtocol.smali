.class public Lcom/kakao/util/helper/TalkProtocol;
.super Lcom/kakao/util/helper/KakaoServiceProtocol;
.source "TalkProtocol.java"


# direct methods
.method public static createKakakoTalkLinkIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "linkMessage"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    .local v1, "kakaoLinkUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const/16 v2, 0x8b

    invoke-static {p0, v0, v2}, Lcom/kakao/util/helper/TalkProtocol;->checkSupportedService(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method
