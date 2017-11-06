.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "NowPlayingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCheckableList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 758
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .line 759
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 760
    return-void
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 6
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 765
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 766
    .local v3, "size":I
    new-array v0, p2, [J

    .line 767
    .local v0, "audioIds":[J
    const/4 v2, 0x0

    .line 768
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 769
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 770
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getAudioId(I)J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 771
    add-int/lit8 v2, v2, 0x1

    .line 768
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 774
    :cond_1
    return-object v0
.end method
