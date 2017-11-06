.class Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;
.super Ljava/lang/Object;
.source "MusicVideoPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->loadMusicVideos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

.field final synthetic val$displayId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->val$displayId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 7
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMusicVideos.onApiCalled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "reqId[%d], reqType[%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 77
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

    .line 76
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 18
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 82
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    if-nez v2, :cond_3

    .line 84
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->isViewAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$100(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-interface {v2, v0, v3, v4}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;->showError(IILjava/lang/String;)V

    .line 87
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadMusicVideos.onApiHandled : Error! Unexpected response, rspData is invalid"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    .line 92
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_3
    const/16 v2, 0x2778

    move/from16 v0, p2

    if-eq v0, v2, :cond_5

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->isViewAttached()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$100(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    move-result-object v2

    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-interface {v2, v0, v3, v4}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;->showError(IILjava/lang/String;)V

    .line 96
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMusicVideos.onApiHandled : Error! Unexpected response, reqType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_5
    move-object/from16 v15, p4

    .line 101
    check-cast v15, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    .line 102
    .local v15, "model":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    invoke-virtual {v15}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getDisplayList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v15}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getDisplayList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 103
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadMusicVideos.onApiHandled : Error! Failed to get Music video info"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_7
    invoke-virtual {v15}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getDisplayList()Ljava/util/List;

    move-result-object v14

    .line 108
    .local v14, "groupList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadMusicVideos.onApiHandled : Warning! Too much data received"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 111
    .local v13, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadMusicVideos.onApiHandled : Warning! Unknown data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 117
    .end local v13    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 119
    .restart local v13    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->val$displayId:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$200(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 120
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$000(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMusicVideos.onApiHandled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Warning! Display mismatch, Id[%s:%s] Type[%s:%s]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->val$displayId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 122
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v8}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$200(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 121
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_a
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v12

    .line 128
    .local v12, "contentList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v16, "musicVideoContentList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 131
    .local v11, "content":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    new-instance v1, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentId()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getContentOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getExplicit()I

    move-result v7

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getMvInfo()Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;

    move-result-object v9

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;->getArtistList()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;Lcom/samsung/android/app/music/common/model/milkstore/StoreMainMusicVideoInfo;Ljava/util/List;)V

    .line 134
    .local v1, "musicVideo":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    .end local v1    # "musicVideo":Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoContent;
    .end local v11    # "content":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->isViewAttached()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$100(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;->showMusicVideos(Ljava/util/List;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter$1;->this$0:Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;->access$100(Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoPresenter;)Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/milk/store/musicvideo/MusicVideoView;->showLoading(Z)V

    goto/16 :goto_0
.end method
