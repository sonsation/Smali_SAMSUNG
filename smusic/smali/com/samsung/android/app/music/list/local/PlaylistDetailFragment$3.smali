.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 515
    const-string v3, "UiList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onItemClick() | position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->isLocalItem(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->isStreamingItem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 519
    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->access$600(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v3, :cond_1

    .line 520
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 521
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v3, p2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V

    .line 524
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    .line 525
    .local v2, "playlistTrackAdapter":Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;
    invoke-virtual {v2, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemCpAttrs(I)I

    move-result v0

    .line 526
    .local v0, "cpAttrs":I
    const/4 v1, 0x0

    .line 527
    .local v1, "detail":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->isLocal(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 528
    const-string v1, "Local"

    .line 532
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1081"

    invoke-virtual {v3, v4, v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void

    .line 529
    :cond_3
    const v3, 0x80002

    if-ne v0, v3, :cond_2

    .line 530
    const-string v1, "MOD"

    goto :goto_0
.end method
