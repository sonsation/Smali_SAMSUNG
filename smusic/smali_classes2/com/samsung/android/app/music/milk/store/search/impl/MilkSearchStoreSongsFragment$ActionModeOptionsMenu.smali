.class Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;
.source "MilkSearchStoreSongsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$1;

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)V

    return-void
.end method


# virtual methods
.method public getBottomBarResId()I
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    return-object v0
.end method

.method public getSelectedTracks()Ljava/util/List;
    .locals 2
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
    .line 615
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$2300(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;

    .line 616
    .local v0, "adpater":Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreTrackAdapter;->getSelectedTracks()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
