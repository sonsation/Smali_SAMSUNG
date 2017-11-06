.class Lcom/mapps/android/view/AdVideoPlayer$9;
.super Ljava/lang/Object;
.source "AdVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->SendRequestVideoInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;

.field private final synthetic val$requestHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iput-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$9;->val$requestHandler:Landroid/os/Handler;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 281
    :try_start_0
    new-instance v16, Landroid/os/Message;

    invoke-direct/range {v16 .. v16}, Landroid/os/Message;-><init>()V

    .line 282
    .local v16, "sendMsg":Landroid/os/Message;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getInstance()Lcom/mapps/android/network/UrlManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mapps/android/network/UrlManager;->urlVideo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/mapps/android/network/ParamManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mapps/android/network/ParamManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$18(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v3}, Lcom/mapps/android/view/AdVideoPlayer;->access$19(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v4}, Lcom/mapps/android/view/AdVideoPlayer;->access$20(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v5}, Lcom/mapps/android/view/AdVideoPlayer;->access$21(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6}, Lcom/mapps/android/view/AdVideoPlayer;->access$22(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$23(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v8}, Lcom/mapps/android/view/AdVideoPlayer;->access$24(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v9}, Lcom/mapps/android/view/AdVideoPlayer;->access$10(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v10}, Lcom/mapps/android/view/AdVideoPlayer;->access$11(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v11}, Lcom/mapps/android/view/AdVideoPlayer;->access$12(Lcom/mapps/android/view/AdVideoPlayer;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "java"

    invoke-virtual/range {v1 .. v12}, Lcom/mapps/android/network/ParamManager;->getParamVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->val$requestHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v16    # "sendMsg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v14

    .line 285
    .local v14, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v2, -0xc8

    invoke-static {v1, v2}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$25(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mezzo/common/network/data/DataNTMovie;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTMovie;->adListSize()I

    move-result v15

    .line 287
    .local v15, "len":I
    if-lez v15, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$25(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mezzo/common/network/data/DataNTMovie;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/data/DataNTMovie;->getAd(I)Lcom/mezzo/common/network/data/DataMovieAD;

    move-result-object v13

    .line 289
    .local v13, "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    invoke-virtual {v13}, Lcom/mezzo/common/network/data/DataMovieAD;->getError()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v13}, Lcom/mezzo/common/network/data/DataMovieAD;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mapps/android/view/AdVideoPlayer$9;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v13}, Lcom/mezzo/common/network/data/DataMovieAD;->getError()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[ERRORCODE]"

    const/16 v4, -0xc8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, -0xc8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
