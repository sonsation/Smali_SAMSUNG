.class public Lcom/samsung/android/app/music/milk/share/Line;
.super Lcom/samsung/android/app/music/milk/share/ShareItemImpl;
.source "Line.java"


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "jp.naver.line.android"

.field private static final TEXT_DEEPLINK_URL:Ljava/lang/String; = "line://msg/text/"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>(Landroid/app/Activity;)V

    .line 23
    return-void
.end method

.method public static getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const v0, 0x7f020125

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getSnsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const v0, 0x7f0a041d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Line;->mContext:Landroid/content/Context;

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSharedType()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x3ea

    return v0
.end method

.method public getSnsName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Line;->mContext:Landroid/content/Context;

    const v1, 0x7f0a041d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public login()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public onSendButtonClicked(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 7
    .param p1, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 57
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getEditText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkShortenUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkShortenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 65
    .local v1, "encodingUrl":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_0
    if-eqz v1, :cond_1

    .line 71
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "line://msg/text/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/Line;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 37
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Line;->mContext:Landroid/content/Context;

    const-string v4, "jp.naver.line.android"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/Line;->getSnsName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/app/music/milk/share/Line;->showEditDialog(Lcom/samsung/android/app/music/common/model/share/ShareData;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 41
    :cond_0
    :try_start_0
    const-string v3, "market://details?id=jp.naver.line.android"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 42
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Line;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
