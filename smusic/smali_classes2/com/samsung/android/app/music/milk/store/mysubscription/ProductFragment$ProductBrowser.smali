.class Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$ProductBrowser;
.super Landroid/webkit/WebViewClient;
.source "ProductFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProductBrowser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$ProductBrowser;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$ProductBrowser;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$ProductBrowser;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "radio://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "samu://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    const-string v0, "ProductFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldOverrideUrlLoading deeplink - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment$ProductBrowser;->this$0:Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;->access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/ProductFragment;Ljava/lang/String;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
