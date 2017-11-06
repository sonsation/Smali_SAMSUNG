.class Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "PlayerMilkMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateMyStationWithTrackMenuItem"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponse:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

.field private final mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;


# direct methods
.method constructor <init>(ILjava/lang/ref/WeakReference;Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;)V
    .locals 1
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "getter"    # Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 131
    new-instance v0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem$1;-><init>(Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->mResponse:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    .line 151
    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->mActivity:Ljava/lang/ref/WeakReference;

    .line 152
    iput-object p3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->mActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;->getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v10

    .line 169
    .local v10, "trackDetail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Activity;

    .line 170
    .local v9, "activity":Landroid/app/Activity;
    if-eqz v9, :cond_0

    .line 171
    invoke-static {v9}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->mResponse:Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;

    .line 172
    invoke-virtual {v9}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 173
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getTrackTitle()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isExplicit()Z

    move-result v8

    .line 172
    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByTrack(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZZZ)V

    .line 175
    const-string v0, "4321"

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 178
    :cond_0
    return v6
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;->getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    .line 158
    .local v0, "trackDetail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isCelebTrack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isSongSeedUsable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    goto :goto_0
.end method
