.class Lcom/mapps/android/view/EndingAdView$29;
.super Landroid/webkit/WebViewClient;
.source "EndingAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->LoadingURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$29;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 1140
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/EndingAdView$29;)Lcom/mapps/android/view/EndingAdView;
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$29;->this$0:Lcom/mapps/android/view/EndingAdView;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$29;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$5(Lcom/mapps/android/view/EndingAdView;I)V

    .line 1190
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1191
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$29;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$5(Lcom/mapps/android/view/EndingAdView;I)V

    .line 1196
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1197
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1153
    :try_start_0
    new-instance v1, Lcom/mapps/android/view/EndingAdView$29$1;

    invoke-direct {v1, p0, p2}, Lcom/mapps/android/view/EndingAdView$29$1;-><init>(Lcom/mapps/android/view/EndingAdView$29;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mezzo/common/MZBtnUtils;->setDelayClick(Ljava/util/concurrent/Callable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
