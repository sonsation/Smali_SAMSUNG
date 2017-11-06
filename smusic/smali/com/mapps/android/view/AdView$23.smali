.class Lcom/mapps/android/view/AdView$23;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->requestUseSSp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$23;->val$handler:Landroid/os/Handler;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 491
    :try_start_0
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 492
    .local v11, "sendMsg":Landroid/os/Message;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/network/UrlManager;->urlSSP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/mapps/android/network/ParamManager;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$79(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$80(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$81(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v4}, Lcom/mapps/android/view/AdView;->access$82(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v5}, Lcom/mapps/android/view/AdView;->access$65(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v6}, Lcom/mapps/android/view/AdView;->access$66(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v7}, Lcom/mapps/android/view/AdView;->access$67(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v8}, Lcom/mapps/android/view/AdView;->access$63(Lcom/mapps/android/view/AdView;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v9}, Lcom/mapps/android/view/AdView;->access$83(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/mapps/android/network/ParamManager;->getParamSSP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/mapps/android/view/AdView$23;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v11    # "sendMsg":Landroid/os/Message;
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v10

    .line 495
    .local v10, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/mapps/android/view/AdView$23;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$7(Lcom/mapps/android/view/AdView;)V

    .line 496
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
