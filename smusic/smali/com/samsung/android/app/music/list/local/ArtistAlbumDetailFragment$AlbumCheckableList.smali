.class Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "ArtistAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCheckableList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    .line 299
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 300
    return-void
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 13
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 305
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-static {v8}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->access$500(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;)Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 306
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 307
    .local v7, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v0, "audioIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 309
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 310
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "keyword":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "album_id"

    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;->ALBUM:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v3

    .line 314
    .local v3, "ids":[J
    array-length v9, v3

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_0

    aget-wide v4, v3, v8

    .line 315
    .local v4, "id":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 308
    .end local v3    # "ids":[J
    .end local v4    # "id":J
    .end local v6    # "keyword":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 320
    new-array v1, v7, [J

    .line 321
    .local v1, "audioIds":[J
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_3

    .line 322
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v1, v2

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 326
    .end local v0    # "audioIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "audioIds":[J
    .end local v2    # "i":I
    .end local v7    # "size":I
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "album_id"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    const/4 v12, 0x0

    .line 328
    invoke-virtual {v11, v12}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v11

    iget-object v11, v11, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;->ALBUM:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    .line 329
    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    invoke-virtual {v8, p1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;->getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v8

    .line 326
    invoke-static {v9, v10, v11, v8}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v1

    :cond_3
    return-object v1
.end method
