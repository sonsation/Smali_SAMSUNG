.class public abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
.super Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;
.source "LyricsView.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HighlightController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCROLL_SPEED_FACTOR:F = 1.0f

.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mHighlightPosition:I

.field private final mHighlightViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder",
            "<*>;"
        }
    .end annotation
.end field

.field private mLockAutoScroll:Z

.field private mLockAutoScrollRunnable:Ljava/lang/Runnable;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mMilliSecondsPerPixel:F

.field private mRestorePositionEnabled:Z

.field private final mScrollRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

.field private final mScrollRequestQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lyrics-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .line 625
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->TAG:Ljava/lang/String;

    .line 624
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "highlightViewBinder":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;, "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 629
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    .line 633
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    .line 635
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

    .line 642
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightPosition:I

    .line 648
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScrollRunnable:Ljava/lang/Runnable;

    .line 663
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    .line 665
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMilliSecondsPerPixel:F

    .line 666
    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .prologue
    .line 621
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightPosition:I

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 621
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mRestorePositionEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;IIF)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F

    .prologue
    .line 621
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->highlightLine(IIF)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
    .param p1, "x1"    # I

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->scrollToHighlightPositionInternal(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
    .param p1, "x1"    # Z

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->setRestorePositionEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .prologue
    .line 621
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->attach(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 621
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->detach(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    return-void
.end method

.method private attach(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 711
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 712
    return-void
.end method

.method private detach(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 719
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 720
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 721
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 722
    return-void
.end method

.method private highlightLine(IIF)V
    .locals 5
    .param p1, "newPosition"    # I
    .param p2, "scrollAction"    # I
    .param p3, "scrollSpeedFactor"    # F

    .prologue
    .line 738
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 746
    .local v2, "scrollRequestSize":I
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightPosition:I

    .line 747
    .local v1, "oldPosition":I
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightPosition:I

    .line 748
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mHighlightViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    invoke-interface {v3, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;->onHighlightChanged(II)V

    .line 750
    if-nez v2, :cond_1

    .line 751
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    .line 752
    invoke-static {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->obtain(IIF)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->scrollToHighlightPositionInternal(I)V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    .line 760
    .local v0, "lastRequest":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;
    iget v3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->action:I

    if-lt p2, v3, :cond_2

    .line 761
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->position:I

    .line 762
    iput p3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->speedFactor:F

    .line 763
    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->action:I

    .line 765
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 767
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->clearRequest()V

    .line 768
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->scrollToHighlightPositionInternal(I)V

    goto :goto_0

    .line 771
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    .line 772
    invoke-static {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->obtain(IIF)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private requestReHighlightLine(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 732
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 734
    return-void
.end method

.method private scrollToHighlightPositionInternal(I)V
    .locals 1
    .param p1, "newPosition"    # I

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    if-eqz v0, :cond_0

    .line 781
    :goto_0
    return-void

    .line 780
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->scrollToHighlightPosition(I)V

    goto :goto_0
.end method

.method private setRestorePositionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 728
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mRestorePositionEnabled:Z

    .line 729
    return-void
.end method


# virtual methods
.method protected final calculateTimeForScrolling(I)I
    .locals 4
    .param p1, "dx"    # I

    .prologue
    .line 698
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;

    .line 699
    .local v0, "scrollRequest":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 700
    .local v1, "scrollSpeedFactor":F
    if-eqz v0, :cond_1

    .line 701
    iget v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->action:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    .line 702
    const/4 v2, 0x1

    .line 706
    :goto_0
    return v2

    .line 704
    :cond_0
    iget v1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequest;->speedFactor:F

    .line 706
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mMilliSecondsPerPixel:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v1

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_0
.end method

.method protected abstract delayScrollLock()J
.end method

.method protected onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    .line 716
    return-void
.end method

.method protected onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 725
    return-void
.end method

.method public onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "status"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    .prologue
    .line 681
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollStatus:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    .line 682
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->isAutoScrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 685
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mLockAutoScroll:Z

    .line 686
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->delayScrollLock()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->requestReHighlightLine(J)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 692
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;->onStop()V

    .line 693
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->mScrollRequestConsumer:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$ScrollRequestConsumer;->postRequestConsume()V

    .line 694
    return-void
.end method

.method protected abstract scrollToHighlightPosition(I)V
.end method

.method final stopSelf()V
    .locals 0

    .prologue
    .line 669
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearSmoothScroller;->stop()V

    .line 670
    return-void
.end method
