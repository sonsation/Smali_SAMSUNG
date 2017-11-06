.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "MilkWorkerPlayTrackList.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerPlayTrackList"


# instance fields
.field private mIsSingleLocalTrack:Z

.field protected mTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;",
            "Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 19
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;->mIsSingleLocalTrack:Z

    .line 23
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;->mTracks:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;->mTracks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;->mTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;->mTracks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isLocalTrack()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;->mIsSingleLocalTrack:Z

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;->mIsSingleLocalTrack:Z

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "MilkWorkerPlayTrackList"

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;->mContext:Landroid/content/Context;

    const v1, 0x100050

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayTrackList;->mTracks:Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 47
    return-void
.end method
