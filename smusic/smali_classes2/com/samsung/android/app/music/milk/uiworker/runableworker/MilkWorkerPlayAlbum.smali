.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "MilkWorkerPlayAlbum.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerPlayAlbum"


# instance fields
.field protected hasLocalTracks:Z

.field protected mTargetAlbumID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "workerCallback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p4, "albumID"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 31
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->mTargetAlbumID:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->hasLocalTracks:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "MilkWorkerPlayAlbum"

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 55
    const-string v0, "MilkWorkerPlayAlbum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playStoreAlbums : getAlbumTracks api handled. rspType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    packed-switch p3, :pswitch_data_0

    .line 66
    const-string v0, "MilkWorkerPlayAlbum"

    const-string v1, "PLAYER Error"

    const-string v2, "not Played"

    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    instance-of v0, p4, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->mContext:Landroid/content/Context;

    const v1, 0x100050

    check-cast p4, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;

    .line 60
    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkstore/AlbumTrackList;->getSimpleTrackList()Ljava/util/List;

    move-result-object v2

    .line 59
    invoke-static {v0, v1, v3, v2, v4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    const-string v0, "MilkWorkerPlayAlbum"

    const-string/jumbo v1, "run : Milk service is empty"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    const-string v1, "MilkWorkerPlayAlbum"

    const-string v2, "NOT_DEFINE"

    const-string v3, "not Initialized"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;->mTargetAlbumID:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;I)I

    goto :goto_0
.end method
