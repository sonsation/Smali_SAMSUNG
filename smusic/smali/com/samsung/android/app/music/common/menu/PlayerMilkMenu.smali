.class final Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;
.super Ljava/lang/Object;
.source "PlayerMilkMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;,
        Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$DownloadMenuItem;,
        Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$ShareMenuItem;,
        Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;,
        Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;,
        Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;
    }
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

.field private mCpAttrs:I

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;

.field private final mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mCpAttrs:I

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mActivity:Ljava/lang/ref/WeakReference;

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/samsung/android/app/music/common/player/SourceIdGetter;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;

    .line 50
    check-cast p1, Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    .line 51
    return-void
.end method

.method private addMenuItem(Landroid/util/SparseArray;II)V
    .locals 5
    .param p2, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "cpAttrs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "items":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;>;"
    const/4 v1, 0x0

    .line 89
    .local v1, "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    const v2, 0x80002

    if-eq p3, v2, :cond_1

    .line 90
    new-instance v1, Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;

    .end local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    invoke-direct {v1, p2}, Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;-><init>(I)V

    .line 123
    .restart local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :cond_0
    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    return-void

    .line 92
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 120
    new-instance v1, Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;

    .end local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    invoke-direct {v1, p2}, Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;-><init>(I)V

    .restart local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 94
    :sswitch_0
    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;

    .end local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mActivity:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-direct {v1, p2, v2, v3}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithTrackMenuItem;-><init>(ILjava/lang/ref/WeakReference;Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;)V

    .line 96
    .restart local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 98
    :sswitch_1
    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;

    .end local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mActivity:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-direct {v1, p2, v2, v3}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$CreateMyStationWithArtistMenuItem;-><init>(ILjava/lang/ref/WeakReference;Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;)V

    .line 100
    .restart local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 102
    :sswitch_2
    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;

    .end local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mActivity:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-direct {v1, p2, v2, v3}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MusicVideoMenuItem;-><init>(ILjava/lang/ref/WeakReference;Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;)V

    .line 103
    .restart local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 105
    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 106
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$ShareMenuItem;

    .end local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/MilkShareableImpl;

    .line 108
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/MilkShareableImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/SourceIdGetter;)V

    invoke-direct {v1, p2, v2}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$ShareMenuItem;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .restart local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 113
    .end local v0    # "activity":Landroid/app/Activity;
    :sswitch_4
    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$DownloadMenuItem;

    .end local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    new-instance v2, Lcom/samsung/android/app/music/common/player/fullplayer/MilkDownloadableImpl;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mActivity:Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mSourceIdGetter:Lcom/samsung/android/app/music/common/player/SourceIdGetter;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/common/player/fullplayer/MilkDownloadableImpl;-><init>(Ljava/lang/ref/WeakReference;Lcom/samsung/android/app/music/common/player/SourceIdGetter;)V

    invoke-direct {v1, p2, v2}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$DownloadMenuItem;-><init>(ILcom/samsung/android/app/music/download/Downloadable;)V

    .line 115
    .restart local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 117
    :sswitch_5
    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;

    .end local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mActivity:Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mTrackDetailGetter:Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;

    invoke-direct {v1, p2, v2, v3}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu$MilkGoArtistMenuItem;-><init>(ILjava/lang/ref/WeakReference;Lcom/samsung/android/app/music/milk/IMilkTrackDetailGetter;)V

    .line 118
    .restart local v1    # "item":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x7f120461 -> :sswitch_4
        0x7f1205b7 -> :sswitch_0
        0x7f1205b8 -> :sswitch_1
        0x7f1205b9 -> :sswitch_3
        0x7f1205bd -> :sswitch_5
        0x7f1205be -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 80
    .local v0, "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 82
    const/4 v1, 0x1

    .line 84
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 60
    .local v2, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v4, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 61
    .local v0, "cpAttrs":I
    iget v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mCpAttrs:I

    if-eq v4, v0, :cond_0

    .line 62
    iput v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mCpAttrs:I

    .line 63
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    const v5, 0x7f1205b7

    invoke-direct {p0, v4, v5, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->addMenuItem(Landroid/util/SparseArray;II)V

    .line 64
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    const v5, 0x7f1205b8

    invoke-direct {p0, v4, v5, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->addMenuItem(Landroid/util/SparseArray;II)V

    .line 65
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    const v5, 0x7f1205be

    invoke-direct {p0, v4, v5, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->addMenuItem(Landroid/util/SparseArray;II)V

    .line 66
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    const v5, 0x7f1205b9

    invoke-direct {p0, v4, v5, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->addMenuItem(Landroid/util/SparseArray;II)V

    .line 67
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    const v5, 0x7f120461

    invoke-direct {p0, v4, v5, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->addMenuItem(Landroid/util/SparseArray;II)V

    .line 68
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    const v5, 0x7f1205bd

    invoke-direct {p0, v4, v5, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->addMenuItem(Landroid/util/SparseArray;II)V

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 72
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 73
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/PlayerMilkMenu;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v4, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method
