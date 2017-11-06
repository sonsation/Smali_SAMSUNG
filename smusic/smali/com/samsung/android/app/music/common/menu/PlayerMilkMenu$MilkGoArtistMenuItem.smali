.class Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "PlayerMilkMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MilkGoArtistMenuItem"
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
    .line 322
    .local p2, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 323
    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;->mActivity:Ljava/lang/ref/WeakReference;

    .line 324
    iput-object p3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    .line 325
    return-void
.end method

.method private getArtistListSize(Lcom/samsung/android/app/music/common/model/TrackDetail;)I
    .locals 1
    .param p1, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 350
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 339
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;->getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v1

    .line 340
    .local v1, "trackDetail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 341
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 342
    const-string v2, "4324"

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 344
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v3

    .line 343
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveArtist(Landroid/content/Context;Landroid/app/FragmentManager;Ljava/util/List;)Z

    move-result v2

    .line 346
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;->getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    .line 330
    .local v0, "trackDetail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;->getArtistListSize(Lcom/samsung/android/app/music/common/model/TrackDetail;)I

    move-result v1

    if-lez v1, :cond_0

    .line 331
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    goto :goto_0
.end method
