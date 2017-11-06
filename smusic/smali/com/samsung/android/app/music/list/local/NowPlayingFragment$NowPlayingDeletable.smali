.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;
.super Ljava/lang/Object;
.source "NowPlayingFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingDeletable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V
    .locals 0

    .prologue
    .line 778
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;

    .prologue
    .line 778
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    return-void
.end method


# virtual methods
.method public deleteItems()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 782
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    .line 783
    .local v6, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v8

    .line 784
    .local v8, "sp":Landroid/util/SparseBooleanArray;
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 785
    .local v7, "size":I
    const/4 v4, 0x0

    .line 786
    .local v4, "index":I
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getCheckedItemCount()I

    move-result v9

    new-array v2, v9, [I

    .line 787
    .local v2, "checkedPositions":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_1

    .line 788
    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 789
    invoke-virtual {v8, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 790
    .local v1, "checkedPosition":I
    invoke-virtual {v6, v1, v10, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZZ)V

    .line 791
    aput v1, v2, v4

    .line 792
    add-int/lit8 v4, v4, 0x1

    .line 787
    .end local v1    # "checkedPosition":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 796
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v9}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1600(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 797
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    if-eqz v0, :cond_2

    .line 798
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$NowPlayingDeletable;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$602(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)Z

    .line 799
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->removeItems([I)V

    .line 803
    :cond_2
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 804
    .local v5, "itemAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setDeleteRequested()V

    .line 805
    return-void
.end method
