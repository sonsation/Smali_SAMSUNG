.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;
.super Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlinePlaylistReorderable"
.end annotation


# instance fields
.field private mIsItemMoved:Z

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 1

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V

    .line 1179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;->mIsItemMoved:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;

    .prologue
    .line 1177
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1183
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;->moveItem(II)V

    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;->mIsItemMoved:Z

    .line 1185
    return-void
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 1204
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OnlinePlaylistReorderable onApiCallback reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 1211
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OnlinePlaylistReorderable onApiHandled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rspType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    return-void
.end method

.method public onListActionModeFinished(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1194
    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;->mIsItemMoved:Z

    if-eqz v3, :cond_0

    .line 1195
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "args_playlist_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1196
    .local v0, "playlistId":J
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 1197
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 1198
    .local v2, "playlistSourceId":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->access$1400(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->reorderPlaylistTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 1200
    .end local v0    # "playlistId":J
    .end local v2    # "playlistSourceId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onListActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;->mIsItemMoved:Z

    .line 1190
    return-void
.end method
