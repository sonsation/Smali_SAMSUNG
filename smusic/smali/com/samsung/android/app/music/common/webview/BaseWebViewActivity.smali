.class public abstract Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$mWebChromeClient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final EXTRA_SERIALIZED_POST_PARAMETER:Ljava/lang/String; = "extra_serialized_post_parameter"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final WEB_VIEW_DEBUG:Z = true


# instance fields
.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;-><init>(Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected finishActivityWithToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "toastRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 273
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->finishActivityWithToast(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method protected finishActivityWithToast(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "toast"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 277
    sget-object v0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {p0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->setResult(I)V

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->finish()V

    .line 281
    return-void
.end method

.method protected abstract getJavascriptInterfaceObjectName()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected loadUrlGet(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method protected loadUrlPost(Landroid/webkit/WebView;Ljava/lang/String;[B)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "postData"    # [B

    .prologue
    .line 258
    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 259
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 200
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 201
    const v7, 0x7f040021

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->setContentView(I)V

    .line 209
    invoke-static {v8}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 211
    const v7, 0x7f1200fc

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 212
    const v7, 0x7f1200fb

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, "i":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 216
    const-string v7, "Intent is null."

    const v8, 0x7f0a00ba

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->finishActivityWithToast(Ljava/lang/String;I)V

    .line 247
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v7, "extra_uri_string"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "url":Ljava/lang/String;
    const-string v7, "extra_title"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 223
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 224
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 228
    .local v6, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v6, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 229
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 230
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onInitializeWebSettings(Landroid/webkit/WebSettings;)V

    .line 232
    iget-object v7, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 233
    iget-object v7, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$mWebChromeClient;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$mWebChromeClient;-><init>(Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onCreateJavascriptInterface()Lcom/samsung/android/app/music/common/webview/BaseJavascriptInterface;

    move-result-object v1

    .line 236
    .local v1, "javascriptInterface":Lcom/samsung/android/app/music/common/webview/BaseJavascriptInterface;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->getJavascriptInterfaceObjectName()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "javascriptInterfaceObjectName":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 238
    iget-object v7, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    :cond_2
    const-string v7, "extra_serialized_post_parameter"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 242
    .local v3, "postData":[B
    if-eqz v3, :cond_3

    .line 243
    iget-object v7, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v7, v5, v3}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->loadUrlPost(Landroid/webkit/WebView;Ljava/lang/String;[B)V

    goto :goto_0

    .line 245
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v7, v5}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->loadUrlGet(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract onCreateJavascriptInterface()Lcom/samsung/android/app/music/common/webview/BaseJavascriptInterface;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected abstract onInitializeWebSettings(Landroid/webkit/WebSettings;)V
.end method

.method protected abstract onJsAlertDialog(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end method

.method protected abstract onJsConfirmDialog(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end method

.method protected onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 293
    return-void
.end method

.method protected onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 287
    return-void
.end method

.method protected onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 329
    return-void
.end method

.method protected onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .prologue
    .line 318
    return-void
.end method

.method protected onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/net/Uri;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "requestUri"    # Landroid/net/Uri;

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method
