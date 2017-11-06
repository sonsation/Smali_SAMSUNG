.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;
.super Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;
.source "MilkWorkerCreateStation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerCreateStation"


# instance fields
.field protected isExplicitTrack:Z

.field protected mArtistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsTempCreateStation:Z

.field protected mRenameStation:Ljava/lang/String;

.field protected mSeedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;"
        }
    .end annotation
.end field

.field protected mTrackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZLjava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "fragmngr"    # Landroid/app/FragmentManager;
    .param p5, "trackId"    # Ljava/lang/String;
    .param p6, "trackName"    # Ljava/lang/String;
    .param p8, "forcePlay"    # Z
    .param p9, "isTempCreateStation"    # Z
    .param p10, "goRadioTab"    # Z
    .param p11, "renameStation"    # Ljava/lang/String;
    .param p13, "isExplicit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Landroid/app/FragmentManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/Seed;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p7, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    .local p12, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToMyStation;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 48
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->isExplicitTrack:Z

    .line 58
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackName:Ljava/lang/String;

    .line 59
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackId:Ljava/lang/String;

    .line 60
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mArtistList:Ljava/util/ArrayList;

    .line 61
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mIsTempCreateStation:Z

    .line 62
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    .line 63
    if-eqz p12, :cond_0

    invoke-virtual/range {p12 .. p12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mSeedList:Ljava/util/ArrayList;

    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mSeedList:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    :goto_0
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->isExplicitTrack:Z

    .line 70
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mSeedList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private executeUpdateStationProcess(Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 7
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 191
    .local v0, "radioService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-nez v0, :cond_0

    .line 192
    const-string v3, "MilkWorkerCreateStation"

    const-string v4, "onApiHandled : Milk Service is empty"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v3, 0x0

    const-string v4, "MilkWorkerCreateStation"

    const-string v5, "NOT_DEFINE"

    const-string v6, "not Initialized"

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->getEditedStation(Lcom/samsung/android/app/music/common/model/Station;)Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    move-result-object v1

    .line 199
    .local v1, "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, "updateStationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updatePersonalStations(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    goto :goto_0
.end method

.method private getEditedStation(Lcom/samsung/android/app/music/common/model/Station;)Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .locals 17
    .param p1, "tarStation"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 223
    const/4 v14, 0x0

    .line 225
    .local v14, "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    if-nez p1, :cond_0

    move-object v15, v14

    .line 271
    .end local v14    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .local v15, "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :goto_0
    return-object v15

    .line 229
    .end local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .restart local v14    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    .line 230
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 231
    const-string v1, "MilkWorkerCreateStation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUpdateStation : Station Name is Changed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ==> ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v14, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    .end local v14    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    const-string/jumbo v1, "update"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v14, v1, v3, v0}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    .line 242
    .restart local v14    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mSeedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mSeedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move-object v15, v14

    .line 243
    .end local v14    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .restart local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    goto :goto_0

    .line 238
    .end local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .restart local v14    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :cond_2
    new-instance v14, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    .end local v14    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    const-string/jumbo v1, "update"

    move-object/from16 v0, p1

    invoke-direct {v14, v1, v0}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;-><init>(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    .restart local v14    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    goto :goto_1

    .line 246
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v13

    .line 248
    .local v13, "original_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mSeedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/common/model/Seed;

    .line 249
    .local v10, "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    const/4 v11, 0x0

    .line 250
    .local v11, "checked":Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/app/music/common/model/Seed;

    .line 251
    .local v12, "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    const/4 v11, 0x1

    .line 257
    .end local v12    # "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_6
    if-nez v11, :cond_4

    .line 258
    const-string v1, "MilkWorkerCreateStation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEditedStation : Seed Added ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v2, "02"

    .line 261
    .local v2, "seedType":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "01"

    .line 262
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 263
    :cond_7
    const-string v2, "01"

    .line 265
    :cond_8
    const/4 v1, 0x0

    .line 266
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 266
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v1

    .line 265
    invoke-virtual {v14, v1}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->updateReqAddSeed(Lcom/samsung/android/app/music/common/model/Seed;)V

    goto/16 :goto_2

    .end local v2    # "seedType":Ljava/lang/String;
    .end local v10    # "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    .end local v11    # "checked":Z
    :cond_9
    move-object v15, v14

    .line 271
    .end local v14    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .restart local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    goto/16 :goto_0
.end method

.method private showCreateStationError(II)V
    .locals 5
    .param p1, "rspCode"    # I
    .param p2, "errCode"    # I

    .prologue
    .line 206
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02d8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    const/4 v0, 0x0

    const-string v1, "MilkWorkerCreateStation"

    const-string v2, "ServerErrorType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void

    .line 209
    :cond_1
    const/16 v0, 0x1005

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1006

    if-eq p2, v0, :cond_0

    const/16 v0, 0x1004

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "MilkWorkerCreateStation"

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const v7, 0x7f0a0277

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onApiHandled : Receive Result from Service ID("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Type("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->showLoadingProgress(Z)V

    .line 150
    const/16 v0, 0xcf

    if-ne p2, v0, :cond_4

    .line 151
    if-nez p3, :cond_3

    move-object v1, p4

    .line 152
    check-cast v1, Lcom/samsung/android/app/music/common/model/Station;

    .line 153
    .local v1, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Station;->getNeedUpdateStationInfo()I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    .line 156
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->executeUpdateStationProcess(Lcom/samsung/android/app/music/common/model/Station;)V

    .line 187
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_1
    :goto_0
    return-void

    .line 158
    .restart local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mForcePlay:Z

    iget-boolean v5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mGoRadioTab:Z

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->playStation(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 165
    .end local v1    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :cond_3
    aget-object v0, p5, v5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->showCreateStationError(II)V

    goto :goto_0

    .line 167
    :cond_4
    const/16 v0, 0xd2

    if-ne p2, v0, :cond_6

    .line 168
    if-nez p3, :cond_5

    move-object v9, p4

    .line 169
    check-cast v9, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    .line 170
    .local v9, "updatedStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v6}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    if-eqz v9, :cond_1

    .line 173
    invoke-virtual {v9}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->getStationId()Ljava/lang/String;

    move-result-object v5

    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mForcePlay:Z

    iget-boolean v8, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mGoRadioTab:Z

    move-object v3, p0

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->playStation(Lcom/samsung/android/app/music/common/model/Station;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 177
    .end local v9    # "updatedStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :cond_5
    const-string v0, "MilkWorkerCreateStation"

    const-string v2, "ServerErrorType"

    const-string v3, "Server Error"

    invoke-virtual {p0, v5, v0, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_6
    const-string v0, "MilkWorkerCreateStation"

    const-string v2, "onApiHandled : Wrong Request"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02d8

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    const-string v0, "MilkWorkerCreateStation"

    const-string v2, "NOT_DEFINE"

    const-string v3, "Parameter Error"

    invoke-virtual {p0, v5, v0, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 79
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-nez v4, :cond_1

    .line 80
    const-string v4, "MilkWorkerCreateStation"

    const-string v5, "NOT_DEFINE"

    const-string v6, "not Initialized"

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mArtistList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mArtistList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackId:Ljava/lang/String;

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    :cond_3
    const-string v4, "MilkWorkerCreateStation"

    const-string/jumbo v5, "run : Seed is not available"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v4, "MilkWorkerCreateStation"

    const-string v5, "NOT_DEFINE"

    const-string v6, "not Initialized"

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 94
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->isExplicitTrack:Z

    if-eqz v4, :cond_5

    .line 95
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I

    move-result v1

    .line 97
    .local v1, "explicit":I
    if-eqz v1, :cond_5

    .line 98
    const-string v4, "MilkWorkerCreateStation"

    const-string/jumbo v5, "run : Not Permitted (Explicit)"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mContext:Landroid/content/Context;

    const-string v5, "explicit-invalid"

    .line 100
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v4, "MilkWorkerCreateStation"

    const-string v5, "NOT_DEFINE"

    const-string v6, "not Initialized"

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    .end local v1    # "explicit":I
    :cond_5
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->launchMaximunMyStationReachedPopup(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    .line 110
    .local v2, "radioService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-eqz v2, :cond_a

    .line 111
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 112
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    .line 113
    invoke-static {v4, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->hasStationInMyStationByName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 114
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    .line 115
    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getProperStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "dedicatedStationName":Ljava/lang/String;
    const-string v4, "MilkWorkerCreateStation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "run : Rename Station ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Dedicated ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 120
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    goto :goto_1

    .line 123
    .end local v0    # "dedicatedStationName":Ljava/lang/String;
    :cond_7
    const-string v4, "MilkWorkerCreateStation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "run : Rename Station Target ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mRenameStation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 127
    new-instance v3, Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {v3}, Lcom/samsung/android/app/music/common/model/Track;-><init>()V

    .line 128
    .local v3, "track":Lcom/samsung/android/app/music/common/model/Track;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mTrackId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/common/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 131
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mIsTempCreateStation:Z

    invoke-virtual {v2, p0, v3, v8, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->createPersonalStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Track;Ljava/util/List;Z)I

    goto/16 :goto_0

    .line 133
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/Track;
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mArtistList:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->mIsTempCreateStation:Z

    .line 134
    invoke-virtual {v2, p0, v8, v4, v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->createPersonalStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Track;Ljava/util/List;Z)I

    goto/16 :goto_0

    .line 137
    :cond_a
    const-string v4, "MilkWorkerCreateStation"

    const-string v5, "NOT_DEFINE"

    const-string v6, "not Initialized"

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerCreateStation;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
