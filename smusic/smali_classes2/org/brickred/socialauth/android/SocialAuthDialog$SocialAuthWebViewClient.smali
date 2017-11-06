.class Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SocialAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/brickred/socialauth/android/SocialAuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocialAuthWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;


# direct methods
.method private constructor <init>(Lorg/brickred/socialauth/android/SocialAuthDialog;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/brickred/socialauth/android/SocialAuthDialog;Lorg/brickred/socialauth/android/SocialAuthDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/brickred/socialauth/android/SocialAuthDialog;
    .param p2, "x1"    # Lorg/brickred/socialauth/android/SocialAuthDialog$1;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 441
    const-string v0, "SocialAuthDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v0

    new-instance v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;

    invoke-direct {v1, p0, p2}, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 473
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$700(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 474
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v9, 0xf0

    const/16 v8, 0x78

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/16 v6, 0xa0

    .line 338
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 340
    const-string v2, "SocialAuth-WebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageStart:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v2, "https://runkeeper.com/apps/authorize"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$1100(Lorg/brickred/socialauth/android/SocialAuthDialog;)I

    move-result v2

    if-ge v2, v3, :cond_d

    move v2, v3

    :goto_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    .line 344
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v8, :cond_0

    sget v2, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    :cond_0
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v6, :cond_1

    sget v2, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    if-eq v2, v7, :cond_2

    :cond_1
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v9, :cond_e

    .line 346
    :cond_2
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v4, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 347
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2, v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$1102(Lorg/brickred/socialauth/android/SocialAuthDialog;I)I

    .line 357
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "linkedin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 358
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-eq v2, v8, :cond_4

    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v9, :cond_10

    .line 359
    :cond_4
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 371
    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "yammer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 372
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v6, :cond_13

    .line 373
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    .line 374
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 381
    :cond_6
    :goto_3
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    .line 382
    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "googleplus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    .line 383
    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "salesforce"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    .line 384
    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "instagram"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 385
    :cond_7
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v6, :cond_8

    sget v2, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    if-eq v2, v7, :cond_a

    :cond_8
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v8, :cond_9

    sget v2, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_a

    :cond_9
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v9, :cond_14

    .line 387
    :cond_a
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 392
    :cond_b
    :goto_4
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$700(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 396
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->getCallBackUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 397
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->getCancelUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 398
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v2

    invoke-interface {v2}, Lorg/brickred/socialauth/android/DialogListener;->onCancel()V

    .line 433
    :goto_5
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->dismiss()V

    .line 435
    :cond_c
    return-void

    .line 343
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 349
    :cond_e
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v6, :cond_f

    sget v2, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_f

    .line 350
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v4, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 352
    :cond_f
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2, v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$1102(Lorg/brickred/socialauth/android/SocialAuthDialog;I)I

    goto/16 :goto_1

    .line 360
    :cond_10
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    if-ne v2, v6, :cond_12

    .line 361
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    if-ne v2, v7, :cond_11

    .line 362
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_2

    .line 364
    :cond_11
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_2

    .line 365
    :cond_12
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    const/16 v3, 0xd5

    if-ne v2, v3, :cond_5

    .line 366
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_2

    .line 376
    :cond_13
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_3

    .line 388
    :cond_14
    sget v2, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    const/16 v3, 0xd5

    if-ne v2, v3, :cond_b

    .line 389
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto/16 :goto_4

    .line 400
    :cond_15
    invoke-static {p2}, Lorg/brickred/socialauth/android/Util;->parseUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 401
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;

    invoke-direct {v1, p0, v0}, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$2;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;Ljava/util/Map;)V

    .line 431
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "SocialAuth-WebView"

    const-string v1, "Inside OnReceived Error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v0, "SocialAuth-WebView"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v0

    new-instance v1, Lorg/brickred/socialauth/android/SocialAuthError;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p3, v2}, Lorg/brickred/socialauth/android/SocialAuthError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lorg/brickred/socialauth/android/DialogListener;->onError(Lorg/brickred/socialauth/android/SocialAuthError;)V

    .line 333
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->dismiss()V

    .line 334
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    const-string v4, "SocialAuth-WebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Override url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->getCallBackUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    .line 240
    invoke-static {v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "facebook"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "twitter"

    .line 241
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    :cond_0
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->getCancelUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v3

    invoke-interface {v3}, Lorg/brickred/socialauth/android/DialogListener;->onCancel()V

    .line 285
    :goto_0
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-virtual {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->dismiss()V

    .line 323
    :goto_1
    return v2

    .line 246
    :cond_1
    invoke-static {p2}, Lorg/brickred/socialauth/android/Util;->parseUrl(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 248
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;

    invoke-direct {v1, p0, v0}, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$1;-><init>(Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;Ljava/util/Map;)V

    .line 283
    .local v1, "runnable":Ljava/lang/Runnable;
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 291
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_2
    const-string v4, "https://www.facebook.com/dialog/oauth"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    const-string v4, "https://www.facebook.com/dialog/oauth"

    const-string v5, "https://m.facebook.com/dialog/oauth"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$902(Lorg/brickred/socialauth/android/SocialAuthDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v3

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$900(Lorg/brickred/socialauth/android/SocialAuthDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 296
    :cond_3
    const-string v4, "http://runkeeper.com/jsp/widgets/streetTeamWidgetClose.jsp"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 297
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v3

    const-string v4, "http://runkeeper.com/facebookSignIn"

    invoke-virtual {v3, v4}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 299
    :cond_4
    const-string v4, "http://runkeeper.com/home"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 300
    const-string v2, "Again Calling auth URL "

    const-string v4, "SocialAuth"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$1000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->loadUrl(Ljava/lang/String;)V

    move v2, v3

    .line 302
    goto :goto_1

    .line 307
    :cond_5
    const-string v4, "https://login.yahoo.com/config/login"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 308
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    const-string v4, "https://login.yahoo.com/config/login"

    const-string v5, "https://mlogin.yahoo.com/w/login"

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$902(Lorg/brickred/socialauth/android/SocialAuthDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    iget-object v2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v2}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v2

    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$900(Lorg/brickred/socialauth/android/SocialAuthDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->loadUrl(Ljava/lang/String;)V

    move v2, v3

    .line 311
    goto/16 :goto_1

    .line 314
    :cond_6
    iget-object v4, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v4}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v4

    invoke-virtual {v4}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->getCancelUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 316
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$100(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/DialogListener;

    move-result-object v3

    invoke-interface {v3}, Lorg/brickred/socialauth/android/DialogListener;->onCancel()V

    .line 317
    iget-object v3, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-virtual {v3}, Lorg/brickred/socialauth/android/SocialAuthDialog;->dismiss()V

    goto/16 :goto_1

    .line 319
    :cond_7
    const-string/jumbo v2, "touch"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    .line 320
    goto/16 :goto_1

    :cond_8
    move v2, v3

    .line 323
    goto/16 :goto_1
.end method
