.class Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity;
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
    .line 427
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 430
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "intentAction":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive - onReceive intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 434
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->finish()V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 437
    .local v0, "headSetState":I
    if-nez v0, :cond_0

    .line 438
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->onPause()V

    .line 439
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$2;->this$0:Lcom/samsung/android/app/music/milk/event/WebViewActivity;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/event/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->onResume()V

    goto :goto_0
.end method
