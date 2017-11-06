.class public Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;
.super Ljava/lang/Object;
.source "ReorderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;,
        Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;,
        Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

.field private mDragFlags:I

.field private mFrom:I

.field private final mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

.field private final mMusicRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private final mReorderable:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

.field private mRestoreFastScrollEnabled:Z

.field private mSwipeFlags:I

.field private mTo:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V
    .locals 6
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .param p2, "adapter"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .param p3, "reorderable"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mFrom:I

    .line 34
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mTo:I

    .line 36
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mDragFlags:I

    .line 38
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mSwipeFlags:I

    .line 40
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mRestoreFastScrollEnabled:Z

    .line 46
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReorderManager() - recyclerView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mMusicRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 49
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mReorderable:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    .line 50
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$1;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->attachToRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 54
    .local v0, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mDragFlags:I

    .line 55
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mSwipeFlags:I

    .line 56
    instance-of v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-eqz v1, :cond_1

    .line 57
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->getSpanCount()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 58
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mDragFlags:I

    or-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mDragFlags:I

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_1
    instance-of v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 62
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mDragFlags:I

    or-int/lit8 v1, v1, 0x4

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mDragFlags:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mDragFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mSwipeFlags:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mFrom:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mFrom:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mTo:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mTo:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mReorderable:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mRestoreFastScrollEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mMusicRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method


# virtual methods
.method public startReorder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 68
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startReorder() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mItemTouchHelper:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->startDrag(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mMusicRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isFastScrollEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mRestoreFastScrollEnabled:Z

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->mMusicRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 72
    return-void
.end method
