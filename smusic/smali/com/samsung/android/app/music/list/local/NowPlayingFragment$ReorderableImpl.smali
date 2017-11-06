.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ReorderableImpl;
.super Ljava/lang/Object;
.source "NowPlayingFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReorderableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 439
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ReorderableImpl;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 440
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->reorder(II)V

    .line 443
    :cond_0
    return-void
.end method
