.class Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 88
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/ClientCertRequest;

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    .line 113
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    .line 155
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "errorResponse"    # Landroid/webkit/WebResourceResponse;

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 125
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;

    .prologue
    .line 176
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 180
    .local v0, "requestUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
