.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    .prologue
    .line 824
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;

    .prologue
    .line 824
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 7
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 827
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 828
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 833
    .local v1, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "args_playlist_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 834
    .local v2, "playlistId":J
    const-wide/16 v4, -0xb

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 835
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavorietListId(Landroid/content/Context;)J

    move-result-wide v2

    .line 836
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 839
    :cond_1
    const-string v4, "local"

    move v5, p1

    move v6, p2

    .line 840
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->moveItem(Landroid/content/Context;JLjava/lang/String;II)Z

    goto :goto_0
.end method
