.class public Lcom/samsung/android/app/music/milk/share/MoreItem;
.super Lcom/samsung/android/app/music/milk/share/ShareItemImpl;
.source "MoreItem.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/milk/share/MoreItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/MoreItem;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>(Landroid/app/Activity;)V

    .line 18
    return-void
.end method

.method public static getSnsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const v0, 0x7f0a041f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSharedType()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x3ed

    return v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public login()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public onSendButtonClicked(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p1, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 83
    return-void
.end method

.method public share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 6
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getExtraText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkShortenUrl()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "shortenUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    :cond_0
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/MoreItem;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/share/MoreItem;->mContext:Landroid/content/Context;

    const v5, 0x7f0a041e

    .line 40
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public share(Lcom/samsung/android/app/music/common/model/share/ShareData;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 46
    sget-object v3, Lcom/samsung/android/app/music/milk/share/MoreItem;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "share >> Share station via 3party apps directly."

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v1, "shareIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getExtraText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkShortenUrl()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "shortenUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_0
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/MoreItem;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/MoreItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/MoreItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_1
    sget-object v3, Lcom/samsung/android/app/music/milk/share/MoreItem;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "share >> mActivity is null. so do nothing"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
