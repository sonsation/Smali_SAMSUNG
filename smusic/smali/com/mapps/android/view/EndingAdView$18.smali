.class Lcom/mapps/android/view/EndingAdView$18;
.super Ljava/lang/Object;
.source "EndingAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->SendRequest(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$requestHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$18;->val$requestHandler:Landroid/os/Handler;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 541
    :try_start_0
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 542
    .local v11, "sendMsg":Landroid/os/Message;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/network/UrlManager;->urlEnding(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/mapps/android/network/ParamManager;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$27(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$28(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v3}, Lcom/mapps/android/view/EndingAdView;->access$29(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v4}, Lcom/mapps/android/view/EndingAdView;->access$30(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v5}, Lcom/mapps/android/view/EndingAdView;->access$16(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v6}, Lcom/mapps/android/view/EndingAdView;->access$17(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v7}, Lcom/mapps/android/view/EndingAdView;->access$18(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget v8, v8, Lcom/mapps/android/view/EndingAdView;->media_type:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v9}, Lcom/mapps/android/view/EndingAdView;->access$19(Lcom/mapps/android/view/EndingAdView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/mapps/android/network/ParamManager;->getParamEnding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 543
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$18;->val$requestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v11    # "sendMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v10

    .line 545
    .local v10, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$1(Lcom/mapps/android/view/EndingAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendRequest() exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$1(Lcom/mapps/android/view/EndingAdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    const-string v0, "ADSDK"

    const-string v1, "SendRequest() Retry Request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$5(Lcom/mapps/android/view/EndingAdView;I)V

    .line 550
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v1, -0xc8

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0
.end method
