.class Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "FullScreenVideoPlayerActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->requestToPlayVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 7
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 316
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToPlayVideo.onApiCalled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "ReqId [%d], ReqType [%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 15
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 323
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestToPlayVideo.onApiHandled :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "ReqId [%d], ReqType [%d], RspType [%d]"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 324
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    .line 325
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 324
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 323
    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    instance-of v8, v0, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayInfo;

    if-nez v8, :cond_1

    .line 328
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    const/4 v9, -0x1

    const/4 v10, 0x0

    move/from16 v0, p3

    invoke-static {v8, v0, v9, v10}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$200(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;IILjava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "requestToPlayVideo.onApiHandled :Error! Unexpected response, rspData is invalid"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local p4    # "rspData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 334
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    const/16 v8, 0x2a31

    move/from16 v0, p2

    if-eq v0, v8, :cond_2

    .line 335
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v9

    const/4 v10, 0x0

    move/from16 v0, p3

    invoke-static {v8, v0, v9, v10}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$200(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;IILjava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestToPlayVideo.onApiHandled :Error! Unexpected response, reqType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_2
    move-object/from16 v4, p4

    .line 341
    check-cast v4, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayInfo;

    .line 342
    .local v4, "musicVideoPlayInfo":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayInfo;
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayInfo;->getList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 343
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayInfo;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 344
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "requestToPlayVideo.onApiHandled : Warning! No music video play info"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayInfo;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 350
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "requestToPlayVideo.onApiHandled : Warning! Should send one item for each request"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayInfo;->getList()Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    invoke-static {v9, v8}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$302(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    .line 356
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$300(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->getMvUrl()Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "mvUrl":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 358
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "requestToPlayVideo.onApiHandled : Error! Video uri is empty"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayInfo;->getResultCode()I

    move-result v9

    const/4 v10, 0x0

    move/from16 v0, p3

    invoke-static {v8, v0, v9, v10}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$200(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 364
    :cond_6
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 365
    .local v5, "mvUri":Landroid/net/Uri;
    const-string/jumbo v8, "www.youtube.com"

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 367
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v8, v5}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$400(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Landroid/net/Uri;)V

    .line 389
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "requestToPlayVideo.onApiHandled : end"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 369
    :cond_7
    const-string v2, ""

    .line 370
    .local v2, "artistName":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$300(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->getMusicVideoArtist()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    .line 371
    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$300(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->getMusicVideoArtist()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 372
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v3, "artistNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$300(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->getMusicVideoArtist()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;

    .line 374
    .local v1, "artist":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;->getArtistName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 375
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;->getArtistName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 379
    .end local v1    # "artist":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlayArtist;
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 380
    const-string v8, ", "

    .line 381
    invoke-static {v8, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .end local v3    # "artistNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$300(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;->getMvTitle()Ljava/lang/String;

    move-result-object v7

    .line 386
    .local v7, "songTitle":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {v8, v6, v2, v7}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->access$500(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
