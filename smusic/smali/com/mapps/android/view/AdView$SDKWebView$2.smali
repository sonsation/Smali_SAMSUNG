.class Lcom/mapps/android/view/AdView$SDKWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKWebView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/mapps/android/view/AdView$OnSSPAdmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKWebView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    .line 1648
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$2;->this$1:Lcom/mapps/android/view/AdView$SDKWebView;

    invoke-static {v0, p2}, Lcom/mapps/android/view/AdView$SDKWebView;->access$0(Lcom/mapps/android/view/AdView$SDKWebView;I)V

    .line 1655
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 1656
    return-void
.end method
