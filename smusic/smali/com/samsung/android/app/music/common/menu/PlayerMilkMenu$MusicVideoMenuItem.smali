.class Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;
.super Lcom/samsung/android/app/music/common/menu/MusicMenuItem;
.source "PlayerMilkMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicVideoMenuItem"
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
    .line 237
    .local p2, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/MusicMenuItem;-><init>(I)V

    .line 238
    iput-object p2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;->mActivity:Ljava/lang/ref/WeakReference;

    .line 239
    iput-object p3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    .line 240
    return-void
.end method

.method private hasMusicVideo(Lcom/samsung/android/app/music/common/model/TrackDetail;)Z
    .locals 1
    .param p1, "trackDetail"    # Lcom/samsung/android/app/music/common/model/TrackDetail;

    .prologue
    .line 266
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getMvId()Ljava/lang/String;

    move-result-object v0

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


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 254
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;->getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v1

    .line 255
    .local v1, "trackDetail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 256
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 257
    sget-object v2, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    .line 258
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->getMvId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/TrackDetail;->isMvExplicit()Z

    move-result v4

    .line 257
    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;Z)Z

    .line 259
    const-string v2, "4325"

    .line 260
    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 262
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;->getTrackDetail()Lcom/samsung/android/app/music/common/model/TrackDetail;

    move-result-object v0

    .line 245
    .local v0, "trackDetail":Lcom/samsung/android/app/music/common/model/TrackDetail;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;->hasMusicVideo(Lcom/samsung/android/app/music/common/model/TrackDetail;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;->setItemVisible(Landroid/view/Menu;Z)V

    goto :goto_0
.end method
