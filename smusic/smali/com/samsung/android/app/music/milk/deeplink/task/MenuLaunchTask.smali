.class public Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "MenuLaunchTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mKeyword:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mTarget:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->KEYWORD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mKeyword:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    .line 37
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mTarget:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v1

    .line 39
    .local v1, "targetType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    if-eqz v1, :cond_0

    .line 40
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$TargetType:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 42
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->KEYWORD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 49
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "execute login : Already SA logged in"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a0375

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->launchSamsungAccount(Landroid/content/Context;)Z

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;->mTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
