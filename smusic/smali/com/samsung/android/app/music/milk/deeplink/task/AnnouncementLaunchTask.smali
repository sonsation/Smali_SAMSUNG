.class public Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "AnnouncementLaunchTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnnouncementLaunchTask"


# instance fields
.field private mLink:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mTarget:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mLink:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 35
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mTarget:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v1

    .line 37
    .local v1, "targetType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    if-eqz v1, :cond_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$TargetType:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 56
    :goto_0
    if-eqz v0, :cond_0

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 43
    .restart local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/milk/help/NoticeListActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 46
    :pswitch_1
    const-string/jumbo v2, "web_url"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mLink:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string/jumbo v2, "web_for_notice"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mLink:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->CallSBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "AnnouncementLaunchTask"

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;->mTarget:Ljava/lang/String;

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
