.class public Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;
.super Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;
.source "MilkWorkerBanSong.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/MilkConstants$IMilkUIConst;


# static fields
.field private static final BAN_SONG_DELAY:J = 0x1388L

.field private static final LOG_TAG:Ljava/lang/String; = "MilkWorkerBanSong"


# instance fields
.field private mDialCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

.field private mPrevBanSongAction:Ljava/lang/Runnable;

.field private mStation:Lcom/samsung/android/app/music/common/model/Station;

.field private mTrack:Lcom/samsung/android/app/music/common/model/Track;

.field private mUndoButton:Landroid/widget/LinearLayout;

.field private mUndoToast:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Landroid/view/View;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Station;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .param p3, "dialCallback"    # Lcom/samsung/android/app/music/milk/radio/IDialFragment;
    .param p4, "undoToast"    # Landroid/view/View;
    .param p5, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p6, "station"    # Lcom/samsung/android/app/music/common/model/Station;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    .line 51
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    .line 52
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mDialCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    .line 55
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoToast:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoToast:Landroid/view/View;

    const v1, 0x7f120366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoButton:Landroid/widget/LinearLayout;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$1;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong$2;-><init>(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mPrevBanSongAction:Ljava/lang/Runnable;

    .line 96
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mPrevBanSongAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mPrevBanSongAction:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->removeBanSongList()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;ZLcom/samsung/android/app/music/common/model/Track;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->showUndoToast(ZLcom/samsung/android/app/music/common/model/Track;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->setEnablePrevBtn(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->banCurrentSong()V

    return-void
.end method

.method private addBanSongList()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getBanSongList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getBanSongList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Station;->addBanSongList(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method private banCurrentSong()V
    .locals 4

    .prologue
    .line 137
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v2, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->addBanSongList()V

    .line 139
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v2, :cond_4

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->isPersonalStation()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->isSmartStation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->getBanddStation()Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    move-result-object v0

    .line 143
    .local v0, "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v1, "updateStationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updatePersonalStations(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    .line 157
    .end local v0    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .end local v1    # "updateStationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;>;"
    :cond_1
    :goto_0
    return-void

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updateBlockedTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/common/model/Station;)I

    goto :goto_0

    .line 151
    :cond_3
    const-string v2, "MilkWorkerBanSong"

    const-string v3, "banCurrentSong : MilkService is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    const-string v2, "MilkWorkerBanSong"

    const-string v3, "banCurrentSong : mCallback is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBanddStation()Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 244
    .local v0, "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    new-instance v0, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;

    .end local v0    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    const-string/jumbo v1, "update"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;-><init>(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/Station;)V

    .line 245
    .restart local v0    # "updateStation":Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/mystation/UpdatedStation;->updateReqAddBansong(Ljava/lang/String;)V

    .line 247
    return-object v0
.end method

.method private notifyToPlaybackService()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method private removeBanSongList()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getBanSongList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getBanSongList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "MilkWorkerBanSong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeBanSongList : Remove from ban song list. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 174
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/model/Station;->removeBanSongList(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void
.end method

.method private setEnablePrevBtn(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mDialCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mDialCallback:Lcom/samsung/android/app/music/milk/radio/IDialFragment;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/radio/IDialFragment;->setEnablePrevBtn(Z)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string v0, "MilkWorkerBanSong"

    const-string v1, "onApiHandled : UI Callback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showUndoToast(ZLcom/samsung/android/app/music/common/model/Track;)V
    .locals 3
    .param p1, "vis"    # Z
    .param p2, "track"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 121
    if-nez p1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoToast:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 124
    .local v0, "a":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoToast:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoToast:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoToast:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 130
    .restart local v0    # "a":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoToast:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mUndoToast:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "MilkWorkerBanSong"

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
    const/16 v2, 0xd2

    const/4 v4, 0x1

    .line 183
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/uiworker/MilkRunnable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 185
    if-nez p4, :cond_1

    .line 186
    const-string v1, "MilkWorkerBanSong"

    const-string v2, "onServiceResult : object is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const/16 v1, 0xdb

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_0

    .line 194
    :cond_2
    if-nez p3, :cond_4

    .line 195
    if-eq p2, v2, :cond_3

    move-object v0, p4

    .line 196
    check-cast v0, Lcom/samsung/android/app/music/common/model/Station;

    .line 198
    .local v0, "blockedTracks":Lcom/samsung/android/app/music/common/model/Station;
    const-string v1, "MilkWorkerBanSong"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApiHandled : update station (id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to DB was successful."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .end local v0    # "blockedTracks":Lcom/samsung/android/app/music/common/model/Station;
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->notifyToPlaybackService()V

    .line 211
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v1, :cond_5

    .line 213
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->setEnablePrevBtn(Z)V

    goto :goto_0

    .line 203
    :cond_3
    const-string v1, "MilkWorkerBanSong"

    const-string v2, "onApiHandled : Personal Station Block Song Success"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 207
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mContext:Landroid/content/Context;

    const v2, 0x7f0a037d

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 215
    :cond_5
    const-string v1, "MilkWorkerBanSong"

    const-string v2, "onApiHandled : mCallback is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 105
    const-string v0, "MilkWorkerBanSong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mStation:Lcom/samsung/android/app/music/common/model/Station;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 106
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->addBanSongList()V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->setEnablePrevBtn(Z)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mCallback:Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mPrevBanSongAction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->mTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerBanSong;->showUndoToast(ZLcom/samsung/android/app/music/common/model/Track;)V

    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playNextRadio()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "MilkWorkerBanSong"

    const-string/jumbo v1, "run : mCallback is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
