.class final Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$mWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "BaseWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "mWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$mWebChromeClient;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$mWebChromeClient;-><init>(Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 193
    invoke-static {}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onJsAlert url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$mWebChromeClient;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onJsAlertDialog(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 187
    invoke-static {}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onJsConfirm url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity$mWebChromeClient;->this$0:Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/common/webview/BaseWebViewActivity;->onJsConfirmDialog(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    return v0
.end method
