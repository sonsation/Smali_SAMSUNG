.class Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "AlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCheckableList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    .line 449
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 450
    return-void
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 5
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "album_id"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    const/4 v4, 0x0

    .line 457
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$SortOrderGroup;->ALBUM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/AlbumFragment;

    .line 458
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method
