.class public Lcom/samsung/android/app/music/milk/share/Facebook;
.super Lcom/samsung/android/app/music/milk/share/ShareItemImpl;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;
    }
.end annotation


# static fields
.field private static final FACEBOOK_MARKET_URL:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.samsung.radio"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"


# instance fields
.field private final SHARE_FACEBOOK_CAPTION:Ljava/lang/String;

.field private final SHARE_FACEBOOK_CAPTION_SEA:Ljava/lang/String;

.field private final SHARE_FACEBOOK_NAME:Ljava/lang/String;

.field private mByUser:Z

.field private mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

.field private mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/samsung/android/app/music/milk/share/Facebook;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/share/Facebook;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>()V

    .line 42
    const-string v0, "%1$s - %2$s"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->SHARE_FACEBOOK_NAME:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "\uc138\uc0c1\uc5d0 \uc5c6\ub358 \uc0c8\ub85c\uc6b4 \uc74c\uc545 \uacbd\ud5d8, MILK"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->SHARE_FACEBOOK_CAPTION:Ljava/lang/String;

    .line 46
    const-string v0, "A new radio service to enjoy the music you love all with the turn of a dial."

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->SHARE_FACEBOOK_CAPTION_SEA:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mByUser:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>(Landroid/app/Activity;)V

    .line 42
    const-string v0, "%1$s - %2$s"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->SHARE_FACEBOOK_NAME:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "\uc138\uc0c1\uc5d0 \uc5c6\ub358 \uc0c8\ub85c\uc6b4 \uc74c\uc545 \uacbd\ud5d8, MILK"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->SHARE_FACEBOOK_CAPTION:Ljava/lang/String;

    .line 46
    const-string v0, "A new radio service to enjoy the music you love all with the turn of a dial."

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->SHARE_FACEBOOK_CAPTION_SEA:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mByUser:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/share/ShareItemImpl;-><init>(Landroid/app/Activity;)V

    .line 42
    const-string v0, "%1$s - %2$s"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->SHARE_FACEBOOK_NAME:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "\uc138\uc0c1\uc5d0 \uc5c6\ub358 \uc0c8\ub85c\uc6b4 \uc74c\uc545 \uacbd\ud5d8, MILK"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->SHARE_FACEBOOK_CAPTION:Ljava/lang/String;

    .line 46
    const-string v0, "A new radio service to enjoy the music you love all with the turn of a dial."

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->SHARE_FACEBOOK_CAPTION_SEA:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mByUser:Z

    .line 71
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/share/Facebook;)Lcom/samsung/android/app/music/common/model/share/ShareData;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/share/Facebook;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/music/milk/share/Facebook;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getSeedType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 283
    :pswitch_0
    const-string/jumbo v0, "\uc138\uc0c1\uc5d0 \uc5c6\ub358 \uc0c8\ub85c\uc6b4 \uc74c\uc545 \uacbd\ud5d8, MILK"

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getFBCallbackManager()Lcom/facebook/CallbackManager;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->getFBCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    const v0, 0x7f020122

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getSnsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 360
    const v0, 0x7f0a041b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initFBCallbackManager()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/share/ui/ShareActivity;->setFBCallbackManager(Lcom/facebook/CallbackManager;)V

    .line 375
    :cond_0
    return-void
.end method

.method private isLogin()Z
    .locals 4

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, "retry":Z
    :goto_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 254
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    const/4 v1, 0x1

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 262
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v2

    const-string v3, "publish_actions"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 265
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDialogText2()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDialogText1()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%1$s - %2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDialogText1()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    .line 273
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDialogText2()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 272
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedType()I
    .locals 1

    .prologue
    .line 345
    const/16 v0, 0x3ec

    return v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->initFBCallbackManager()V

    .line 80
    return-void
.end method

.method public login()V
    .locals 6

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->getFBCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v0

    .line 86
    .local v0, "cm":Lcom/facebook/CallbackManager;
    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->initFBCallbackManager()V

    .line 90
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/share/Facebook$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/share/Facebook$1;-><init>(Lcom/samsung/android/app/music/milk/share/Facebook;)V

    invoke-virtual {v1, v0, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 120
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "publish_actions"

    aput-object v5, v3, v4

    .line 121
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 122
    return-void
.end method

.method public login(Z)V
    .locals 0
    .param p1, "byUser"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mByUser:Z

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->login()V

    .line 127
    return-void
.end method

.method public logoutFromFacebook(Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;

    .prologue
    .line 240
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "/me/permissions/"

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/samsung/android/app/music/milk/share/Facebook$2;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/app/music/milk/share/Facebook$2;-><init>(Lcom/samsung/android/app/music/milk/share/Facebook;Lcom/samsung/android/app/music/milk/share/Facebook$LogoutFacebookListener;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 247
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 248
    return-void
.end method

.method public onSendButtonClicked(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 5
    .param p1, "shareData"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 350
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "publish_actions"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->shareFacebook()V

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "publish_actions"

    aput-object v4, v2, v3

    .line 355
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public onSnsSignOut()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mLoginCallback:Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->getSharedType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/share/onSnsLoginCallback;->onSnsSignOut(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public share(Lcom/samsung/android/app/music/common/model/share/ShareData;)V
    .locals 2
    .param p1, "data"    # Lcom/samsung/android/app/music/common/model/share/ShareData;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/share/Facebook;->getSnsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/share/Facebook;->showEditDialog(Lcom/samsung/android/app/music/common/model/share/ShareData;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->login()V

    goto :goto_0
.end method

.method public shareFacebook()V
    .locals 7

    .prologue
    .line 389
    new-instance v5, Lcom/samsung/android/app/music/milk/share/Facebook$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/milk/share/Facebook$3;-><init>(Lcom/samsung/android/app/music/milk/share/Facebook;)V

    .line 403
    .local v5, "requestCallback":Lcom/facebook/GraphRequest$Callback;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v3, "params":Landroid/os/Bundle;
    const-string v0, "picture"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "link"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getDeeplinkShortenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "message"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mShareData:Lcom/samsung/android/app/music/common/model/share/ShareData;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/share/ShareData;->getExtraText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "name"

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    new-instance v0, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string v2, "/me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const-string/jumbo v6, "v2.5"

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 412
    return-void
.end method

.method public signOut(Z)V
    .locals 2
    .param p1, "byUser"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/share/Facebook;->mByUser:Z

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/share/Facebook;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 134
    sget-object v0, Lcom/samsung/android/app/music/milk/share/Facebook;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "signOut >> Facebook is signed out!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method
