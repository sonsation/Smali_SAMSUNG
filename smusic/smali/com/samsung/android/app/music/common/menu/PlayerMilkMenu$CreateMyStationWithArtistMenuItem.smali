.class Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "PlayerMilkMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateMyStationWithArtistMenuItem"
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

.field private final mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;


# direct methods
.method constructor <init>(ILjava/lang/ref/WeakReference;Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;)V
    .locals 0
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
    .line 189
    .local p2, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 190
    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;->mActivity:Ljava/lang/ref/WeakReference;

    .line 191
    iput-object p3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    .line 192
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;->getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v7

    .line 208
    .local v7, "trackDetail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 209
    .local v6, "activity":Landroid/app/Activity;
    if-eqz v6, :cond_0

    .line 210
    invoke-static {v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem$1;

    invoke-direct {v1, p0, v6}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem$1;-><init>(Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;Landroid/app/Activity;)V

    .line 222
    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->createStationByArtist(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Landroid/app/FragmentManager;Ljava/util/ArrayList;ZZ)V

    .line 223
    const-string v0, "4322"

    invoke-static {v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 226
    :cond_0
    return v4
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;->getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    .line 197
    .local v0, "trackDetail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isCelebTrack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/TrackDetail;->hasAvailableArtist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    goto :goto_0
.end method
