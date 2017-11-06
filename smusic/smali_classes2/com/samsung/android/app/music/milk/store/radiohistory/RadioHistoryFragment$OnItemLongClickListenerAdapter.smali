.class Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;
.super Ljava/lang/Object;
.source "RadioHistoryFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnItemLongClickListenerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/view/View;IJ)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 413
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$1200(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    .line 415
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$1300(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 414
    :cond_0
    invoke-virtual {v2, p2, v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->setItemChecked(IZ)V

    .line 416
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->startActionMode()V

    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$OnItemLongClickListenerAdapter;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->access$1400(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryAdapter;->notifyDataSetChanged()V

    .line 420
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method
