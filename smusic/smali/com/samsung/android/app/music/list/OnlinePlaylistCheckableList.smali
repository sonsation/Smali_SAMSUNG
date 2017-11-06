.class public Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "OnlinePlaylistCheckableList.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 1
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;->getCheckedItemValidAudioIds(Landroid/util/SparseBooleanArray;I)[J

    move-result-object v0

    return-object v0
.end method

.method protected getCheckedItemValidAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 8
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 29
    iget-object v6, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v6

    instance-of v6, v6, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    if-eqz v6, :cond_2

    .line 30
    iget-object v6, p0, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    .line 31
    .local v5, "trackAdapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 32
    .local v4, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v2, "checkedItemIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 34
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getAudioId(I)J

    move-result-wide v0

    .line 36
    .local v0, "audioId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v0    # "audioId":J
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->toPrimitive(Ljava/util/ArrayList;)[J

    move-result-object v6

    .line 43
    .end local v2    # "checkedItemIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v5    # "trackAdapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
    :goto_1
    return-object v6

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;->getCheckedItemIds(I)[J

    move-result-object v6

    goto :goto_1
.end method
