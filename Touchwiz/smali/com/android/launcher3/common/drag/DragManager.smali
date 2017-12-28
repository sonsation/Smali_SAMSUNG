.class public Lcom/android/launcher3/common/drag/DragManager;
.super Ljava/lang/Object;
.source "DragManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;,
        Lcom/android/launcher3/common/drag/DragManager$DragListener;
    }
.end annotation


# static fields
.field private static final DELAY_TO_MOVE_EXTRA_ITEM:I = 0xa

.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_MOVE:I = 0x0

.field private static final MOVE_STAGE_TIME:I = 0x3e8

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field public static final RESCROLL_DELAY:I

.field public static final RESET_LAST_TOUCHUP_TIME:J = -0x1L

.field public static final SCROLL_DELAY:I = 0x1f4

.field public static final SCROLL_LEFT:I = 0x0

.field public static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field public static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragManager"


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

.field private mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

.field private mDragging:Z

.field private mDropAnimationMaxDuration:I

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsInScrollArea:Z

.field private mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

.field private mLastTouch:[I

.field private mLastTouchUpTime:J

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DragManager$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mMoveTarget:Landroid/view/View;

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mOutlineColor:I

.field private mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    add-int/lit16 v0, v0, 0x96

    sput v0, Lcom/android/launcher3/common/drag/DragManager;->RESCROLL_DELAY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 5
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mRectTemp:Landroid/graphics/Rect;

    .line 100
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    .line 145
    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    .line 146
    new-instance v0, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;-><init>(Lcom/android/launcher3/common/drag/DragManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    .line 152
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    .line 153
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    .line 154
    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    .line 156
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    .line 166
    iput-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .line 168
    iput-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 198
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropAnimationMaxDuration:I

    .line 202
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 206
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 209
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/common/drag/DragScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/common/drag/DragManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/common/drag/DragManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/drag/DragManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/drag/DragManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/drag/DragManager;->checkScrollState(II)V

    return-void
.end method

.method private checkScrollState(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 837
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    instance-of v6, v6, Lcom/android/launcher3/common/drag/DragScroller;

    if-nez v6, :cond_1

    .line 838
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 842
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v3

    .line 843
    .local v3, "slop":I
    iget v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    if-ge v6, v3, :cond_2

    sget v1, Lcom/android/launcher3/common/drag/DragManager;->RESCROLL_DELAY:I

    .line 844
    .local v1, "delay":I
    :goto_1
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_3

    move v2, v4

    .line 845
    .local v2, "forwardDirection":I
    :goto_2
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_4

    move v0, v5

    .line 847
    .local v0, "backwardsDirection":I
    :goto_3
    iget v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    if-ge p1, v6, :cond_5

    .line 848
    iput-boolean v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mIsInScrollArea:Z

    .line 849
    iget v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    if-nez v5, :cond_0

    .line 850
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v5, p1, p2, v2}, Lcom/android/launcher3/common/drag/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 851
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->setDirection(I)V

    .line 852
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 853
    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    goto :goto_0

    .line 843
    .end local v0    # "backwardsDirection":I
    .end local v1    # "delay":I
    .end local v2    # "forwardDirection":I
    :cond_2
    const/16 v1, 0x1f4

    goto :goto_1

    .restart local v1    # "delay":I
    :cond_3
    move v2, v5

    .line 844
    goto :goto_2

    .restart local v2    # "forwardDirection":I
    :cond_4
    move v0, v4

    .line 845
    goto :goto_3

    .line 856
    .restart local v0    # "backwardsDirection":I
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le p1, v6, :cond_6

    .line 857
    iput-boolean v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mIsInScrollArea:Z

    .line 858
    iget v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    if-nez v5, :cond_0

    .line 859
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v5, p1, p2, v0}, Lcom/android/launcher3/common/drag/DragScroller;->onEnterScrollArea(III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 860
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->setDirection(I)V

    .line 861
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    int-to-long v8, v1

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    goto :goto_0

    .line 866
    :cond_6
    iput-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mIsInScrollArea:Z

    .line 867
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    goto :goto_0
.end method

.method private checkTouchMove(Lcom/android/launcher3/common/drag/DropTarget;)V
    .locals 3
    .param p1, "dropTarget"    # Lcom/android/launcher3/common/drag/DropTarget;

    .prologue
    const/4 v2, 0x1

    .line 820
    if-eqz p1, :cond_3

    .line 821
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eq v0, p1, :cond_1

    .line 822
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {p1, v0, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget;->onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 833
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    .line 834
    return-void

    .line 829
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v0, :cond_2

    .line 830
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_0
.end method

.method private clearScrollRunnable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 743
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 744
    iget v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    if-ne v0, v2, :cond_0

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    .line 746
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;->setDirection(I)V

    .line 747
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragScroller;->onExitScrollArea()Z

    .line 749
    :cond_0
    return-void
.end method

.method private countItemsBelowThanDraggedItemRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)I
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "count"    # I

    .prologue
    .line 1215
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1218
    add-int/lit8 p2, p2, 0x1

    .line 1220
    :cond_0
    return p2
.end method

.method private createQuickOptionView(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 6
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v5, 0x0

    .line 1111
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v3, :cond_0

    .line 1112
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/DragLayer;->removeViewInLayout(Landroid/view/View;)V

    .line 1113
    iput-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .line 1116
    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v3, p1}, Lcom/android/launcher3/common/drag/DragSource;->getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I

    move-result v2

    .line 1117
    .local v2, "optionFlag":I
    if-nez v2, :cond_2

    .line 1131
    :cond_1
    :goto_0
    return-void

    .line 1121
    :cond_2
    const/4 v0, 0x0

    .line 1122
    .local v0, "deepShortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportDeepShortcut()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_3

    .line 1123
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v1

    .line 1124
    .local v1, "manager":Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getShortcutIdsForItem(Lcom/android/launcher3/common/base/item/IconInfo;)Ljava/util/List;

    move-result-object v0

    .line 1127
    .end local v1    # "manager":Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f04004c

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iput-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .line 1128
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v3, :cond_1

    .line 1129
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v3, p1, v2, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->show(Lcom/android/launcher3/common/drag/DropTarget$DragObject;ILjava/util/List;)V

    goto :goto_0
.end method

.method private dragOutOfQuickOptionBoundary(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 1145
    iget v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1146
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drop(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 924
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v9

    if-eqz v9, :cond_0

    float-to-int v9, p1

    float-to-int v10, p2

    invoke-direct {p0, v9, v10}, Lcom/android/launcher3/common/drag/DragManager;->dragOutOfQuickOptionBoundary(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 927
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 928
    .local v2, "coordinates":[I
    float-to-int v9, p1

    float-to-int v10, p2

    invoke-direct {p0, v9, v10, v2, v7}, Lcom/android/launcher3/common/drag/DragManager;->findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v4

    .line 930
    .local v4, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v10, v2, v8

    iput v10, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    .line 931
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v10, v2, v7

    iput v10, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "accepted":Z
    if-eqz v4, :cond_7

    .line 934
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v7, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    .line 935
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v4, v9, v8}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 936
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v4, v9}, Lcom/android/launcher3/common/drag/DropTarget;->acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 937
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v4, v9}, Lcom/android/launcher3/common/drag/DropTarget;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 938
    const/4 v0, 0x1

    .line 941
    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v9, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DropTarget;->getTargetView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v0, :cond_4

    iget-object v12, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v12, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v12, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    if-eqz v12, :cond_4

    :cond_2
    :goto_0
    invoke-interface {v9, v10, v11, v7}, Lcom/android/launcher3/common/drag/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 944
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    .line 945
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/drag/DragSource;

    .line 946
    .local v5, "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v6, "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v1, "cancelledExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v8, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v8, v8, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 950
    .local v3, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v9, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 951
    if-eqz v0, :cond_5

    iget-boolean v9, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v9, :cond_5

    .line 952
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1    # "cancelledExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v3    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v5    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    .end local v6    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_4
    move v7, v8

    .line 941
    goto :goto_0

    .line 954
    .restart local v1    # "cancelledExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v3    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .restart local v5    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    .restart local v6    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 959
    .end local v3    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_6
    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DropTarget;->getTargetView()Landroid/view/View;

    move-result-object v8

    invoke-interface {v5, v8, v6, v1}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 965
    .end local v1    # "cancelledExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v5    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    .end local v6    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_7
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 966
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v7, :cond_8

    .line 967
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v8

    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v7, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    .line 970
    :cond_8
    return-void
.end method

.method private endDrag()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 586
    iget-boolean v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v7, :cond_4

    .line 587
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    .line 588
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    .line 589
    const/4 v5, 0x0

    .line 590
    .local v5, "isDeferred":Z
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v7, :cond_3

    .line 591
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v5, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 592
    if-nez v5, :cond_0

    .line 593
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    .line 595
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 596
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 597
    .local v3, "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v8, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    goto :goto_0

    .line 602
    .end local v3    # "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 603
    .local v1, "deferredDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v2, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 604
    .local v2, "deferredDragView":Lcom/android/launcher3/common/drag/DragView;
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 605
    .local v0, "deferredDragInfo":Ljava/lang/Object;
    new-instance v7, Lcom/android/launcher3/common/drag/DragManager$3;

    invoke-direct {v7, p0, v0, v2, v1}, Lcom/android/launcher3/common/drag/DragManager$3;-><init>(Lcom/android/launcher3/common/drag/DragManager;Ljava/lang/Object;Lcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    iget v8, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropAnimationMaxDuration:I

    int-to-long v8, v8

    invoke-virtual {v2, v7, v8, v9}, Lcom/android/launcher3/common/drag/DragView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 623
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 624
    .restart local v3    # "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v4, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 625
    .local v4, "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    iget-boolean v8, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v8, :cond_1

    .line 626
    new-instance v8, Lcom/android/launcher3/common/drag/DragManager$4;

    invoke-direct {v8, p0, v4}, Lcom/android/launcher3/common/drag/DragManager$4;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragView;)V

    iget v9, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropAnimationMaxDuration:I

    int-to-long v10, v9

    invoke-virtual {v4, v8, v10, v11}, Lcom/android/launcher3/common/drag/DragView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 633
    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    goto :goto_1

    .line 638
    .end local v0    # "deferredDragInfo":Ljava/lang/Object;
    .end local v1    # "deferredDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v2    # "deferredDragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v3    # "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v4    # "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v12, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 639
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v12, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 640
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v12, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    .line 644
    :cond_3
    if-nez v5, :cond_4

    .line 645
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .line 646
    .local v6, "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    invoke-interface {v6}, Lcom/android/launcher3/common/drag/DragManager$DragListener;->onDragEnd()Z

    goto :goto_2

    .line 650
    .end local v5    # "isDeferred":Z
    .end local v6    # "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    :cond_4
    return-void
.end method

.method private findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dropCoordinates"    # [I
    .param p4, "isDrop"    # Z

    .prologue
    .line 973
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mRectTemp:Landroid/graphics/Rect;

    .line 975
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    .line 976
    .local v1, "dropTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 977
    .local v0, "count":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 978
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/drag/DropTarget;

    .line 979
    .local v4, "target":Lcom/android/launcher3/common/drag/DropTarget;
    invoke-interface {v4, p4}, Lcom/android/launcher3/common/drag/DropTarget;->isDropEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 977
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 983
    :cond_1
    invoke-interface {v4, v3}, Lcom/android/launcher3/common/drag/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 985
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput p1, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    .line 986
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput p2, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    .line 987
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 988
    const/4 v5, 0x0

    aput p1, p3, v5

    .line 989
    const/4 v5, 0x1

    aput p2, p3, v5

    .line 990
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/launcher3/common/drag/DropTarget;->getTargetView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, p3}, Lcom/android/launcher3/common/view/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    .line 995
    .end local v4    # "target":Lcom/android/launcher3/common/drag/DropTarget;
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 671
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 672
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 673
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mTmpPoint:[I

    return-object v0
.end method

.method private getOriginDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1134
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    .line 1136
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->getChildViewAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 1141
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleMoveEvent(II)V
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 752
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/drag/DragManager;->dragOutOfQuickOptionBoundary(II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 753
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v13, :cond_0

    .line 754
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v13}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 756
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionViewWithoutSALogging()V

    .line 759
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v13, v13, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v13, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 760
    invoke-virtual {v13}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v13, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v14, 0x6

    if-eq v13, v14, :cond_3

    .line 762
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v13}, Lcom/android/launcher3/common/drag/DragView;->animateUp()V

    .line 766
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher3/common/drag/DragView;->move(II)V

    .line 768
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    .line 769
    move/from16 v11, p1

    .line 770
    .local v11, "touchX":I
    move/from16 v12, p2

    .line 771
    .local v12, "touchY":I
    const/4 v5, 0x0

    .line 773
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 774
    .local v7, "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v10, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 775
    .local v10, "targetView":Lcom/android/launcher3/common/drag/DragView;
    add-int/lit8 v5, v5, 0x1

    .line 777
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/launcher3/common/drag/DragManager$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10, v11, v12}, Lcom/android/launcher3/common/drag/DragManager$5;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragView;II)V

    mul-int/lit8 v16, v5, 0xa

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 789
    .end local v5    # "count":I
    .end local v7    # "extraDrag":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v10    # "targetView":Lcom/android/launcher3/common/drag/DragView;
    .end local v11    # "touchX":I
    .end local v12    # "touchY":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 790
    .local v4, "coordinates":[I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v13}, Lcom/android/launcher3/common/drag/DragManager;->findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v6

    .line 791
    .local v6, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v14, 0x0

    aget v14, v4, v14

    iput v14, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    .line 792
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v14, 0x1

    aget v14, v4, v14

    iput v14, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    .line 793
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/common/drag/DragManager;->checkTouchMove(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 795
    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    .line 796
    .local v9, "outlineColor":I
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    if-eq v9, v13, :cond_6

    .line 797
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v13, v13, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v13}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 798
    .local v8, "outline":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_5

    .line 799
    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 801
    :cond_5
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    .line 805
    .end local v8    # "outline":Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    int-to-double v14, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/16 v16, 0x0

    aget v13, v13, v16

    sub-int v13, v13, p1

    int-to-double v0, v13

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/16 v18, 0x1

    aget v13, v13, v18

    sub-int v13, v13, p2

    int-to-double v0, v13

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    add-double v14, v14, v16

    double-to-int v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mDistanceSinceScroll:I

    .line 806
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/4 v14, 0x0

    aput p1, v13, v14

    .line 807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    const/4 v14, 0x1

    aput p2, v13, v14

    .line 808
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/drag/DragManager;->checkScrollState(II)V

    .line 809
    return-void

    .line 795
    .end local v9    # "outlineColor":I
    :cond_7
    invoke-interface {v6}, Lcom/android/launcher3/common/drag/DropTarget;->getOutlineColor()I

    move-result v9

    goto :goto_1
.end method

.method private removePossibleQuickOptionView(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    .line 579
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 583
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    return-void
.end method

.method private setAnchor(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1105
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1106
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorRect(Landroid/graphics/Rect;)V

    .line 1107
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->setAnchorView(Landroid/view/View;)V

    .line 1108
    return-void
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/common/drag/DropTarget;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    :cond_0
    return-void
.end method

.method public cancelDrag()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 509
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v3, :cond_0

    .line 510
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 513
    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v3, :cond_4

    .line 514
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v5, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 515
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v6, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 516
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v6, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    .line 517
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-eqz v3, :cond_1

    .line 518
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 520
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-interface {v3, v7, v4, v5}, Lcom/android/launcher3/common/drag/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 522
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    .line 523
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DragSource;

    .line 524
    .local v1, "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v2, "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v4, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 526
    .local v0, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 527
    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 528
    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    .line 529
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 532
    .end local v0    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_3
    invoke-interface {v1, v7, v7, v2}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 536
    .end local v1    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    .end local v2    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->endDrag()V

    .line 537
    return-void
.end method

.method public cancelDragIfViewRemoved(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1233
    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    .line 1239
    :cond_1
    return-void
.end method

.method public createDragView(Landroid/view/View;II)Lcom/android/launcher3/common/drag/DragView;
    .locals 20
    .param p1, "appView"    # Landroid/view/View;
    .param p2, "targetLocationX"    # I
    .param p3, "targetLocationY"    # I

    .prologue
    .line 1198
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 1199
    .local v19, "tempPt":[I
    new-instance v18, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x6

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 1200
    .local v18, "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1201
    .local v4, "viewBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 1202
    .local v17, "bmpWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 1203
    .local v16, "bmpHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v11

    .line 1204
    .local v11, "appScale":F
    const/4 v3, 0x0

    aget v3, v19, v3

    int-to-float v3, v3

    move/from16 v0, v17

    int-to-float v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v11

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1205
    .local v14, "appX":I
    const/4 v3, 0x1

    aget v3, v19, v3

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v5, v0

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float/2addr v6, v11

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1207
    .local v15, "appY":I
    new-instance v2, Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    neg-int v5, v14

    neg-int v6, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1208
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIFFZ)V

    .line 1209
    .local v2, "dragView":Lcom/android/launcher3/common/drag/DragView;
    sub-int v3, p2, v14

    sub-int v5, p3, v15

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/common/drag/DragView;->setTargetOffset(II)V

    .line 1211
    return-object v2
.end method

.method public createQuickOptionViewFromCenterKey(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dragSource"    # Lcom/android/launcher3/common/drag/DragSource;

    .prologue
    .line 1081
    if-nez p1, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v1, :cond_0

    .line 1089
    :cond_2
    new-instance v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 1090
    .local v0, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 1091
    iput-object p2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 1092
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/drag/DragManager;->setAnchor(Landroid/view/View;)V

    .line 1093
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/drag/DragManager;->createQuickOptionView(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 1094
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1095
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    .line 1096
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    .line 1098
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1099
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->requestFocus()Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dragging()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v0
.end method

.method public enableQuickOptionView()V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->enable()V

    .line 1159
    :cond_0
    return-void
.end method

.method public forceTouchMove()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 812
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 813
    .local v1, "dummyCoordinates":[I
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouch:[I

    aget v3, v3, v5

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/launcher3/common/drag/DragManager;->findDropTarget(II[IZ)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    .line 814
    .local v0, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v3, v1, v4

    iput v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->x:I

    .line 815
    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    aget v3, v1, v5

    iput v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->y:I

    .line 816
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/drag/DragManager;->checkTouchMove(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 817
    return-void
.end method

.method public getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    return-object v0
.end method

.method public getLastGestureUpTime()J
    .locals 2

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v0, :cond_0

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 680
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    goto :goto_0
.end method

.method public getQuickOptionView()Lcom/android/launcher3/common/quickoption/QuickOptionView;
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v0
.end method

.method public isInScrollArea()Z
    .locals 1

    .prologue
    .line 1228
    iget-boolean v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mIsInScrollArea:Z

    return v0
.end method

.method public isQuickOptionShowing()Z
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAppsRemoved(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 4
    .param p1, "matcher"    # Lcom/android/launcher3/util/ItemInfoMatcher;

    .prologue
    .line 564
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v2, v3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 566
    .local v2, "rawDragInfo":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 567
    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 568
    .local v1, "dragInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 569
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    .line 574
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "dragInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "rawDragInfo":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/drag/DragManager;->removePossibleQuickOptionView(Ljava/util/HashSet;)V

    .line 542
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v5, :cond_2

    .line 543
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 544
    .local v4, "rawDragInfo":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_2

    move-object v2, v4

    .line 545
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 546
    .local v2, "dragInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 548
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    iget-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 549
    iget-object v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 550
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p1, :cond_3

    .line 551
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 552
    .local v3, "isSameComponent":Z
    :goto_0
    if-eqz v3, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    .line 560
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "dragInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v3    # "isSameComponent":Z
    .end local v4    # "rawDragInfo":Ljava/lang/Object;
    :cond_2
    return-void

    .line 551
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "dragInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v4    # "rawDragInfo":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V
    .locals 3
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;

    .prologue
    .line 656
    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragView;->remove()V

    .line 658
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-boolean v1, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v1, :cond_0

    .line 660
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .line 661
    .local v0, "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragManager$DragListener;->onDragEnd()Z

    goto :goto_0

    .line 664
    .end local v0    # "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 693
    const/4 v1, 0x0

    .line 699
    .local v1, "debug":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 700
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->getClampedDragLayerPos(FF)[I

    move-result-object v2

    .line 701
    .local v2, "dragLayerPos":[I
    const/4 v5, 0x0

    aget v3, v2, v5

    .line 702
    .local v3, "dragLayerX":I
    const/4 v5, 0x1

    aget v4, v2, v5

    .line 704
    .local v4, "dragLayerY":I
    packed-switch v0, :pswitch_data_0

    .line 728
    :goto_0
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    return v5

    .line 709
    :pswitch_1
    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    .line 710
    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    .line 711
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    goto :goto_0

    .line 714
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    .line 715
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v5, :cond_0

    .line 716
    iget-object v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 718
    :cond_0
    iget-boolean v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v5, :cond_1

    .line 719
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-direct {p0, v5, v6}, Lcom/android/launcher3/common/drag/DragManager;->drop(FF)V

    .line 721
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->endDrag()V

    goto :goto_0

    .line 724
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    goto :goto_0

    .line 704
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 875
    iget-boolean v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-nez v6, :cond_0

    .line 920
    :goto_0
    return v4

    .line 879
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 880
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/launcher3/common/drag/DragManager;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 881
    .local v1, "dragLayerPos":[I
    aget v2, v1, v4

    .line 882
    .local v2, "dragLayerX":I
    aget v3, v1, v5

    .line 884
    .local v3, "dragLayerY":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v4, v5

    .line 920
    goto :goto_0

    .line 887
    :pswitch_0
    iput v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    .line 888
    iput v3, p0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    .line 890
    iget v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    if-lt v2, v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    sub-int/2addr v6, v7

    if-le v2, v6, :cond_2

    .line 891
    :cond_1
    iput v5, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    .line 892
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 896
    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V

    goto :goto_1

    .line 894
    :cond_2
    iput v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollState:I

    goto :goto_2

    .line 899
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V

    goto :goto_1

    .line 903
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V

    .line 904
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 906
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v4, :cond_3

    .line 907
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 909
    :cond_3
    iget-boolean v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    if-eqz v4, :cond_4

    .line 910
    int-to-float v4, v2

    int-to-float v6, v3

    invoke-direct {p0, v4, v6}, Lcom/android/launcher3/common/drag/DragManager;->drop(FF)V

    .line 912
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->endDrag()V

    goto :goto_1

    .line 915
    :pswitch_3
    iget-object v4, p0, Lcom/android/launcher3/common/drag/DragManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollRunnable:Lcom/android/launcher3/common/drag/DragManager$ScrollRunnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 916
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->cancelDrag()V

    goto :goto_1

    .line 884
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1026
    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/common/drag/DropTarget;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1042
    return-void
.end method

.method public removeExtraDragSourceViewAndReorder()V
    .locals 12

    .prologue
    .line 465
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/drag/DragSource;

    .line 466
    .local v4, "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v6, "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v2, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 468
    .local v2, "dragObjectRank":I
    const/4 v0, 0x0

    .line 469
    .local v0, "count":I
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 470
    .local v1, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v9, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 471
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_2
    instance-of v9, v4, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v9, :cond_1

    .line 474
    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/common/drag/DragManager;->countItemsBelowThanDraggedItemRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)I

    move-result v0

    goto :goto_1

    .line 477
    .end local v1    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_3
    sub-int v3, v2, v0

    .line 478
    .local v3, "emptyRank":I
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v5, v10

    .line 479
    .local v5, "screenId":I
    invoke-interface {v4, v6}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDragged(Ljava/util/ArrayList;)V

    .line 480
    instance-of v7, v4, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v7, :cond_0

    .line 481
    check-cast v4, Lcom/android/launcher3/allapps/controller/AppsDragController;

    .end local v4    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    iget-object v7, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-virtual {v4, v7, v3, v2, v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V

    goto :goto_0

    .line 485
    .end local v0    # "count":I
    .end local v2    # "dragObjectRank":I
    .end local v3    # "emptyRank":I
    .end local v5    # "screenId":I
    .end local v6    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_4
    return-void
.end method

.method public removeQuickOptionView()V
    .locals 1

    .prologue
    .line 1162
    const-string v0, "4"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    .line 1163
    return-void
.end method

.method public removeQuickOptionView(Ljava/lang/String;)V
    .locals 3
    .param p1, "detailOfRemove"    # Ljava/lang/String;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-nez v0, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1181
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->remove(Z)V

    .line 1182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    .line 1185
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/util/logging/SALogging;->insertQuickOptionEventLog(ILcom/android/launcher3/Launcher;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeQuickOptionView(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "detailOfRemove"    # Ljava/lang/String;
    .param p2, "requestFocus"    # Z

    .prologue
    .line 1166
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-eqz v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getItemInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/drag/DragManager;->getOriginDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 1168
    .local v0, "originView":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_0

    .line 1169
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1173
    .end local v0    # "originView":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    .line 1174
    return-void
.end method

.method public removeQuickOptionViewWithoutSALogging()V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    if-nez v0, :cond_0

    .line 1195
    :goto_0
    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->remove(Z)V

    .line 1194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;

    goto :goto_0
.end method

.method public resetLastGestureUpTime()V
    .locals 2

    .prologue
    .line 685
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mLastTouchUpTime:J

    .line 686
    return-void
.end method

.method public setDragScroller(Lcom/android/launcher3/common/drag/DragScroller;)V
    .locals 0
    .param p1, "scroller"    # Lcom/android/launcher3/common/drag/DragScroller;

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/android/launcher3/common/drag/DragManager;->clearScrollRunnable()V

    .line 1000
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    .line 1001
    invoke-virtual {p0}, Lcom/android/launcher3/common/drag/DragManager;->setScrollZone()V

    .line 1002
    return-void
.end method

.method public setMoveTarget(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mMoveTarget:Landroid/view/View;

    .line 736
    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollView:Landroid/view/View;

    .line 1049
    return-void
.end method

.method public setScrollZone()V
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mDragScroller:Lcom/android/launcher3/common/drag/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher3/common/drag/DragScroller;->getScrollZone()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/drag/DragManager;->mScrollZone:I

    .line 1008
    :cond_0
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager;->mWindowToken:Landroid/os/IBinder;

    .line 1012
    return-void
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;
    .locals 55
    .param p1, "child"    # Landroid/view/View;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "dragLayerX"    # I
    .param p4, "dragLayerY"    # I
    .param p5, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p6, "dragInfo"    # Ljava/lang/Object;
    .param p7, "dragAction"    # I
    .param p8, "dragOffset"    # Landroid/graphics/Point;
    .param p9, "dragRegion"    # Landroid/graphics/Rect;
    .param p10, "initialDragViewScale"    # F
    .param p11, "outline"    # Landroid/graphics/drawable/Drawable;
    .param p12, "allowQuickOption"    # Z
    .param p13, "fromEmptyCell"    # Z

    .prologue
    .line 270
    if-eqz p5, :cond_0

    .line 271
    invoke-interface/range {p5 .. p5}, Lcom/android/launcher3/common/drag/DragSource;->getOutlineColor()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mOutlineColor:I

    .line 275
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_1

    .line 276
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v6, "input_method"

    .line 277
    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 279
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mWindowToken:Landroid/os/IBinder;

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/launcher3/common/drag/DragManager$DragListener;

    .line 282
    .local v44, "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    move-object/from16 v0, v44

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/common/drag/DragManager$DragListener;->onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z

    goto :goto_0

    .line 285
    .end local v44    # "listener":Lcom/android/launcher3/common/drag/DragManager$DragListener;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v33, v5, 0x2

    .line 286
    .local v33, "emptyCellOffsetX":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v34, v5, 0x2

    .line 288
    .local v34, "emptyCellOffsetY":I
    if-eqz p13, :cond_a

    move/from16 v7, v33

    .line 290
    .local v7, "registrationX":I
    :goto_1
    if-eqz p13, :cond_b

    move/from16 v8, v34

    .line 293
    .local v8, "registrationY":I
    :goto_2
    if-nez p9, :cond_c

    const/16 v31, 0x0

    .line 294
    .local v31, "dragRegionLeft":I
    :goto_3
    if-nez p9, :cond_d

    const/16 v32, 0x0

    .line 296
    .local v32, "dragRegionTop":I
    :goto_4
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragging:Z

    .line 298
    new-instance v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v5}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 300
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    .line 301
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz p13, :cond_e

    move/from16 v5, v33

    :goto_5
    iput v5, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->xOffset:I

    .line 303
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz p13, :cond_f

    move/from16 v5, v34

    :goto_6
    iput v5, v6, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->yOffset:I

    .line 306
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 307
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p6

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    new-instance v4, Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object/from16 v6, p2

    move/from16 v13, p10

    invoke-direct/range {v4 .. v13}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v4, v14, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 311
    .local v4, "dragView":Lcom/android/launcher3/common/drag/DragView;
    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/drag/DragView;->setDragOutline(Landroid/graphics/drawable/Drawable;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    .line 314
    if-eqz p8, :cond_3

    .line 315
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p8

    invoke-direct {v5, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/drag/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 317
    :cond_3
    if-eqz p9, :cond_4

    .line 318
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p9

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/drag/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 321
    :cond_4
    if-eqz p13, :cond_5

    .line 322
    sub-int v5, v7, v33

    sub-int v6, v8, v34

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/drag/DragView;->setTargetOffset(II)V

    .line 325
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v5, :cond_19

    .line 326
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppsViewList()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    .local v21, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p6

    instance-of v5, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v5, :cond_6

    move-object/from16 v0, p6

    instance-of v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_19

    :cond_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_19

    .line 328
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v37, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v39, "extraDragSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DragSource;>;"
    const/16 v40, 0x0

    .line 332
    .local v40, "extraOrder":I
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :cond_7
    :goto_7
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    .line 333
    .local v22, "checkedApp":Landroid/view/View;
    new-instance v29, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v29 .. v29}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 334
    .local v29, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppDragSource(I)Lcom/android/launcher3/common/drag/DragSource;

    move-result-object v5

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 335
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 337
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v52, v0

    .line 338
    .local v52, "tempPt":[I
    new-instance v46, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x6

    move-object/from16 v0, v46

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 339
    .local v46, "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v46

    invoke-static {v0, v1, v5}, Lcom/android/launcher3/common/drag/DragViewHelper;->createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 340
    .local v11, "viewBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 341
    .local v16, "bmpWidth":I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 343
    .local v17, "bmpHeight":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v18

    .line 344
    .local v18, "checkedAppScale":F
    const/4 v5, 0x0

    aget v5, v52, v5

    int-to-float v5, v5

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v18

    sub-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 345
    .local v23, "checkedAppX":I
    const/4 v5, 0x1

    aget v5, v52, v5

    int-to-float v5, v5

    move/from16 v0, v17

    int-to-float v6, v0

    move/from16 v0, v17

    int-to-float v10, v0

    mul-float v10, v10, v18

    sub-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    .line 346
    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v5, v6

    .line 345
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 348
    .local v24, "checkedAppY":I
    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    .line 349
    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int v6, v16, v6

    int-to-float v6, v6

    div-float v19, v5, v6

    .line 350
    .local v19, "scaleFactor":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v19, v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v48, v0

    .line 352
    .local v48, "scaleValue":I
    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionLeft()I

    move-result v5

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int v27, v5, v6

    .line 353
    .local v27, "deltaX":I
    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragRegionTop()I

    move-result v5

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int v28, v5, v6

    .line 355
    .local v28, "deltaY":I
    const/16 v47, 0x0

    .line 356
    .local v47, "pageDeltaX":I
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 357
    .local v43, "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v43

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-lez v5, :cond_8

    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    if-eqz v5, :cond_8

    .line 358
    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v43

    invoke-interface {v5, v0}, Lcom/android/launcher3/common/drag/DragSource;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v51

    .line 359
    .local v51, "targetPage":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/launcher3/common/drag/DragSource;->getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v45

    .line 360
    .local v45, "nextPage":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v53, v0

    .line 361
    .local v53, "widthPixels":I
    sub-int v5, v45, v51

    mul-int v47, v5, v53

    .line 364
    .end local v45    # "nextPage":I
    .end local v51    # "targetPage":I
    .end local v53    # "widthPixels":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0165

    .line 365
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v41

    .line 366
    .local v41, "extraViewOffsetDelta":I
    add-int/lit8 v40, v40, 0x1

    .line 367
    new-instance v9, Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int v5, v5, v23

    mul-int v6, v41, v40

    add-int v6, v6, v27

    add-int v6, v6, v48

    sub-int/2addr v5, v6

    add-int v12, v5, v47

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int v5, v5, v24

    mul-int v6, v41, v40

    add-int v6, v6, v28

    add-int v6, v6, v48

    sub-int v13, v5, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v9 .. v20}, Lcom/android/launcher3/common/drag/DragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/Bitmap;IIIIIIFFZ)V

    move-object/from16 v0, v29

    iput-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 373
    .local v9, "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    .line 374
    if-eqz p13, :cond_10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int v5, v5, v23

    add-int v5, v5, v47

    sub-int v5, v5, v33

    move v6, v5

    :goto_8
    if-eqz p13, :cond_11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int v5, v5, v24

    sub-int v5, v5, v34

    :goto_9
    invoke-virtual {v9, v6, v5}, Lcom/android/launcher3/common/drag/DragView;->setTargetOffset(II)V

    .line 379
    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/drag/DragView;->setTopDelta(I)V

    .line 380
    if-eqz p8, :cond_9

    .line 381
    new-instance v5, Landroid/graphics/Point;

    move-object/from16 v0, p8

    invoke-direct {v5, v0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v9, v5}, Lcom/android/launcher3/common/drag/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 384
    :cond_9
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 386
    move-object/from16 v0, v29

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 288
    .end local v4    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v7    # "registrationX":I
    .end local v8    # "registrationY":I
    .end local v9    # "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v11    # "viewBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "bmpWidth":I
    .end local v17    # "bmpHeight":I
    .end local v18    # "checkedAppScale":F
    .end local v19    # "scaleFactor":F
    .end local v21    # "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v22    # "checkedApp":Landroid/view/View;
    .end local v23    # "checkedAppX":I
    .end local v24    # "checkedAppY":I
    .end local v27    # "deltaX":I
    .end local v28    # "deltaY":I
    .end local v29    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v31    # "dragRegionLeft":I
    .end local v32    # "dragRegionTop":I
    .end local v37    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v39    # "extraDragSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DragSource;>;"
    .end local v40    # "extraOrder":I
    .end local v41    # "extraViewOffsetDelta":I
    .end local v43    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v46    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v47    # "pageDeltaX":I
    .end local v48    # "scaleValue":I
    .end local v52    # "tempPt":[I
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    sub-int v7, v5, p3

    goto/16 :goto_1

    .line 290
    .restart local v7    # "registrationX":I
    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    sub-int v8, v5, p4

    goto/16 :goto_2

    .line 293
    .restart local v8    # "registrationY":I
    :cond_c
    move-object/from16 v0, p9

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    goto/16 :goto_3

    .line 294
    .restart local v31    # "dragRegionLeft":I
    :cond_d
    move-object/from16 v0, p9

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    goto/16 :goto_4

    .line 301
    .restart local v32    # "dragRegionTop":I
    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    add-int v10, p3, v31

    sub-int/2addr v5, v10

    goto/16 :goto_5

    .line 303
    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    add-int v10, p4, v32

    sub-int/2addr v5, v10

    goto/16 :goto_6

    .line 374
    .restart local v4    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .restart local v9    # "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    .restart local v11    # "viewBitmap":Landroid/graphics/Bitmap;
    .restart local v16    # "bmpWidth":I
    .restart local v17    # "bmpHeight":I
    .restart local v18    # "checkedAppScale":F
    .restart local v19    # "scaleFactor":F
    .restart local v21    # "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v22    # "checkedApp":Landroid/view/View;
    .restart local v23    # "checkedAppX":I
    .restart local v24    # "checkedAppY":I
    .restart local v27    # "deltaX":I
    .restart local v28    # "deltaY":I
    .restart local v29    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .restart local v37    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v39    # "extraDragSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DragSource;>;"
    .restart local v40    # "extraOrder":I
    .restart local v41    # "extraViewOffsetDelta":I
    .restart local v43    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v46    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v47    # "pageDeltaX":I
    .restart local v48    # "scaleValue":I
    .restart local v52    # "tempPt":[I
    :cond_10
    sub-int v5, p3, v23

    add-int v5, v5, v47

    move v6, v5

    goto :goto_8

    :cond_11
    sub-int v5, p4, v24

    goto :goto_9

    .line 390
    .end local v9    # "extraDragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v11    # "viewBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "bmpWidth":I
    .end local v17    # "bmpHeight":I
    .end local v18    # "checkedAppScale":F
    .end local v19    # "scaleFactor":F
    .end local v22    # "checkedApp":Landroid/view/View;
    .end local v23    # "checkedAppX":I
    .end local v24    # "checkedAppY":I
    .end local v27    # "deltaX":I
    .end local v28    # "deltaY":I
    .end local v29    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v41    # "extraViewOffsetDelta":I
    .end local v43    # "itemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v46    # "padding":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v47    # "pageDeltaX":I
    .end local v48    # "scaleValue":I
    .end local v52    # "tempPt":[I
    :cond_12
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_19

    .line 391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v37

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v39

    iput-object v0, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    .line 394
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v42, v5, -0x1

    .local v42, "i":I
    :goto_a
    if-ltz v42, :cond_14

    .line 395
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 396
    .local v36, "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_13

    .line 397
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    invoke-virtual {v5, v6, v10}, Lcom/android/launcher3/common/drag/DragView;->show(II)V

    .line 394
    :cond_13
    add-int/lit8 v42, v42, -0x1

    goto :goto_a

    .line 401
    .end local v36    # "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/launcher3/common/drag/DragSource;

    .line 402
    .local v38, "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v50, "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v30, v0

    .line 404
    .local v30, "dragObjectRank":I
    const/16 v25, 0x0

    .line 405
    .local v25, "count":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 406
    .local v26, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 407
    move-object/from16 v0, v50

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_17
    move-object/from16 v0, v38

    instance-of v10, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v10, :cond_16

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/drag/DragManager;->countItemsBelowThanDraggedItemRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)I

    move-result v25

    goto :goto_c

    .line 413
    .end local v26    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_18
    sub-int v35, v30, v25

    .line 414
    .local v35, "emptyRank":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v5, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v12, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v12

    move/from16 v49, v0

    .line 415
    .local v49, "screenId":I
    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/drag/DragSource;->onExtraObjectDragged(Ljava/util/ArrayList;)V

    .line 416
    move-object/from16 v0, v38

    instance-of v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v5, :cond_15

    .line 417
    check-cast v38, Lcom/android/launcher3/allapps/controller/AppsDragController;

    .end local v38    # "extraDragSource":Lcom/android/launcher3/common/drag/DragSource;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v38

    move/from16 v1, v35

    move/from16 v2, v30

    move/from16 v3, v49

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V

    goto/16 :goto_b

    .line 425
    .end local v21    # "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v25    # "count":I
    .end local v30    # "dragObjectRank":I
    .end local v35    # "emptyRank":I
    .end local v37    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v39    # "extraDragSources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DragSource;>;"
    .end local v40    # "extraOrder":I
    .end local v42    # "i":I
    .end local v49    # "screenId":I
    .end local v50    # "targetExtraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_19
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/drag/DragManager;->mMotionDownY:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/drag/DragView;->show(II)V

    .line 427
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v5

    if-eqz v5, :cond_1a

    if-eqz p12, :cond_1a

    .line 428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/common/drag/DragManager;->createQuickOptionView(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 431
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v5, :cond_1c

    if-eqz p5, :cond_1c

    .line 432
    invoke-interface/range {p5 .. p5}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1b

    invoke-interface/range {p5 .. p5}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1d

    .line 433
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 434
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v12, 0x3e8

    invoke-virtual {v5, v12, v13}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v6, Lcom/android/launcher3/common/drag/DragManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/common/drag/DragManager$1;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragSource;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 460
    :cond_1c
    :goto_d
    return-object v4

    .line 446
    :cond_1d
    invoke-interface/range {p5 .. p5}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1c

    .line 447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v5}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v12, 0x64

    invoke-virtual {v5, v12, v13}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DragManager;->mMoveStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v6, Lcom/android/launcher3/common/drag/DragManager$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/common/drag/DragManager$2;-><init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragSource;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    goto :goto_d
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;Landroid/graphics/Rect;IFLandroid/graphics/drawable/Drawable;Z)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;
    .param p3, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p4, "dragInfo"    # Ljava/lang/Object;
    .param p5, "viewImageBounds"    # Landroid/graphics/Rect;
    .param p6, "dragAction"    # I
    .param p7, "initialDragViewScale"    # F
    .param p8, "outline"    # Landroid/graphics/drawable/Drawable;
    .param p9, "alignCenter"    # Z

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/drag/DragManager;->mCoordinatesTemp:[I

    .line 229
    .local v15, "loc":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v15}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 231
    if-eqz p9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v16, v1, 0x2

    .line 232
    .local v16, "offsetX":I
    :goto_0
    if-eqz p9, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v17, v1, 0x2

    .line 234
    .local v17, "offsetY":I
    :goto_1
    const/4 v1, 0x0

    aget v1, v15, v1

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    add-int v1, v1, v16

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v4, v1, v2

    .line 236
    .local v4, "dragLayerX":I
    const/4 v1, 0x1

    aget v1, v15, v1

    move-object/from16 v0, p5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    add-int v1, v1, v17

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int v5, v1, v2

    .line 239
    .local v5, "dragLayerY":I
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v1 .. v14}, Lcom/android/launcher3/common/drag/DragManager;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;IILcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;FLandroid/graphics/drawable/Drawable;ZZ)Lcom/android/launcher3/common/drag/DragView;

    .line 242
    if-nez p6, :cond_0

    .line 243
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_0
    return-void

    .line 231
    .end local v4    # "dragLayerX":I
    .end local v5    # "dragLayerY":I
    .end local v16    # "offsetX":I
    .end local v17    # "offsetY":I
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 232
    .restart local v16    # "offsetX":I
    :cond_2
    const/16 v17, 0x0

    goto :goto_1
.end method
