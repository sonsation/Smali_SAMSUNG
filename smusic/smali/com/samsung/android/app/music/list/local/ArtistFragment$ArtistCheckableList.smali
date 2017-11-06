.class Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "ArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtistCheckableList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    .line 303
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 304
    return-void
.end method


# virtual methods
.method protected getCheckedItemAudioIds(Landroid/util/SparseBooleanArray;I)[J
    .locals 5
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;
    .param p2, "checkedItemCount"    # I

    .prologue
    .line 310
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->access$200(Lcom/samsung/android/app/music/list/local/ArtistFragment;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 311
    const-string v0, "music_album_artist"

    .line 315
    .local v0, "selectionGroup":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    const/4 v4, 0x0

    .line 316
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "album COLLATE LOCALIZED , track"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;->this$0:Lcom/samsung/android/app/music/list/local/ArtistFragment;

    .line 317
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->getItemKeywords(Landroid/util/SparseBooleanArray;)[Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-static {v2, v0, v3, v1}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[J

    move-result-object v1

    return-object v1

    .line 313
    .end local v0    # "selectionGroup":Ljava/lang/String;
    :cond_0
    const-string v0, "artist_id"

    .restart local v0    # "selectionGroup":Ljava/lang/String;
    goto :goto_0
.end method
