.class Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient$1;->this$1:Lcom/samsung/android/app/music/milk/event/WebViewActivity$FullScreenChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 465
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 466
    return-void
.end method
