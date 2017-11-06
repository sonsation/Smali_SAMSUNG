.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingDeletable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;

    .prologue
    .line 907
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    return-void
.end method


# virtual methods
.method public deleteItems()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 911
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    .line 912
    .local v6, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v8

    .line 913
    .local v8, "sp":Landroid/util/SparseBooleanArray;
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 914
    .local v7, "size":I
    const/4 v4, 0x0

    .line 915
    .local v4, "index":I
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getCheckedItemCount()I

    move-result v9

    new-array v2, v9, [I

    .line 916
    .local v2, "checkedPositions":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_1

    .line 917
    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 918
    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 919
    .local v1, "checkedPosition":I
    invoke-virtual {v6, v1, v10, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZZ)V

    .line 920
    aput v1, v2, v4

    .line 921
    add-int/lit8 v4, v4, 0x1

    .line 916
    .end local v1    # "checkedPosition":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 925
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 926
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    if-eqz v0, :cond_2

    .line 927
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$802(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)Z

    .line 928
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->removeItems([I)V

    .line 932
    :cond_2
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 933
    .local v5, "itemAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setDeleteRequested()V

    .line 934
    return-void
.end method
