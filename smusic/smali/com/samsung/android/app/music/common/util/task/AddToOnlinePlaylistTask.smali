.class public Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "AddToOnlinePlaylistTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AddToOnlinePlaylistTask"


# instance fields
.field private mAudioIds:[J

.field private mLaunchTrack:Z

.field private mMaxOrder:I

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private final mPlaylistId:J

.field private mSimpleTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mSourcePlaylistId:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[JJZ)V
    .locals 9
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "audioIds"    # [J
    .param p3, "playlistId"    # J
    .param p5, "finish"    # Z

    .prologue
    .line 57
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;-><init>(Landroid/app/Activity;[JJZZLjava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;[JJZZLjava/lang/String;)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "audioIds"    # [J
    .param p3, "playlistId"    # J
    .param p5, "finish"    # Z
    .param p6, "launchTrack"    # Z
    .param p7, "title"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1, p5}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mLaunchTrack:Z

    .line 63
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mAudioIds:[J

    .line 64
    iput-wide p3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mPlaylistId:J

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mSimpleTracks:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 68
    iput-boolean p6, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mLaunchTrack:Z

    .line 69
    iput-object p7, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mTitle:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private final getSeqIdMap(Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;)Ljava/util/HashMap;
    .locals 5
    .param p1, "info"    # Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v1, "seqIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;->getPlaylistTracks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;

    .line 159
    .local v2, "track":Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "seqIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackSeqId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v0    # "seqIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "seqIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_1

    .line 167
    .end local v0    # "seqIdArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "track":Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrack;
    :cond_1
    return-object v1
.end method

.method private final makeInsertContentValues(Ljava/util/HashMap;)[Landroid/content/ContentValues;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "seqIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    iget-object v9, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mAudioIds:[J

    array-length v9, v9

    new-array v8, v9, [Landroid/content/ContentValues;

    .line 173
    .local v8, "values":[Landroid/content/ContentValues;
    move-object v5, p1

    .line 174
    .local v5, "seqIdArrayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .line 175
    .local v3, "index":I
    iget v9, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mMaxOrder:I

    add-int/lit8 v0, v9, 0x1

    .line 177
    .local v0, "baseOrder":I
    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mSimpleTracks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move v1, v0

    .end local v0    # "baseOrder":I
    .local v1, "baseOrder":I
    move v4, v3

    .end local v3    # "index":I
    .local v4, "index":I
    :goto_0
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 178
    .local v6, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    const-string v9, "AddToOnlinePlaylistTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "makeInsertContentValues audioId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 179
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAudioId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " track : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 178
    invoke-static {v9, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 182
    .local v7, "value":Landroid/content/ContentValues;
    const-string v9, "audio_id"

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAudioId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    const-string/jumbo v9, "play_order"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "baseOrder":I
    .restart local v0    # "baseOrder":I
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v9, "audio_source_id"

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v11, "server_track_seq_id"

    .line 186
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 185
    invoke-virtual {v7, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    :try_start_3
    aput-object v7, v8, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v0

    .end local v0    # "baseOrder":I
    .restart local v1    # "baseOrder":I
    move v4, v3

    .line 188
    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    .end local v6    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .end local v7    # "value":Landroid/content/ContentValues;
    :cond_0
    move v0, v1

    .end local v1    # "baseOrder":I
    .restart local v0    # "baseOrder":I
    move v3, v4

    .line 193
    .end local v4    # "index":I
    .restart local v3    # "index":I
    :goto_1
    return-object v8

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const/4 v8, 0x0

    goto :goto_1

    .line 189
    .end local v0    # "baseOrder":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "index":I
    .restart local v1    # "baseOrder":I
    .restart local v4    # "index":I
    :catch_1
    move-exception v2

    move v0, v1

    .end local v1    # "baseOrder":I
    .restart local v0    # "baseOrder":I
    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_2

    .end local v3    # "index":I
    .restart local v4    # "index":I
    .restart local v6    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .restart local v7    # "value":Landroid/content/ContentValues;
    :catch_2
    move-exception v2

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 85
    const-string v0, "AddToOnlinePlaylistTask"

    const-string v1, "doInBackground start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mSourcePlaylistId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mSimpleTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addPlaylistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/util/List;)I

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 120
    const-string v0, "AddToOnlinePlaylistTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
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
    const/4 v6, 0x1

    .line 125
    const-string v3, "AddToOnlinePlaylistTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled reqId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reqType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rspType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-nez p3, :cond_3

    .line 128
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;

    if-eqz v3, :cond_2

    .line 129
    check-cast p4, Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;

    .line 130
    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->getSeqIdMap(Lcom/samsung/android/app/music/common/model/playlist/PlaylistTrackInfo;)Ljava/util/HashMap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->makeInsertContentValues(Ljava/util/HashMap;)[Landroid/content/ContentValues;

    move-result-object v2

    .line 131
    .local v2, "values":[Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 132
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mPlaylistId:J

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/provider/MilkContents$Playlists$Members;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 133
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 135
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mFinish:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 138
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mLaunchTrack:Z

    if-eqz v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mActivity:Landroid/app/Activity;

    const v4, 0x100050

    iget-wide v6, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mPlaylistId:J

    .line 140
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mTitle:Ljava/lang/String;

    .line 139
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v2    # "values":[Landroid/content/ContentValues;
    :cond_2
    :goto_0
    return-void

    .line 143
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_3
    if-ne p3, v6, :cond_4

    .line 144
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_2

    .line 145
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 146
    .local v0, "resultCode":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddPlaylistTracks failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 150
    .end local v0    # "resultCode":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddPlaylistTracks failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 74
    const-string v0, "AddToOnlinePlaylistTask"

    const-string/jumbo v1, "onPreExecute start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->onPreExecute()V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mPlaylistId:J

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mSourcePlaylistId:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mAudioIds:[J

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->getSimpleTracks(Landroid/content/Context;[J)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mSimpleTracks:Ljava/util/ArrayList;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mPlaylistId:J

    const-string/jumbo v1, "online"

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getPlaylistMaxOrder(Landroid/content/Context;JLjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->mMaxOrder:I

    .line 80
    const-string v0, "AddToOnlinePlaylistTask"

    const-string/jumbo v1, "onPreExecute end"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 110
    const-string v0, "AddToOnlinePlaylistTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 115
    const-string v0, "AddToOnlinePlaylistTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
