.class Lcom/mapps/android/view/EndingAdView$28;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->createWebView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$28;->val$url:Ljava/lang/String;

    .line 1106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v5, -0x2

    .line 1108
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$28;->val$url:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$28;->val$url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1109
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1110
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    new-instance v3, Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/mapps/android/view/EndingAdView;->access$40(Lcom/mapps/android/view/EndingAdView;Landroid/webkit/WebView;)V

    .line 1111
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$41(Lcom/mapps/android/view/EndingAdView;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1112
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView$28;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mapps/android/view/EndingAdView;->LoadingURL(Ljava/lang/String;)V

    .line 1113
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v3}, Lcom/mapps/android/view/EndingAdView;->access$41(Lcom/mapps/android/view/EndingAdView;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mapps/android/view/EndingAdView;->addView(Landroid/view/View;)V

    .line 1115
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v0, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1117
    .local v0, "fparams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v2, v3}, Lcom/mapps/android/view/EndingAdView;->access$42(Lcom/mapps/android/view/EndingAdView;Landroid/widget/ProgressBar;)V

    .line 1118
    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v3}, Lcom/mapps/android/view/EndingAdView;->access$31(Lcom/mapps/android/view/EndingAdView;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/mapps/android/view/EndingAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1121
    .end local v0    # "fparams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method
