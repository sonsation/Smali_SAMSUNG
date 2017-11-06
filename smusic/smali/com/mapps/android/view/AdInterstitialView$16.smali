.class Lcom/mapps/android/view/AdInterstitialView$16;
.super Ljava/lang/Object;
.source "AdInterstitialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->SendRequestInterstitial(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$16;->val$handler:Landroid/os/Handler;

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 508
    :try_start_0
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 509
    .local v11, "sendMsg":Landroid/os/Message;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/network/UrlManager;->urlInterstitial(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/mapps/android/network/ParamManager;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$31(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$32(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v3}, Lcom/mapps/android/view/AdInterstitialView;->access$33(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v4}, Lcom/mapps/android/view/AdInterstitialView;->access$34(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v5}, Lcom/mapps/android/view/AdInterstitialView;->access$18(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v6}, Lcom/mapps/android/view/AdInterstitialView;->access$19(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v7}, Lcom/mapps/android/view/AdInterstitialView;->access$20(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "java"

    invoke-virtual/range {v0 .. v8}, Lcom/mapps/android/network/ParamManager;->getParamInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 510
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$16;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v11    # "sendMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v9

    .line 512
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/AdInterstitialView;->access$35(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mapps/android/view/AdInterstitialView$OnFlickerTypeListner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v0, v0, Lcom/mapps/android/view/AdInterstitialView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 515
    .local v10, "msg":Landroid/os/Message;
    const/4 v0, 0x2

    iput v0, v10, Landroid/os/Message;->what:I

    .line 516
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v0, v0, Lcom/mapps/android/view/AdInterstitialView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    .end local v10    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v1, -0xc8

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0
.end method
