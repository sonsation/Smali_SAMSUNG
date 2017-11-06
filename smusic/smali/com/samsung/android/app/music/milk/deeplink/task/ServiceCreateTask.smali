.class public Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "ServiceCreateTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mArtist:Ljava/lang/String;

.field private mArtistId:Ljava/lang/String;

.field private mIsPlay:Z

.field private mSeed:Ljava/lang/String;

.field private mServiceHelpler:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private mStationId:Ljava/lang/String;

.field private mStationName:Ljava/lang/String;

.field private mTrack:Ljava/lang/String;

.field private mTrackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isPlay"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 55
    iput-boolean p3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mIsPlay:Z

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ARTIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mArtist:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ARTIST_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mArtistId:Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mTrack:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mTrackId:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->STATION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationName:Ljava/lang/String;

    .line 61
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->SEED_LIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mSeed:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceHelpler:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 63
    return-void
.end method

.method private getEditedStation(Lcom/samsung/android/app/music/common/model/Station;)Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .locals 18
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 161
    const/4 v15, 0x0

    .line 163
    .local v15, "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    if-nez p1, :cond_0

    move-object/from16 v16, v15

    .line 210
    .end local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .local v16, "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :goto_0
    return-object v16

    .line 167
    .end local v16    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .restart local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationName:Ljava/lang/String;

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUpdateStation : Station Name is Changed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 170
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ==> ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v15, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    .end local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    const-string/jumbo v1, "update"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v15, v1, v3, v0}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    .line 179
    .restart local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mSeed:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->parseSeedListString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 181
    .local v14, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move-object/from16 v16, v15

    .line 182
    .end local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .restart local v16    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    goto :goto_0

    .line 176
    .end local v14    # "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    .end local v16    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .restart local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    :cond_2
    new-instance v15, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    .end local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    const-string/jumbo v1, "update"

    move-object/from16 v0, p1

    invoke-direct {v15, v1, v0}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;-><init>(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    .restart local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    goto :goto_1

    .line 185
    .restart local v14    # "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Station;->getSeedList()Ljava/util/ArrayList;

    move-result-object v13

    .line 187
    .local v13, "original_seed_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/common/model/Seed;

    .line 188
    .local v10, "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    const/4 v11, 0x0

    .line 189
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

    .line 190
    .local v12, "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    invoke-virtual {v12}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    const/4 v11, 0x1

    .line 196
    .end local v12    # "ori_seed":Lcom/samsung/android/app/music/common/model/Seed;
    :cond_6
    if-nez v11, :cond_4

    .line 197
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEditedStation : Seed Added ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v1, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "02"

    .line 200
    .local v2, "seedType":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "01"

    .line 201
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 202
    :cond_7
    const-string v2, "01"

    .line 204
    :cond_8
    const/4 v1, 0x0

    .line 205
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedId()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getSeedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/Seed;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 205
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/app/music/common/model/Seed;->createSeed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/samsung/android/app/music/common/model/Seed;

    move-result-object v1

    .line 204
    invoke-virtual {v15, v1}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->updateReqAddSeed(Lcom/samsung/android/app/music/common/model/Seed;)V

    goto/16 :goto_2

    .end local v2    # "seedType":Ljava/lang/String;
    .end local v10    # "changed_seed":Lcom/samsung/android/app/music/common/model/Seed;
    .end local v11    # "checked":Z
    :cond_9
    move-object/from16 v16, v15

    .line 210
    .end local v15    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .restart local v16    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    goto/16 :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .line 74
    return-void
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mArtist:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mArtistId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 99
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 103
    packed-switch p2, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 105
    :pswitch_1
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApiHandled : Create station : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    packed-switch p3, :pswitch_data_1

    .line 133
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    goto :goto_0

    :pswitch_2
    move-object v0, p4

    .line 109
    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    .line 110
    .local v0, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v0, :cond_0

    .line 111
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApiHandled : Create station : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationId:Ljava/lang/String;

    .line 113
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getNeedUpdateStationInfo()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_2

    .line 116
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->getEditedStation(Lcom/samsung/android/app/music/common/model/Station;)Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    move-result-object v1

    .line 117
    .local v1, "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v2, "updateStationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceHelpler:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v4, p0, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updatePersonalStations(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    goto :goto_0

    .line 122
    .end local v1    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .end local v2    # "updateStationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mIsPlay:Z

    if-eqz v4, :cond_3

    .line 123
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mTrackId:Ljava/lang/String;

    .line 124
    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    goto/16 :goto_0

    .line 139
    .end local v0    # "station":Lcom/samsung/android/app/music/common/model/Station;
    :pswitch_3
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onApiHandled : Update personal station : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    packed-switch p3, :pswitch_data_2

    .line 153
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz v4, :cond_0

    .line 154
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    goto/16 :goto_0

    :pswitch_4
    move-object v3, p4

    .line 143
    check-cast v3, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    .line 144
    .local v3, "updatedStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    if-eqz v3, :cond_4

    .line 145
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->getStationId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationId:Ljava/lang/String;

    .line 146
    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mIsPlay:Z

    if-eqz v4, :cond_4

    .line 147
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mStationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mTrackId:Ljava/lang/String;

    .line 148
    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->moveStation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0xcf
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 107
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 141
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 78
    new-instance v0, Lcom/samsung/android/app/music/common/model/artist/Artist;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mArtistId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mArtist:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, "artist":Lcom/samsung/android/app/music/common/model/artist/Artist;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "artistList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v2, 0x0

    .line 84
    .local v2, "track":Lcom/samsung/android/app/music/common/model/Track;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mTrack:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mTrackId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    new-instance v2, Lcom/samsung/android/app/music/common/model/Track;

    .end local v2    # "track":Lcom/samsung/android/app/music/common/model/Track;
    invoke-direct {v2}, Lcom/samsung/android/app/music/common/model/Track;-><init>()V

    .line 86
    .restart local v2    # "track":Lcom/samsung/android/app/music/common/model/Track;
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mTrack:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mTrackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/common/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 90
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceCreateTask;->mServiceHelpler:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v2, v1, v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->createPersonalStation(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Track;Ljava/util/List;Z)I

    .line 91
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 95
    return-void
.end method
