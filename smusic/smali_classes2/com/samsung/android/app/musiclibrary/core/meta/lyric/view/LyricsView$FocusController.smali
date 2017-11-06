.class public abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
.super Ljava/lang/Object;
.source "LyricsView.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FocusController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private mFocusedPosition:I

.field private final mFocusedViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder",
            "<*>;"
        }
    .end annotation
.end field

.field private mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

.field private mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lyrics-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    .line 875
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->TAG:Ljava/lang/String;

    .line 874
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 887
    .local p1, "focusedViewBinder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;, "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    .line 888
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    .line 889
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 872
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->attach(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 872
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->detach(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    .prologue
    .line 872
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void
.end method

.method private attach(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 922
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 923
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .line 924
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 925
    return-void
.end method

.method private correctFocusPosition(ILcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)I
    .locals 8
    .param p1, "newPosition"    # I
    .param p2, "status"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    .prologue
    .line 979
    iget v3, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->lastDir:I

    if-nez v3, :cond_0

    move v2, p1

    .line 994
    .end local p1    # "newPosition":I
    .local v2, "newPosition":I
    :goto_0
    return v2

    .line 983
    .end local v2    # "newPosition":I
    .restart local p1    # "newPosition":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getCount()I

    move-result v1

    .line 985
    .local v1, "lineCount":I
    :goto_1
    if-ltz p1, :cond_1

    if-lt p1, v1, :cond_2

    :cond_1
    move v2, p1

    .line 986
    .end local p1    # "newPosition":I
    .restart local v2    # "newPosition":I
    goto :goto_0

    .line 988
    .end local v2    # "newPosition":I
    .restart local p1    # "newPosition":I
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v0

    .line 989
    .local v0, "line":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    move v2, p1

    .line 994
    .end local p1    # "newPosition":I
    .restart local v2    # "newPosition":I
    goto :goto_0

    .line 992
    .end local v2    # "newPosition":I
    .restart local p1    # "newPosition":I
    :cond_3
    iget v3, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->lastDir:I

    sub-int/2addr p1, v3

    .line 993
    goto :goto_1
.end method

.method private detach(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 932
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .line 933
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->clearFocus()V

    .line 934
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 935
    return-void
.end method

.method private dispatchFocusChanged(II)V
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 998
    if-ne p1, p2, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 1001
    :cond_0
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    .line 1002
    const/4 v0, 0x0

    .line 1003
    .local v0, "line":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v1, :cond_1

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1004
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v0

    .line 1006
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->onLineFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V

    .line 1007
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->notifyItemFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V

    goto :goto_0
.end method

.method private setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 0
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 918
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 919
    return-void
.end method


# virtual methods
.method protected abstract chooseFocusPosition(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;III)I
.end method

.method final clearFocus()V
    .locals 2

    .prologue
    .line 974
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->TAG:Ljava/lang/String;

    const-string v1, "clearFocus()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->dispatchFocusChanged(II)V

    .line 976
    return-void
.end method

.method final clearItemFocus()V
    .locals 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->notifyItemFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V

    .line 971
    return-void
.end method

.method final notifyItemFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
    .locals 1
    .param p1, "line"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .param p2, "oldPosition"    # I
    .param p3, "newPosition"    # I

    .prologue
    .line 965
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;->onFocusChanged(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V

    .line 966
    return-void
.end method

.method protected onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 928
    return-void
.end method

.method protected onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 938
    return-void
.end method

.method protected abstract onLineFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
.end method

.method public final onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)V
    .locals 6
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "status"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    .prologue
    .line 899
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-nez v4, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->isAutoScrolling()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 903
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->clearItemFocus()V

    goto :goto_0

    .line 909
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v0

    .line 910
    .local v0, "anchorHeight":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 911
    .local v1, "firstVisible":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->getChildCount()I

    move-result v4

    add-int v3, v1, v4

    .line 912
    .local v3, "lastVisible":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .line 913
    invoke-virtual {p0, v4, v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->chooseFocusPosition(Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;III)I

    move-result v2

    .line 914
    .local v2, "focusedPosition":I
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->correctFocusPosition(ILcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->requestFocus(I)Z

    goto :goto_0
.end method

.method public final requestFocus(I)Z
    .locals 8
    .param p1, "newPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 941
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-nez v4, :cond_1

    .line 961
    :cond_0
    :goto_0
    return v2

    .line 944
    :cond_1
    if-ltz p1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_3

    .line 945
    :cond_2
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestFocus() - ignore requestFocus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_3
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    if-ne v4, p1, :cond_4

    move v2, v3

    .line 949
    goto :goto_0

    .line 951
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v0

    .line 952
    .local v0, "line":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 956
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    .line 957
    .local v1, "oldPosition":I
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->dispatchFocusChanged(II)V

    move v2, v3

    .line 961
    goto :goto_0
.end method
