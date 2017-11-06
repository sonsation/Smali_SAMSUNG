.class Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;
.source "ArtistDetailSongFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$1;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;)V

    return-void
.end method


# virtual methods
.method public getBottomBarResId()I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    return-object v0
.end method

.method public getSelectedTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;->access$500(Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongFragment;)Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/artist/ArtistDetailSongAdapter;->getSelectedTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendSAAddEvent()V
    .locals 3

    .prologue
    .line 362
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "934"

    const-string v2, "9368"

    .line 363
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public sendSADownloadEvent()V
    .locals 3

    .prologue
    .line 369
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "934"

    const-string v2, "9369"

    .line 370
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public sendSAPlayEvent()V
    .locals 3

    .prologue
    .line 355
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "934"

    const-string v2, "9367"

    .line 356
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method
