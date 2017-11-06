.class public Lcom/samsung/android/app/music/milk/event/WebViewActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullscreenHolder;,
        Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;
    }
.end annotation


# static fields
.field public static final ASK_URL:Ljava/lang/String; = "http://samsungmusic.kr/html/ssmusic_qa_bridge.php"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final WEB_FOR_NOTICE:Ljava/lang/String; = "web_for_notice"

.field public static final WEB_URL:Ljava/lang/String; = "web_url"

.field private static final WEB_VIEW_LOADING_TIMEOUT_MS:I = 0x9c40

.field private static sDown:Z


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChromeClient:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

.field private mCurrentUrl:Ljava/lang/String;

.field protected mCustomView:Landroid/view/View;

.field protected mDoNotShow:Z

.field protected mEventPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

.field protected mLoading:Landroid/view/View;

.field protected mLoadingHandler:Landroid/os/Handler;

.field private mRetry:Z

.field protected mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->LOG_TAG:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->sDown:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mDoNotShow:Z

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mEventPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .line 83
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mRetry:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mCurrentUrl:Ljava/lang/String;

    .line 427
    new-instance v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/event/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mCurrentUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->runLoadTimer()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->sDown:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 55
    sput-boolean p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->sDown:Z

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mRetry:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/milk/event/WebViewActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mRetry:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->closeActivity()V

    return-void
.end method

.method private closeActivity()V
    .locals 6

    .prologue
    .line 278
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mLoadingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mEventPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mEventPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .line 284
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getDoNotShowTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->finish()V

    .line 289
    return-void
.end method

.method private onHomeKeyPressed()V
    .locals 2

    .prologue
    .line 273
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHomeKeyPressed - Close notice."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->closeActivity()V

    .line 275
    return-void
.end method

.method private runLoadTimer()V
    .locals 4

    .prologue
    .line 532
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mLoadingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    const-wide/32 v2, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    return-void
.end method

.method private toggleDoNotShow()V
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mDoNotShow:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mDoNotShow:Z

    .line 425
    return-void

    .line 424
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected handleDeepLink(Ljava/lang/String;)Z
    .locals 25
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 292
    sget-object v3, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDeepLink - URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 295
    .local v24, "uri":Landroid/net/Uri;
    invoke-static/range {v24 .. v24}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getSchemeType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v21

    .line 296
    .local v21, "schemeType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    invoke-static/range {v24 .. v24}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getHostType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object v16

    .line 297
    .local v16, "hostType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;
    invoke-static/range {v24 .. v24}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getActionType(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v9

    .line 299
    .local v9, "actionType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    if-eqz v21, :cond_0

    if-eqz v16, :cond_0

    if-nez v9, :cond_1

    .line 300
    :cond_0
    const/4 v3, 0x0

    .line 420
    :goto_0
    return v3

    .line 303
    :cond_1
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v17, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$SchemeType:[I

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 420
    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 308
    :pswitch_0
    sget-object v3, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$HostType:[I

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 399
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SHARE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    if-ne v9, v3, :cond_3

    .line 400
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 401
    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 402
    .local v19, "linkUrl":Ljava/lang/String;
    if-nez v19, :cond_3

    .line 403
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 404
    invoke-virtual {v4}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v3, v4, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->appendQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v24

    .line 409
    .end local v19    # "linkUrl":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 410
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->handleDeepLink(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 412
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->STAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->OPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 413
    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->closeActivity()V

    goto :goto_1

    .line 310
    :pswitch_1
    sget-object v3, Lcom/samsung/android/app/music/milk/event/WebViewActivity$4;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$ActionType:[I

    invoke-virtual {v9}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    goto :goto_1

    .line 313
    :pswitch_2
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 314
    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v22

    .line 317
    .local v22, "target":Ljava/lang/String;
    :try_start_0
    const-string v3, "browser"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "application"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 318
    :cond_4
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 319
    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 320
    .local v10, "data":Ljava/lang/String;
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 322
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v17    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v17, v18

    .line 331
    .end local v10    # "data":Ljava/lang/String;
    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    :cond_5
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE_AND_LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    if-ne v9, v3, :cond_2

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->closeActivity()V

    goto/16 :goto_1

    .line 326
    :catch_0
    move-exception v14

    .line 327
    .local v14, "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    invoke-virtual {v14}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 328
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 336
    .end local v14    # "e":Landroid/content/ActivityNotFoundException;
    .end local v22    # "target":Ljava/lang/String;
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->toggleDoNotShow()V

    .line 338
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PERIOD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 339
    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    .line 340
    .local v20, "period":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->UNIT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 341
    move-object/from16 v0, v24

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v23

    .line 342
    .local v23, "unit":Ljava/lang/String;
    const-wide/high16 v12, -0x8000000000000000L

    .line 344
    .local v12, "doNoShowTime":J
    const-string v3, "never"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 345
    const-wide v12, 0x7fffffffffffffffL

    .line 374
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mEventPopup:Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    invoke-virtual {v3, v12, v13}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->setDoNotShowTime(J)V

    goto/16 :goto_1

    .line 346
    :cond_7
    if-eqz v20, :cond_6

    if-eqz v23, :cond_6

    .line 347
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mDoNotShow:Z

    if-eqz v3, :cond_6

    .line 349
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 350
    .local v2, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 351
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    .line 352
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 350
    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 353
    const-string v3, "day"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 354
    const/4 v3, 0x5

    .line 355
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 354
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 361
    :cond_8
    :goto_4
    sget-object v3, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDeepLink - Popup will not show until "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    .line 363
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    .line 364
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    .line 366
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    goto :goto_3

    .line 356
    :cond_9
    const-string v3, "month"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 357
    const/4 v3, 0x2

    .line 358
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 357
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 368
    .end local v2    # "calendar":Ljava/util/Calendar;
    :catch_1
    move-exception v14

    .line 369
    .local v14, "e":Ljava/lang/NumberFormatException;
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->closeActivity()V

    .line 370
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 377
    .end local v12    # "doNoShowTime":J
    .end local v14    # "e":Ljava/lang/NumberFormatException;
    .end local v20    # "period":Ljava/lang/String;
    .end local v23    # "unit":Ljava/lang/String;
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->closeActivity()V

    goto/16 :goto_1

    .line 380
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->onBackPressed()V

    goto/16 :goto_1

    .line 383
    :pswitch_6
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/help/MuseUtils;->launchMUSE(Landroid/content/Context;I)V

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->finish()V

    goto/16 :goto_1

    .line 387
    :pswitch_7
    new-instance v11, Lcom/samsung/android/app/music/milk/help/SendLogDialog;

    invoke-direct {v11}, Lcom/samsung/android/app/music/milk/help/SendLogDialog;-><init>()V

    .line 388
    .local v11, "dialog":Lcom/samsung/android/app/music/milk/help/SendLogDialog;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v15

    .line 389
    .local v15, "ft":Landroid/app/FragmentTransaction;
    sget-object v3, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v15, v11, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 390
    invoke-virtual {v15}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    .line 395
    .end local v11    # "dialog":Lcom/samsung/android/app/music/milk/help/SendLogDialog;
    .end local v15    # "ft":Landroid/app/FragmentTransaction;
    :pswitch_8
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 396
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->getInstance()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->handleDeepLink(Landroid/app/Activity;Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 326
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v10    # "data":Ljava/lang/String;
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v22    # "target":Ljava/lang/String;
    :catch_2
    move-exception v14

    move-object/from16 v17, v18

    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    goto/16 :goto_2

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 308
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 310
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mChromeClient:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->onHideCustomView()V

    .line 270
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBackPressed - Go back."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 267
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onBackPressed - Close notice."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->closeActivity()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->setRequestedOrientation(I)V

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    const v1, 0x7f04019e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->setContentView(I)V

    .line 102
    const v1, 0x7f1204a3

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 103
    const v1, 0x7f120320

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mLoading:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$1;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 211
    new-instance v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mChromeClient:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mChromeClient:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 214
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mLoadingHandler:Landroid/os/Handler;

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->initMiniPlayer()V

    .line 217
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onDestroy()V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mChromeClient:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->onHideCustomView()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 247
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 251
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->onHomeKeyPressed()V

    .line 253
    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onPause()V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 236
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onResume()V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 229
    return-void
.end method
