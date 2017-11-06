.class public Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;
.source "YouTubeWebActivity.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f04012f

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 19
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "youtube_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const v1, 0x7f1200f9

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->mWebView:Landroid/webkit/WebView;

    .line 21
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 22
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v2, "youtube_url"

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;->finish()V

    goto :goto_0
.end method
