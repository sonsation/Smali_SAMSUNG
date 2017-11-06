.class public Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;
.super Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;
.source "PlayMilkFavoriteTask.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PlayMilkFavoriteTask"


# instance fields
.field private mId:Ljava/lang/String;

.field private mListType:I

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listType"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;-><init>(Landroid/app/Activity;Z)V

    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mId:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mListType:I

    .line 41
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget v0, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;I)I

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mId:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getArtistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;ILjava/lang/String;)I

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPickDetail(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 90
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
    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    packed-switch p3, :pswitch_data_0

    .line 130
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 97
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    const/16 v4, 0x283e

    if-ne p2, v4, :cond_2

    .line 98
    instance-of v4, p4, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;

    if-eqz v4, :cond_1

    .line 99
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;->getSimpleTrackList()Ljava/util/List;

    move-result-object v3

    .line 125
    :cond_1
    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mContext:Landroid/content/Context;

    const v5, 0x100050

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v3, v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 101
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_2
    const/16 v4, 0x28a2

    if-ne p2, v4, :cond_3

    .line 102
    instance-of v4, p4, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;

    if-eqz v4, :cond_1

    .line 103
    check-cast p4, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/artist/ArtistDetailTrackInfo;->getTrackList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 105
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_3
    const/16 v4, 0x2906

    if-ne p2, v4, :cond_1

    .line 106
    instance-of v4, p4, Lcom/samsung/android/app/music/common/model/PickDetail;

    if-eqz v4, :cond_1

    .line 108
    check-cast p4, Lcom/samsung/android/app/music/common/model/PickDetail;

    .line 109
    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/PickDetail;->getPickInfo()Lcom/samsung/android/app/music/common/model/PickInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/PickInfo;->getArticleList()Ljava/util/List;

    move-result-object v1

    .line 111
    .local v1, "articles":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/PickArticle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/PickArticle;

    .line 112
    .local v0, "article":Lcom/samsung/android/app/music/common/model/PickArticle;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PickArticle;->getTrackList()Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 115
    if-nez v3, :cond_5

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .restart local v3    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/task/LoadingProgressTask;->onPostExecute(Ljava/lang/Integer;)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 57
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/util/task/PlayMilkFavoriteTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 46
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 51
    return-void
.end method

.method protected setLoadingProgress()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected setMessage(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method
