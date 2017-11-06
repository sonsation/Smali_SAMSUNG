.class Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;
.super Ljava/lang/Object;
.source "RadioHistoryFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

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
    .line 193
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

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 198
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-virtual {v3, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 199
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 200
    const-string/jumbo v3, "track_id"

    .line 201
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "sourceId":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;

    move-result-object v2

    .line 203
    .local v2, "trackDetailPopup":Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;
    const-string v3, "906"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->setLogScreen(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "RadioHistoryFragment"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 206
    .end local v1    # "sourceId":Ljava/lang/String;
    .end local v2    # "trackDetailPopup":Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "906"

    const-string v5, "9093"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0    # "c":Landroid/database/Cursor;
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v3, p1, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$100(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Landroid/view/View;I)Landroid/widget/PopupMenu;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 211
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "906"

    const-string v5, "9092"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x7f120158 -> :sswitch_0
        0x7f1204c8 -> :sswitch_1
    .end sparse-switch
.end method
