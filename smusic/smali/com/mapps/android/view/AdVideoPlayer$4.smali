.class Lcom/mapps/android/view/AdVideoPlayer$4;
.super Ljava/lang/Object;
.source "AdVideoPlayer.java"

# interfaces
.implements Lcom/mezzo/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isConnection"    # Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;
    .param p3, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 307
    sget-object v6, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v6, :cond_9

    .line 308
    invoke-virtual {p3}, Lcom/mezzo/common/network/request/RequestNTCommon;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mezzo/common/network/data/DataNTMovie;

    .line 309
    .local v1, "data":Lcom/mezzo/common/network/data/DataNTMovie;
    if-eqz v1, :cond_8

    .line 310
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v6, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$6(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mezzo/common/network/data/DataNTMovie;)V

    .line 311
    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTMovie;->adListSize()I

    move-result v5

    .line 312
    .local v5, "len":I
    if-lez v5, :cond_7

    .line 313
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/mezzo/common/network/data/DataNTMovie;->getAd(I)Lcom/mezzo/common/network/data/DataMovieAD;

    move-result-object v0

    .line 314
    .local v0, "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    const/4 v3, 0x1

    .line 315
    .local v3, "isClickSuccess":Z
    const/4 v4, 0x1

    .line 316
    .local v4, "isSrcSuccess":Z
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getClickthrough()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v6, ""

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getClickthrough()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 317
    :cond_0
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v7, 0x65

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 318
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getError()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, ""

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 319
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getError()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[ERRORCODE]"

    const/16 v9, 0x65

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "error : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x65

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_1
    const/4 v3, 0x0

    .line 323
    :cond_2
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getMediafile_src()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v6, ""

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getMediafile_src()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 324
    :cond_3
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v7, 0x191

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 325
    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getError()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string v6, ""

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getError()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 326
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getError()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[ERRORCODE]"

    const/16 v9, 0x191

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "error : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x191

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_4
    const/4 v4, 0x0

    .line 331
    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 332
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mezzo/common/network/data/DataMovieAD;->getMediafile_src()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$7(Lcom/mapps/android/view/AdVideoPlayer;Ljava/lang/String;)V

    .line 333
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 335
    :try_start_0
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v6}, Lcom/mapps/android/view/AdVideoPlayer;->initView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v1    # "data":Lcom/mezzo/common/network/data/DataNTMovie;
    .end local v3    # "isClickSuccess":Z
    .end local v4    # "isSrcSuccess":Z
    .end local v5    # "len":I
    :cond_6
    :goto_0
    return-void

    .line 336
    .restart local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .restart local v1    # "data":Lcom/mezzo/common/network/data/DataNTMovie;
    .restart local v3    # "isClickSuccess":Z
    .restart local v4    # "isSrcSuccess":Z
    .restart local v5    # "len":I
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v7, -0x320

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0

    .line 341
    .end local v0    # "ad":Lcom/mezzo/common/network/data/DataMovieAD;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "isClickSuccess":Z
    .end local v4    # "isSrcSuccess":Z
    :cond_7
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v7, -0x2bc

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0

    .line 344
    .end local v5    # "len":I
    :cond_8
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v7, -0x320

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0

    .line 347
    .end local v1    # "data":Lcom/mezzo/common/network/data/DataNTMovie;
    :cond_9
    sget-object v6, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_DATA_NULL:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v6, :cond_a

    .line 348
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v7, -0x2bc

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0

    .line 349
    :cond_a
    sget-object v6, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->CODE_ERROR:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v6, :cond_b

    .line 350
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v7, 0x64

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0

    .line 351
    :cond_b
    sget-object v6, Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;->SERVER_FAIL:Lcom/mezzo/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, v6, :cond_c

    .line 352
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v7, -0xc8

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0

    .line 354
    :cond_c
    iget-object v6, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v7, -0x320

    invoke-static {v6, v7}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    goto :goto_0
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mezzo/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/mezzo/common/network/request/RequestNTCommon;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v1, -0x64

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 303
    return-void
.end method
