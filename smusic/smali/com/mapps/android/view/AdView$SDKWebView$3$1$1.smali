.class Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKWebView$3$1;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/mapps/android/view/AdView$SDKWebView$3$1;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKWebView$3$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->this$3:Lcom/mapps/android/view/AdView$SDKWebView$3$1;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->val$url:Ljava/lang/String;

    .line 1684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1688
    :try_start_0
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->val$url:Ljava/lang/String;

    const-string v3, "intent:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->val$url:Ljava/lang/String;

    const-string v3, "kakaolink:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->val$url:Ljava/lang/String;

    const-string v3, "market:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1689
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->val$url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1690
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1691
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->this$3:Lcom/mapps/android/view/AdView$SDKWebView$3$1;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->access$1(Lcom/mapps/android/view/AdView$SDKWebView$3$1;)Lcom/mapps/android/view/AdView$SDKWebView$3;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView;->access$1(Lcom/mapps/android/view/AdView$SDKWebView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1700
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1693
    :cond_1
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->this$3:Lcom/mapps/android/view/AdView$SDKWebView$3$1;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->access$1(Lcom/mapps/android/view/AdView$SDKWebView$3$1;)Lcom/mapps/android/view/AdView$SDKWebView$3;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView$SDKWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->val$url:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1695
    :catch_0
    move-exception v0

    .line 1696
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1697
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->this$3:Lcom/mapps/android/view/AdView$SDKWebView$3$1;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->access$1(Lcom/mapps/android/view/AdView$SDKWebView$3$1;)Lcom/mapps/android/view/AdView$SDKWebView$3;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView;->access$3(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mapps/android/view/AdView;->StopService()V

    .line 1698
    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;->this$3:Lcom/mapps/android/view/AdView$SDKWebView$3$1;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->access$1(Lcom/mapps/android/view/AdView$SDKWebView$3$1;)Lcom/mapps/android/view/AdView$SDKWebView$3;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView;->access$3(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v2

    const/16 v3, -0x384

    invoke-static {v2, v3}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0
.end method
