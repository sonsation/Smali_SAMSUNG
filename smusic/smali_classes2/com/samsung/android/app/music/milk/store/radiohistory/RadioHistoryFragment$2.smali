.class Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;
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
    .line 218
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$200(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v7

    .line 225
    .local v7, "c":Landroid/database/Cursor;
    const-string/jumbo v0, "station_id"

    .line 226
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "stationId":Ljava/lang/String;
    const-string v0, "02"

    const-string/jumbo v1, "station_type"

    .line 228
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 229
    .local v6, "isMyStation":Z
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$300(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .line 230
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playStations(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 235
    .end local v3    # "stationId":Ljava/lang/String;
    .end local v6    # "isMyStation":Z
    .end local v7    # "c":Landroid/database/Cursor;
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$400(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .line 237
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$500(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    :goto_1
    invoke-virtual {v1, p2, v5}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->setItemChecked(IZ)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$2;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$600(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    move v5, v0

    .line 237
    goto :goto_1

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x7f120155
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
