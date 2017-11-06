.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;
.super Ljava/lang/Object;
.source "NowPlayingFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 392
    const-string v1, "UiList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onItemClick() | position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getValidItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 396
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1200(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1200(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getListType()I

    move-result v2

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAlbumUri(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->crossFadeTo(Landroid/net/Uri;)V

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getQueuePosition(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IZ)V

    .line 401
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1081"

    const-string v4, "Local"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_1
    return-void
.end method
