.class Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$2;
.super Ljava/lang/Object;
.source "LockPlayerNowPlayingListFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 229
    const-string v5, "UiList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onItemClick() | position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    move v4, p2

    .line 234
    .local v4, "queuePosition":I
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;

    .line 235
    .local v0, "adapter":Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 236
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    instance-of v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v5, :cond_0

    .line 237
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .end local v1    # "c":Landroid/database/Cursor;
    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getQueuePosition(I)I

    move-result v4

    .line 239
    :cond_0
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IZ)V

    .line 240
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;->getItemCpAttrs(I)I

    move-result v2

    .line 241
    .local v2, "cpAttrs":I
    const/4 v3, 0x0

    .line 242
    .local v3, "detail":Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 243
    const-string v3, "Local"

    .line 247
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment;->getScreenId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1081"

    invoke-virtual {v5, v6, v7, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v0    # "adapter":Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
    .end local v2    # "cpAttrs":I
    .end local v3    # "detail":Ljava/lang/String;
    .end local v4    # "queuePosition":I
    :cond_2
    return-void

    .line 244
    .restart local v0    # "adapter":Lcom/samsung/android/app/music/list/local/LockPlayerNowPlayingListFragment$LockPlayerNowPlayingListAdapter;
    .restart local v2    # "cpAttrs":I
    .restart local v3    # "detail":Ljava/lang/String;
    .restart local v4    # "queuePosition":I
    :cond_3
    const v5, 0x80002

    if-ne v2, v5, :cond_1

    .line 245
    const-string v3, "MOD"

    goto :goto_0
.end method
