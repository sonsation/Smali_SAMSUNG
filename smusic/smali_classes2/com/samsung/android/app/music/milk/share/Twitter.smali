.class public Lcom/samsung/android/app/music/milk/share/Twitter;
.super Lcom/samsung/android/app/music/milk/share/ShareItemImpl;
.source "Twitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;,
        Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;,
        Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.twitter.android"

.field public static final TWITTER_BASE_SHARE_ACTIVITY_NAME:Ljava/lang/String; = "com.twitter.android.composer.ComposerActivity"

.field public static final TWITTER_CALLBACK_URL:Ljava/lang/String; = "https://apps.twitter.com/app/new"

.field public static final TWITTER_CONSUMER_KEY:Ljava/lang/String; = "t7lY85dccoQDeLNela3wg8pt9"

.field public static final TWITTER_CONSUMER_SECRET:Ljava/lang/String; = "wAZBbimyaaGH2Za1LHl9wuZvyn3C5A9aAU9h2aAJu6g8Ngqehi"


# instance fields
.field private mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

.field private mByUSer:Z

.field private mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

.field private mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/milk/share/Twitter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/Twitter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mByUSer:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>(Landroid/app/Activity;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mByUSer:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>(Landroid/app/Activity;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mByUSer:Z

    .line 64
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .line 65
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/android/app/music/milk/share/Twitter;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/share/Twitter;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/Twitter;->callOnSnsSignOut()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/share/Twitter;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/share/Twitter;->shareTextAndImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/share/Twitter;)Lorg/brickred/socialauth/android/SocialAuthAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/share/Twitter;)Lcom/samsung/android/app/music/common/model/share/ShareData;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/share/Twitter;)Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/share/Twitter;Lcom/samsung/android/app/music/common/model/share/ShareData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Twitter;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter;->getMessage(Lcom/samsung/android/app/music/common/model/share/ShareData;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private callOnSnsSignOut()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/app/music/milk/share/Twitter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/share/Twitter$2;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    :cond_0
    return-void
.end method

.method public static getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    const v0, 0x7f020126

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getMessage(Lcom/samsung/android/app/music/common/model/share/ShareData;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getEditText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkShortenUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkShortenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSnsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    const v0, 0x7f0a0420

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendTwitter(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 7
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0451

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 194
    sget-object v1, Lcom/samsung/android/app/music/milk/share/Twitter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendTwitter: Network is not available."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 199
    new-instance v0, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;

    invoke-direct {v0, p0, v6}, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter;Lcom/samsung/android/app/music/milk/share/Twitter$1;)V

    .line 200
    .local v0, "task":Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->access$600(Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 201
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 203
    .end local v0    # "task":Lcom/samsung/android/app/music/milk/share/Twitter$LoadImageTask;
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/milk/share/Twitter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendTwitter : Share text type only."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter;->getMessage(Lcom/samsung/android/app/music/common/model/share/ShareData;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter;Lcom/samsung/android/app/music/milk/share/Twitter$1;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->updateStatus(Ljava/lang/String;Lorg/brickred/socialauth/android/SocialAuthListener;Z)V

    goto :goto_0
.end method

.method private shareTextAndImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 219
    if-nez p1, :cond_0

    .line 220
    sget-object v0, Lcom/samsung/android/app/music/milk/share/Twitter;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "shareTextAndImage : bitmap is null!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    new-instance v1, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/app/music/milk/share/Twitter$MessageListener;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter;Lcom/samsung/android/app/music/milk/share/Twitter$1;)V

    invoke-virtual {v0, p2, v1, v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->updateStatus(Ljava/lang/String;Lorg/brickred/socialauth/android/SocialAuthListener;Z)V

    .line 231
    :goto_0
    return-void

    .line 226
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    const-string/jumbo v2, "temp.png"

    const/4 v4, 0x0

    new-instance v5, Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/app/music/milk/share/Twitter$UploadImageListener;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter;Lcom/samsung/android/app/music/milk/share/Twitter$1;)V

    move-object v1, p2

    move-object v3, p1

    .line 227
    invoke-virtual/range {v0 .. v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->uploadImageAsync(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILorg/brickred/socialauth/android/SocialAuthListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v6

    .line 229
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSharedType()I
    .locals 1

    .prologue
    .line 304
    const/16 v0, 0x3e9

    return v0
.end method

.method public getSnsName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0420

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lorg/brickred/socialauth/android/SocialAuthAdapter;

    new-instance v1, Lcom/samsung/android/app/music/milk/share/Twitter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/share/Twitter$1;-><init>(Lcom/samsung/android/app/music/milk/share/Twitter;)V

    invoke-direct {v0, v1}, Lorg/brickred/socialauth/android/SocialAuthAdapter;-><init>(Lorg/brickred/socialauth/android/DialogListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    sget-object v1, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->TWITTER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->addProvider(Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;I)V

    .line 114
    return-void
.end method

.method public login()V
    .locals 6

    .prologue
    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    if-nez v1, :cond_0

    .line 119
    sget-object v1, Lcom/samsung/android/app/music/milk/share/Twitter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "login >> Fail to login."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->TWITTER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string v3, "https://apps.twitter.com/app/new"

    invoke-virtual {v1, v2, v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->addCallBack(Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    sget-object v2, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->TWITTER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    const-string/jumbo v3, "t7lY85dccoQDeLNela3wg8pt9"

    const-string/jumbo v4, "wAZBbimyaaGH2Za1LHl9wuZvyn3C5A9aAU9h2aAJu6g8Ngqehi"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->addConfig(Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mAuthAdapter:Lorg/brickred/socialauth/android/SocialAuthAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mActivity:Landroid/app/Activity;

    sget-object v3, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->TWITTER:Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    invoke-virtual {v1, v2, v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter;->authorize(Landroid/content/Context;Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;)V

    .line 127
    sget-object v1, Lcom/samsung/android/app/music/milk/share/Twitter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "login : Requested to login."

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public login(Z)V
    .locals 0
    .param p1, "byUser"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mByUSer:Z

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/Twitter;->login()V

    .line 136
    return-void
.end method

.method public onSendButtonClicked(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p1, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/Twitter;->sendTwitter(Lcom/samsung/android/app/music/common/model/share/ShareData;)V

    .line 310
    return-void
.end method

.method public share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Twitter;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/Twitter;->login()V

    .line 142
    return-void
.end method
