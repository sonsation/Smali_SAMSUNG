.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "MilkWorkerAddToPlaylist.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerAddToPlaylist"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mFragmngr:Landroid/app/FragmentManager;

.field protected mTrack:Lcom/samsung/android/app/music/common/model/Track;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p4, "fragmngr"    # Landroid/app/FragmentManager;
    .param p5, "response"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;
    .param p6, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 28
    invoke-direct {p0, p2, p3, p5}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 29
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 30
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;->mFragmngr:Landroid/app/FragmentManager;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;->mActivity:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "MilkWorkerAddToPlaylist"

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->convertToSimpleTrack(Lcom/samsung/android/app/music/common/model/SimpleTrack;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v0

    .line 46
    .local v0, "playIdListPlaylist":[J
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v4}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->startActivity(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    .line 47
    const/4 v2, 0x1

    const-string v3, "MilkWorkerAddToPlaylist"

    invoke-virtual {p0, v2, v3, v4, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerAddToPlaylist;->onWorkerFinished(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
