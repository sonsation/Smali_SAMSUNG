.class Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;
.super Ljava/lang/Object;
.source "SocialAuthDialog.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    .prologue
    .line 443
    iput-object p1, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iput-object p2, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Landroid/graphics/Picture;

    .prologue
    .line 447
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yahoo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->val$url:Ljava/lang/String;

    const-string v1, "https://api.login.yahoo.com//oauth/v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    sget v0, Lorg/brickred/socialauth/android/Util;->UI_DENSITY:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_4

    sget v0, Lorg/brickred/socialauth/android/Util;->UI_SIZE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 450
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 454
    :goto_0
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v0

    sget v1, Lorg/brickred/socialauth/android/Util;->UI_YAHOO_ALLOW:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->scrollTo(II)V

    .line 456
    :cond_0
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$700(Lorg/brickred/socialauth/android/SocialAuthDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 459
    :cond_1
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$300(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthAdapter$Provider;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "runkeeper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->val$url:Ljava/lang/String;

    const-string v1, "http://m.facebook.com/login.php"

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->val$url:Ljava/lang/String;

    const-string v1, "https://m.facebook.com/dialog/oauth"

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 463
    :cond_2
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 465
    :cond_3
    return-void

    .line 452
    :cond_4
    iget-object v0, p0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient$3;->this$1:Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;

    iget-object v0, v0, Lorg/brickred/socialauth/android/SocialAuthDialog$SocialAuthWebViewClient;->this$0:Lorg/brickred/socialauth/android/SocialAuthDialog;

    invoke-static {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog;->access$000(Lorg/brickred/socialauth/android/SocialAuthDialog;)Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/brickred/socialauth/android/SocialAuthDialog$CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_0
.end method
