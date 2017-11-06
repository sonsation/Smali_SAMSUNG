.class Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;
.source "AlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)V

    return-void
.end method


# virtual methods
.method public getBottomBarResId()I
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    return-object v0
.end method

.method public getSelectedTracks()Ljava/util/List;
    .locals 5
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
    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v2, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->access$500(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailAdapter;->getSelectedTracks()Ljava/util/List;

    move-result-object v0

    .line 302
    .local v0, "selectedTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 303
    .local v1, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;->access$600(Lcom/samsung/android/app/music/milk/store/album/AlbumDetailFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 304
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_0
    return-object v2
.end method

.method public sendSAAddEvent()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method public sendSADownloadEvent()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public sendSAPlayEvent()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method
