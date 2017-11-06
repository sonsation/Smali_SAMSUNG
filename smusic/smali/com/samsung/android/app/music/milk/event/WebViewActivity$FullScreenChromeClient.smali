.class public Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FullScreenChromeClient"
.end annotation


# instance fields
.field private final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field private mActivity:Landroid/app/Activity;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mFullscreenContainer:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    .prologue
    const/4 v1, -0x1

    .line 445
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mActivity:Landroid/app/Activity;

    .line 452
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method private setFullscreen(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 515
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFullscreen - Set full screen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 497
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 512
    :goto_0
    return-void

    .line 501
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onHideCustomView - Hide custom view"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->setRequestedOrientation(I)V

    .line 506
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->setFullscreen(Z)V

    .line 507
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1204a4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 508
    .local v0, "decor":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 509
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 510
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iput-object v3, v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mCustomView:Landroid/view/View;

    .line 511
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 459
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 460
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    const v3, 0x7f0a040e

    .line 461
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient$1;-><init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 467
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 468
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 469
    const/4 v1, 0x1

    return v1
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 474
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 475
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 493
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onShowCustomView - Show custom view"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->setRequestedOrientation(I)V

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1204a4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 485
    .local v0, "decor":Landroid/widget/FrameLayout;
    new-instance v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullscreenHolder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullscreenHolder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    .line 486
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mFullscreenContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iput-object p1, v1, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mCustomView:Landroid/view/View;

    .line 489
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->setFullscreen(Z)V

    .line 490
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 492
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method
