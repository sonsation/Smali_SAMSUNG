.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ReorderableImpl;
.super Ljava/lang/Object;
.source "MilkQueueFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0

    .prologue
    .line 937
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 940
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 941
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->reorder(II)V

    .line 944
    :cond_0
    return-void
.end method
