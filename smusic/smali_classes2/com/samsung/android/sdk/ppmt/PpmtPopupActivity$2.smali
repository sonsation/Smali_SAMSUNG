.class Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;
.super Landroid/webkit/WebViewClient;
.source "PpmtPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initializeWebView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mErrorReceived:Z

.field final synthetic this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->mErrorReceived:Z

    return-void
.end method

.method private handleError(ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 297
    sget-object v0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$100(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to display webview. error code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->mErrorReceived:Z

    if-nez v0, :cond_0

    .line 299
    packed-switch p1, :pswitch_data_0

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$400(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V

    .line 311
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->mErrorReceived:Z

    .line 313
    :cond_0
    return-void

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$300(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 318
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->mErrorReceived:Z

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$500(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->this$0:Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->access$600(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V

    .line 323
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->handleError(ILjava/lang/CharSequence;)V

    .line 287
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .param p3, "error"    # Landroid/webkit/WebResourceError;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 293
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;->handleError(ILjava/lang/CharSequence;)V

    .line 294
    return-void
.end method
