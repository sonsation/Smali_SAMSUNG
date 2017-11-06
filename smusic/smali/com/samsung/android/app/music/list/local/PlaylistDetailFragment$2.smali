.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$2;
.super Ljava/lang/Object;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;
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
    .line 427
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemCpAttrs(I)I

    move-result v0

    const v1, 0x80002

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListItemMenuSelected(Landroid/view/View;IJ)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 430
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 431
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 432
    const-string/jumbo v3, "source_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 433
    .local v1, "columnIndex":I
    if-lez v1, :cond_0

    .line 434
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "sourceId":Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 436
    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "trackDetailPopup"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getScreenId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1544"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .end local v1    # "columnIndex":I
    .end local v2    # "sourceId":Ljava/lang/String;
    :cond_0
    return-void
.end method
