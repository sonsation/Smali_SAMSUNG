.class Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity;->runLoadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$400(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$402(Lcom/samsung/android/app/music/milk/event/WebViewActivity;Z)Z

    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$100(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 540
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$100(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$200(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    .line 549
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "runLoadTimer - Failed to load web page."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$3;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$500(Lcom/samsung/android/app/music/milk/event/WebViewActivity;)V

    goto :goto_0
.end method
