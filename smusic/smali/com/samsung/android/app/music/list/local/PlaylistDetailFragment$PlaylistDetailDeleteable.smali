.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistDetailDeleteable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    return-void
.end method


# virtual methods
.method public deleteItems()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1113
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1114
    .local v6, "playlistId":J
    const-wide/16 v0, -0xb

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    .line 1115
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    .line 1116
    new-instance v0, Lcom/samsung/android/app/music/common/util/task/MilkSmartFavoriteTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getCheckedItemIds(I)[J

    move-result-object v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/util/task/MilkSmartFavoriteTask;-><init>(Landroid/app/Activity;[JZZZ)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 1117
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/task/MilkSmartFavoriteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1126
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v10

    .line 1127
    .local v10, "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    instance-of v0, v10, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v0, :cond_0

    .line 1128
    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .end local v10    # "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setDeleteRequested()V

    .line 1130
    :cond_0
    return-void

    .line 1119
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getCheckedItemIds(I)[J

    move-result-object v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;-><init>(Landroid/app/Activity;[JZZZ)V

    new-array v1, v3, [Ljava/lang/Void;

    .line 1120
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1123
    :cond_2
    new-instance v4, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getCheckedItemIds(I)[J

    move-result-object v8

    move v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;-><init>(Landroid/app/Activity;J[JZ)V

    new-array v0, v3, [Ljava/lang/Void;

    .line 1124
    invoke-virtual {v4, v0}, Lcom/samsung/android/app/music/common/util/task/RemovePlaylistItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
