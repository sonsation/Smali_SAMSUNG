.class Lcom/mapps/android/view/InterstitialView$10;
.super Landroid/webkit/WebViewClient;
.source "InterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->LoadingURL(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$10;->this$0:Lcom/mapps/android/view/InterstitialView;

    .line 528
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/InterstitialView$10;)Lcom/mapps/android/view/InterstitialView;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$10;->this$0:Lcom/mapps/android/view/InterstitialView;

    return-object v0
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 537
    new-instance v0, Lcom/mapps/android/view/InterstitialView$10$1;

    invoke-direct {v0, p0, p2}, Lcom/mapps/android/view/InterstitialView$10$1;-><init>(Lcom/mapps/android/view/InterstitialView$10;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mezzo/common/MZBtnUtils;->setDelayClick(Ljava/util/concurrent/Callable;)V

    .line 570
    const/4 v0, 0x1

    return v0
.end method
