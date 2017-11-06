.class Lcom/mapps/android/view/AdView$SDKWebView$3$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKWebView$3;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKWebView$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->val$url:Ljava/lang/String;

    .line 1668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdView$SDKWebView$3$1;)Lcom/mapps/android/view/AdView$SDKWebView$3;
    .locals 1

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1672
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mapps/android/view/AdView$SDKWebView;->bGotolinkType:Z

    if-nez v0, :cond_1

    .line 1673
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$3(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/mapps/android/view/AdView;->access$44(Lcom/mapps/android/view/AdView;Z)V

    .line 1674
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v0

    sget-object v1, Lcom/mapps/android/view/AdView$SSPAdmState;->CLICK:Lcom/mapps/android/view/AdView$SSPAdmState;

    invoke-interface {v0, v1}, Lcom/mapps/android/view/AdView$OnSSPAdmListener;->onSSpAdmState(Lcom/mapps/android/view/AdView$SSPAdmState;)V

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$3(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->isUseOutClickAction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1678
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$3(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mapps/android/listner/AdLinkListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1680
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$3(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mapps/android/listner/AdLinkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$3;

    invoke-static {v1}, Lcom/mapps/android/view/AdView$SDKWebView$3;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$3;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/AdView$SDKWebView;->access$3(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$45(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mapps/android/listner/AdLinkListener;->onClickUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1684
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->val$url:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/mapps/android/view/AdView$SDKWebView$3$1$1;-><init>(Lcom/mapps/android/view/AdView$SDKWebView$3$1;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1701
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView$3$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
