.class public Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "MeLaunchTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MeLaunchTask"


# instance fields
.field private mActivateCode:Ljava/lang/String;

.field private mActivateId:Ljava/lang/String;

.field private mTab:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mVoucher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mTarget:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mTab:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->VOUCHER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mVoucher:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ACTIVATE_CODE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivateCode:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ACTIVATE_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivateId:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mTarget:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v1

    .line 50
    .local v1, "targetType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;
    if-eqz v1, :cond_2

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$TargetType:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 100
    :goto_0
    if-eqz v0, :cond_0

    .line 101
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 106
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 56
    .restart local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/common/settings/SettingsActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 59
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->launchContactUs(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v2, "web_url"

    const-string v3, "http://samsungmusic.kr/html/ssmusic_qa_bridge.php"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string/jumbo v2, "web_for_notice"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 66
    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->moveToTab(II)V

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    const v3, 0x10030

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->moveToTab(II)V

    .line 73
    const/4 v0, 0x0

    .line 74
    goto :goto_0

    .line 76
    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->moveToTab(II)V

    .line 77
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    const v3, 0x110001

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->moveToTab(II)V

    .line 78
    const/4 v0, 0x0

    .line 79
    goto :goto_0

    .line 81
    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->moveToTab(II)V

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    const v3, 0x10004

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->moveToTab(II)V

    .line 83
    const/4 v0, 0x0

    .line 84
    goto/16 :goto_0

    .line 86
    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/milk/radio/mystations/MyStationsActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 89
    :pswitch_7
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 92
    :pswitch_8
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/app/music/milk/store/mysubscription/MySubscriptionActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mTab:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->VOUCHER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mVoucher:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ACTIVATE_CODE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivateCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ACTIVATE_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivateId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 104
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->moveToTab(II)V

    goto/16 :goto_1

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "MeLaunchTask"

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method
