.class Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;
.super Ljava/lang/Object;
.source "AddToShortcutFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 221
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;

    .line 223
    .local v0, "adapter":Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 225
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "keyword":Ljava/lang/String;
    const/4 v3, -0x1

    .line 228
    .local v3, "listType":I
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->getSubCategory(I)I

    move-result v4

    .line 230
    .local v4, "subCategoryType":I
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-static {v6}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->access$000(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 231
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$AddToShortcutAdapter;->getText2(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 232
    .local v2, "libraryListType":I
    const v6, 0x10004

    if-ne v2, v6, :cond_2

    .line 233
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    .line 234
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->isSyncPlaylist(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 235
    const v3, 0x100050

    .line 239
    :goto_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->isDefaultPlayList(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 245
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-static {v6, v2, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->access$100(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;ILjava/lang/String;)V

    .line 261
    .end local v2    # "libraryListType":I
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    .line 262
    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v1, v5, v4}, Lcom/samsung/android/app/music/common/util/ShortCutUtils;->installShortcutIcon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V

    .line 264
    return-void

    .line 237
    .restart local v2    # "libraryListType":I
    :cond_1
    const v3, 0x100004

    goto :goto_0

    .line 243
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedTrackListType(I)I

    move-result v3

    goto :goto_1

    .line 247
    .end local v2    # "libraryListType":I
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->isSyncPlaylist(Landroid/content/Context;J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 248
    const v3, 0x100050

    .line 252
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;

    invoke-static {v6, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->access$200(Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;Ljava/lang/String;)V

    goto :goto_2

    .line 250
    :cond_4
    const v3, 0x100004

    goto :goto_3
.end method
