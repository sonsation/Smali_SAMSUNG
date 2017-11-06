.class public Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;
.source "SeslItemTouchHelper.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;,
        Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;,
        Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$SimpleCallback;,
        Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;,
        Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field static EMPTY_STATE_SET:[I = null

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field static PRESSED_STATE_SET:[I = null

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field static final TAG:Ljava/lang/String; = "SeslItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDragGrabHandlePadding:Landroid/graphics/Rect;

.field mDragGrabHandlePosGravity:I

.field private mDragGrabHandleRect:Landroid/graphics/Rect;

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Landroid/view/GestureDetector;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field mIsRecoverAnimationUpdated:Z

.field mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private final mScrollBarSize:I

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeEscapeVelocity:F

.field mTempViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->PRESSED_STATE_SET:[I

    .line 256
    new-array v0, v2, [I

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 455
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    .line 179
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 218
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    .line 228
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    .line 253
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mScrollBarSize:I

    .line 258
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mIsRecoverAnimationUpdated:Z

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandleRect:Landroid/graphics/Rect;

    .line 273
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 300
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    .line 307
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 314
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChildPosition:I

    .line 321
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    .line 456
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    .line 459
    const/16 v0, 0x15

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandlePosGravity:I

    .line 460
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    .line 462
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .prologue
    .line 1377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1400
    :goto_0
    return-void

    .line 1380
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1381
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$5;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setChildDrawingOrderCallback(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;)V

    goto :goto_0
.end method

.method private checkHorizontalSwipe(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)I
    .locals 13
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v12, 0x0

    .line 1324
    and-int/lit8 v8, p2, 0xc

    if-eqz v8, :cond_3

    .line 1325
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_0

    move v1, v6

    .line 1326
    .local v1, "dirFlag":I
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 1327
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1328
    invoke-virtual {v10, v11}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    .line 1327
    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1329
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1330
    .local v4, "xVelocity":F
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1331
    .local v5, "yVelocity":F
    cmpl-float v8, v4, v12

    if-lez v8, :cond_1

    move v3, v6

    .line 1332
    .local v3, "velDirFlag":I
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1333
    .local v0, "absXVelocity":F
    and-int v6, v3, p2

    if-eqz v6, :cond_2

    if-ne v1, v3, :cond_2

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1334
    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_2

    .line 1335
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 1347
    .end local v0    # "absXVelocity":F
    .end local v1    # "dirFlag":I
    .end local v3    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :goto_2
    return v3

    :cond_0
    move v1, v7

    .line 1325
    goto :goto_0

    .restart local v1    # "dirFlag":I
    .restart local v4    # "xVelocity":F
    .restart local v5    # "yVelocity":F
    :cond_1
    move v3, v7

    .line 1331
    goto :goto_1

    .line 1340
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    .line 1341
    invoke-virtual {v7, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getSwipeThreshold(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)F

    move-result v7

    mul-float v2, v6, v7

    .line 1343
    .local v2, "threshold":F
    and-int v6, p2, v1

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    move v3, v1

    .line 1344
    goto :goto_2

    .line 1347
    .end local v1    # "dirFlag":I
    .end local v2    # "threshold":F
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private checkVerticalSwipe(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)I
    .locals 13
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 1351
    and-int/lit8 v8, p2, 0x3

    if-eqz v8, :cond_3

    .line 1352
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_0

    move v1, v6

    .line 1353
    .local v1, "dirFlag":I
    :goto_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    .line 1354
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1355
    invoke-virtual {v10, v11}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v10

    .line 1354
    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1356
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1357
    .local v4, "xVelocity":F
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1358
    .local v5, "yVelocity":F
    cmpl-float v8, v5, v12

    if-lez v8, :cond_1

    move v3, v6

    .line 1359
    .local v3, "velDirFlag":I
    :goto_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1360
    .local v0, "absYVelocity":F
    and-int v6, v3, p2

    if-eqz v6, :cond_2

    if-ne v3, v1, :cond_2

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1361
    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_2

    .line 1362
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 1373
    .end local v0    # "absYVelocity":F
    .end local v1    # "dirFlag":I
    .end local v3    # "velDirFlag":I
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :goto_2
    return v3

    :cond_0
    move v1, v7

    .line 1352
    goto :goto_0

    .restart local v1    # "dirFlag":I
    .restart local v4    # "xVelocity":F
    .restart local v5    # "yVelocity":F
    :cond_1
    move v3, v7

    .line 1358
    goto :goto_1

    .line 1367
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    .line 1368
    invoke-virtual {v7, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getSwipeThreshold(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)F

    move-result v7

    mul-float v2, v6, v7

    .line 1369
    .local v2, "threshold":F
    and-int v6, p2, v1

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    move v3, v1

    .line 1370
    goto :goto_2

    .line 1373
    .end local v1    # "dirFlag":I
    .end local v2    # "threshold":F
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private destroyCallbacks()V
    .locals 6

    .prologue
    .line 513
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 514
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeOnItemTouchListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;)V

    .line 515
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeOnChildAttachStateChangeListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;)V

    .line 517
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 518
    .local v1, "recoverAnimSize":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 519
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    .line 520
    .local v2, "recoverAnimation":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v5, v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 518
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 522
    .end local v2    # "recoverAnimation":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 523
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 524
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChildPosition:I

    .line 525
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->releaseVelocityTracker()V

    .line 526
    return-void
.end method

.method private findSwapTargets(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Ljava/util/List;
    .locals 25
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 893
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 894
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDistances:Ljava/util/List;

    .line 899
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v16

    .line 900
    .local v16, "margin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartX:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v14, v22, v16

    .line 901
    .local v14, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    move/from16 v23, v0

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    sub-int v21, v22, v16

    .line 902
    .local v21, "top":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v22

    add-int v22, v22, v14

    mul-int/lit8 v23, v16, 0x2

    add-int v20, v22, v23

    .line 903
    .local v20, "right":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getHeight()I

    move-result v22

    add-int v22, v22, v21

    mul-int/lit8 v23, v16, 0x2

    add-int v4, v22, v23

    .line 904
    .local v4, "bottom":I
    add-int v22, v14, v20

    div-int/lit8 v5, v22, 0x2

    .line 905
    .local v5, "centerX":I
    add-int v22, v21, v4

    div-int/lit8 v6, v22, 0x2

    .line 906
    .local v6, "centerY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v15

    .line 907
    .local v15, "lm":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    .line 908
    .local v7, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v7, :cond_4

    .line 909
    invoke-virtual {v15, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 910
    .local v17, "other":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 908
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 896
    .end local v4    # "bottom":I
    .end local v5    # "centerX":I
    .end local v6    # "centerY":I
    .end local v7    # "childCount":I
    .end local v12    # "i":I
    .end local v14    # "left":I
    .end local v15    # "lm":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .end local v16    # "margin":I
    .end local v17    # "other":Landroid/view/View;
    .end local v20    # "right":I
    .end local v21    # "top":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 913
    .restart local v4    # "bottom":I
    .restart local v5    # "centerX":I
    .restart local v6    # "centerY":I
    .restart local v7    # "childCount":I
    .restart local v12    # "i":I
    .restart local v14    # "left":I
    .restart local v15    # "lm":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .restart local v16    # "margin":I
    .restart local v17    # "other":Landroid/view/View;
    .restart local v20    # "right":I
    .restart local v21    # "top":I
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-gt v0, v4, :cond_0

    .line 914
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v14, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v18

    .line 918
    .local v18, "otherVh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->canDropOver(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 920
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v5, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 921
    .local v10, "dx":I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v23

    add-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v6, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 922
    .local v11, "dy":I
    mul-int v22, v10, v10

    mul-int v23, v11, v11

    add-int v9, v22, v23

    .line 924
    .local v9, "dist":I
    const/16 v19, 0x0

    .line 925
    .local v19, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    .line 926
    .local v8, "cnt":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v8, :cond_3

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    if-le v9, v0, :cond_3

    .line 928
    add-int/lit8 v19, v19, 0x1

    .line 926
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 933
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDistances:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 937
    .end local v8    # "cnt":I
    .end local v9    # "dist":I
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v13    # "j":I
    .end local v17    # "other":Landroid/view/View;
    .end local v18    # "otherVh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v19    # "pos":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwapTargets:Ljava/util/List;

    move-object/from16 v22, v0

    return-object v22
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 1040
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v5

    .line 1041
    .local v5, "lm":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-object v7

    .line 1044
    :cond_1
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 1045
    .local v6, "pointerIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchX:F

    sub-float v3, v8, v9

    .line 1046
    .local v3, "dx":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchY:F

    sub-float v4, v8, v9

    .line 1047
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1048
    .local v0, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1050
    .local v1, "absDy":F
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSlop:I

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_0

    .line 1053
    :cond_2
    cmpl-float v8, v0, v1

    if-lez v8, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1055
    :cond_3
    cmpl-float v8, v1, v0

    if-lez v8, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1058
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 1059
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1062
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v7

    goto :goto_0
.end method

.method private getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "childRect"    # Landroid/graphics/Rect;
    .param p2, "outGrabHandleRect"    # Landroid/graphics/Rect;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDragGrabHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 619
    .local v6, "dragGrabHandleDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 620
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 621
    .local v1, "drawableWidth":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 636
    .local v2, "drawableHeight":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 637
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 638
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 639
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandlePadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 641
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 642
    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 644
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandlePosGravity:I

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 648
    .end local v1    # "drawableWidth":I
    .end local v2    # "drawableHeight":I
    :cond_0
    return-void
.end method

.method private getSelectedDxDy([F)V
    .locals 4
    .param p1, "outPosition"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 538
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    .line 539
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 543
    :goto_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 544
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    .line 548
    :goto_1
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .prologue
    .line 465
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 465
    :goto_0
    return v0

    .line 468
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initGestureDetector()V
    .locals 4

    .prologue
    .line 529
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1035
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1037
    :cond_0
    return-void
.end method

.method private setupCallbacks()V
    .locals 3

    .prologue
    .line 504
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 505
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSlop:I

    .line 506
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 507
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOnItemTouchListener:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addOnItemTouchListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;)V

    .line 508
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addOnChildAttachStateChangeListener(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnChildAttachStateChangeListener;)V

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->initGestureDetector()V

    .line 510
    return-void
.end method

.method private swipeIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 9
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const v8, 0xff00

    const/4 v5, 0x0

    .line 1278
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v4, v5

    .line 1320
    :cond_0
    :goto_0
    return v4

    .line 1281
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6, v7, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v3

    .line 1282
    .local v3, "originalMovementFlags":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 1284
    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v7

    .line 1282
    invoke-virtual {v6, v3, v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v0

    .line 1285
    .local v0, "absoluteMovementFlags":I
    and-int v6, v0, v8

    shr-int/lit8 v1, v6, 0x8

    .line 1287
    .local v1, "flags":I
    if-nez v1, :cond_2

    move v4, v5

    .line 1288
    goto :goto_0

    .line 1290
    :cond_2
    and-int v6, v3, v8

    shr-int/lit8 v2, v6, 0x8

    .line 1293
    .local v2, "originalFlags":I
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 1294
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->checkHorizontalSwipe(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)I

    move-result v4

    .local v4, "swipeDir":I
    if-lez v4, :cond_3

    .line 1296
    and-int v5, v2, v4

    if-nez v5, :cond_0

    .line 1298
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 1299
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v5

    .line 1298
    invoke-static {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0

    .line 1303
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->checkVerticalSwipe(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)I

    move-result v4

    if-gtz v4, :cond_0

    :cond_4
    move v4, v5

    .line 1320
    goto :goto_0

    .line 1307
    .end local v4    # "swipeDir":I
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->checkVerticalSwipe(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)I

    move-result v4

    .restart local v4    # "swipeDir":I
    if-gtz v4, :cond_0

    .line 1310
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->checkHorizontalSwipe(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)I

    move-result v4

    if-lez v4, :cond_4

    .line 1312
    and-int v5, v2, v4

    if-nez v5, :cond_0

    .line 1314
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 1315
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v5

    .line 1314
    invoke-static {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public attachToRecyclerView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 481
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-ne v1, p1, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v1, :cond_2

    .line 485
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->destroyCallbacks()V

    .line 487
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 488
    const-string v1, "SeslItemTouchHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachToRecyclerView, recyclerView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 491
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 492
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 493
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 494
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mMaxSwipeVelocity:F

    .line 495
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->setupCallbacks()V

    .line 498
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setItemTouchHelper(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V

    goto :goto_0
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .prologue
    .line 1069
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-nez v9, :cond_0

    const/4 v9, 0x2

    if-ne p1, v9, :cond_0

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    .line 1070
    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1071
    :cond_0
    const/4 v9, 0x0

    .line 1123
    :goto_0
    return v9

    .line 1073
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getScrollState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1074
    const/4 v9, 0x0

    goto :goto_0

    .line 1076
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v6

    .line 1077
    .local v6, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v6, :cond_3

    .line 1078
    const/4 v9, 0x0

    goto :goto_0

    .line 1080
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v9, v10, v6}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v4

    .line 1082
    .local v4, "movementFlags":I
    const v9, 0xff00

    and-int/2addr v9, v4

    shr-int/lit8 v5, v9, 0x8

    .line 1085
    .local v5, "swipeFlags":I
    if-nez v5, :cond_4

    .line 1086
    const/4 v9, 0x0

    goto :goto_0

    .line 1091
    :cond_4
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 1092
    .local v7, "x":F
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 1095
    .local v8, "y":F
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v7, v9

    .line 1096
    .local v2, "dx":F
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchY:F

    sub-float v3, v8, v9

    .line 1099
    .local v3, "dy":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1100
    .local v0, "absDx":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1102
    .local v1, "absDy":F
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_5

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSlop:I

    int-to-float v9, v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_5

    .line 1103
    const/4 v9, 0x0

    goto :goto_0

    .line 1105
    :cond_5
    cmpl-float v9, v0, v1

    if-lez v9, :cond_7

    .line 1106
    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_6

    and-int/lit8 v9, v5, 0x4

    if-nez v9, :cond_6

    .line 1107
    const/4 v9, 0x0

    goto :goto_0

    .line 1109
    :cond_6
    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x8

    if-nez v9, :cond_9

    .line 1110
    const/4 v9, 0x0

    goto :goto_0

    .line 1113
    :cond_7
    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_8

    and-int/lit8 v9, v5, 0x1

    if-nez v9, :cond_8

    .line 1114
    const/4 v9, 0x0

    goto :goto_0

    .line 1116
    :cond_8
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_9

    and-int/lit8 v9, v5, 0x2

    if-nez v9, :cond_9

    .line 1117
    const/4 v9, 0x0

    goto :goto_0

    .line 1120
    :cond_9
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    .line 1121
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    .line 1122
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v9}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 1123
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "childRect"    # Landroid/graphics/Rect;
    .param p3, "isDraggedItem"    # Z
    .param p4, "isAllowDragItem"    # Z

    .prologue
    .line 606
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDragGrabHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 607
    .local v0, "dragGrabHandleDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 608
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandleRect:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->getDragGrabHandleHitRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 610
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragGrabHandleRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 611
    if-eqz p3, :cond_1

    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->PRESSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 612
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 613
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 615
    :cond_0
    return-void

    .line 611
    :cond_1
    sget-object v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method endRecoverAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)I
    .locals 4
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .prologue
    .line 1004
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1005
    .local v2, "recoverAnimSize":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1006
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    .line 1007
    .local v0, "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-ne v3, p1, :cond_1

    .line 1008
    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 1009
    iget-boolean v3, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    .line 1010
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->cancel()V

    .line 1012
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1013
    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 1016
    .end local v0    # "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    :goto_1
    return v3

    .line 1005
    .restart local v0    # "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1016
    .end local v0    # "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method findAnimation(Landroid/view/MotionEvent;)Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1243
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 1253
    :cond_0
    :goto_0
    return-object v0

    .line 1246
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 1247
    .local v2, "target":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1248
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    .line 1249
    .local v0, "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eq v4, v2, :cond_0

    .line 1247
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    :cond_2
    move-object v0, v3

    .line 1253
    goto :goto_0
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1129
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1130
    .local v5, "y":F
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v6, :cond_0

    .line 1131
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v2, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1132
    .local v2, "selectedView":Landroid/view/View;
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartX:F

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartY:F

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    add-float/2addr v7, v8

    invoke-static {v2, v4, v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1143
    .end local v2    # "selectedView":Landroid/view/View;
    :goto_0
    return-object v2

    .line 1136
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1137
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    .line 1138
    .local v0, "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v3, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1139
    .local v3, "view":Landroid/view/View;
    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mX:F

    iget v7, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v3

    .line 1140
    goto :goto_0

    .line 1136
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1143
    .end local v0    # "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p4, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 1022
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1023
    return-void
.end method

.method public getSelectedViewHolder()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    return-object v0
.end method

.method hasRunningRecoverAnim()Z
    .locals 3

    .prologue
    .line 816
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 817
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 818
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    iget-boolean v2, v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v2, :cond_0

    .line 819
    const/4 v2, 0x1

    .line 822
    :goto_1
    return v2

    .line 817
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method moveIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 944
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getMoveThreshold(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)F

    move-result v9

    .line 952
    .local v9, "threshold":F
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartX:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    add-float/2addr v0, v1

    float-to-int v6, v0

    .line 953
    .local v6, "x":I
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartY:F

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    add-float/2addr v0, v1

    float-to-int v7, v0

    .line 954
    .local v7, "y":I
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 955
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v6, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 956
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v9

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 959
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->findSwapTargets(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v8

    .line 960
    .local v8, "swapTargets":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    invoke-virtual {v0, p1, v8, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->chooseDropTarget(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;II)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v4

    .line 965
    .local v4, "target":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v4, :cond_3

    .line 966
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 967
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 970
    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 971
    .local v5, "toPosition":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    .line 972
    .local v3, "fromPosition":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v1, p1, v4}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onMoved(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;III)V

    goto/16 :goto_0
.end method

.method obtainVelocityTracker()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1029
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1030
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 981
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 985
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 986
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v0

    .line 987
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v0, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-ne v0, v1, :cond_2

    .line 991
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 993
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->endRecoverAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)I

    .line 994
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    .line 588
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChildPosition:I

    .line 589
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 590
    .local v7, "dy":F
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->getSelectedDxDy([F)V

    .line 592
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 593
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 597
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "state"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$State;

    .prologue
    const/4 v10, 0x1

    .line 552
    const/4 v6, 0x0

    .local v6, "dx":F
    const/4 v7, 0x0

    .line 553
    .local v7, "dy":F
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->getSelectedDxDy([F)V

    .line 555
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 556
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    aget v7, v0, v10

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 563
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDragGrabHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 564
    .local v8, "dragGrabHandleDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 568
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 569
    .local v9, "selectedRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 570
    invoke-virtual {p0, p1, v9, v10, v10}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 574
    .end local v9    # "selectedRect":Landroid/graphics/Rect;
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mIsRecoverAnimationUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTempViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v0, :cond_2

    .line 578
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 579
    .restart local v9    # "selectedRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTempViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 580
    invoke-virtual {p0, p1, v9, v10, v10}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->drawDragHandle(Landroid/graphics/Canvas;Landroid/graphics/Rect;ZZ)V

    .line 583
    .end local v9    # "selectedRect":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method postDispatchSwipe(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;I)V
    .locals 2
    .param p1, "anim"    # Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$4;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 813
    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1403
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1404
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1406
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mChildDrawingOrderCallback:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setChildDrawingOrderCallback(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ChildDrawingOrderCallback;)V

    .line 1410
    :cond_0
    return-void
.end method

.method scrollIfNecessary()Z
    .locals 27

    .prologue
    .line 829
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-nez v5, :cond_0

    .line 830
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 831
    const/4 v5, 0x0

    .line 888
    :goto_0
    return v5

    .line 833
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 834
    .local v24, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v6, v14

    if-nez v5, :cond_8

    const-wide/16 v10, 0x0

    .line 836
    .local v10, "scrollDuration":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v22

    .line 837
    .local v22, "lm":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    .line 838
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 840
    :cond_1
    const/4 v8, 0x0

    .line 841
    .local v8, "scrollX":I
    const/16 v16, 0x0

    .line 842
    .local v16, "scrollY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 843
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 844
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    add-float/2addr v5, v6

    float-to-int v12, v5

    .line 845
    .local v12, "curX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v12, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v6

    sub-int v21, v5, v6

    .line 846
    .local v21, "leftDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_9

    if-gez v21, :cond_9

    .line 847
    move/from16 v8, v21

    .line 857
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    :cond_2
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 858
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    add-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v20, v0

    .line 859
    .local v20, "curY":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v20, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v6

    sub-int v26, v5, v6

    .line 860
    .local v26, "topDiff":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    if-gez v26, :cond_a

    .line 861
    move/from16 v16, v26

    .line 870
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_3
    :goto_3
    if-eqz v8, :cond_4

    .line 871
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 872
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 873
    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v9

    .line 871
    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IIIJ)I

    move-result v8

    .line 875
    :cond_4
    if-eqz v16, :cond_5

    .line 876
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 877
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 878
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v17

    move-wide/from16 v18, v10

    .line 876
    invoke-virtual/range {v13 .. v19}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IIIJ)I

    move-result v16

    .line 880
    :cond_5
    if-nez v8, :cond_6

    if-eqz v16, :cond_b

    .line 881
    :cond_6
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragScrollStartTimeInMs:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v6, v14

    if-nez v5, :cond_7

    .line 882
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 884
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move/from16 v0, v16

    invoke-virtual {v5, v8, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollBy(II)V

    .line 885
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 834
    .end local v8    # "scrollX":I
    .end local v10    # "scrollDuration":J
    .end local v16    # "scrollY":I
    .end local v22    # "lm":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v10, v24, v6

    goto/16 :goto_1

    .line 848
    .restart local v8    # "scrollX":I
    .restart local v10    # "scrollDuration":J
    .restart local v12    # "curX":I
    .restart local v16    # "scrollY":I
    .restart local v21    # "leftDiff":I
    .restart local v22    # "lm":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 849
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 850
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 851
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v23, v5, v6

    .line 852
    .local v23, "rightDiff":I
    if-lez v23, :cond_2

    .line 853
    move/from16 v8, v23

    goto/16 :goto_2

    .line 862
    .end local v12    # "curX":I
    .end local v21    # "leftDiff":I
    .end local v23    # "rightDiff":I
    .restart local v20    # "curY":I
    .restart local v26    # "topDiff":I
    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 863
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v5, v5, v20

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 864
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int v4, v5, v6

    .line 865
    .local v4, "bottomDiff":I
    if-lez v4, :cond_3

    .line 866
    move/from16 v16, v4

    goto/16 :goto_3

    .line 887
    .end local v4    # "bottomDiff":I
    .end local v20    # "curY":I
    .end local v26    # "topDiff":I
    :cond_b
    const-wide/high16 v6, -0x8000000000000000L

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 888
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 22
    .param p1, "selected"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 659
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    move/from16 v0, p2

    if-ne v0, v5, :cond_0

    .line 790
    :goto_0
    return-void

    .line 662
    :cond_0
    const-wide/high16 v20, -0x8000000000000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 663
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    .line 665
    .local v8, "prevActionState":I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->endRecoverAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)I

    .line 666
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    .line 667
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    .line 671
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 672
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->addChildDrawingOrderCallback()V

    .line 674
    :cond_1
    const/4 v5, 0x1

    mul-int/lit8 v14, p2, 0x8

    add-int/lit8 v14, v14, 0x8

    shl-int/2addr v5, v14

    add-int/lit8 v15, v5, -0x1

    .line 676
    .local v15, "actionStateMask":I
    const/16 v18, 0x0

    .line 678
    .local v18, "preventLayout":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v5, :cond_2

    .line 679
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 680
    .local v6, "prevSelected":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v5, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 681
    const/4 v5, 0x2

    if-ne v8, v5, :cond_6

    const/4 v13, 0x0

    .line 683
    .local v13, "swipeDir":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->releaseVelocityTracker()V

    .line 687
    sparse-switch v13, :sswitch_data_0

    .line 701
    const/4 v11, 0x0

    .line 702
    .local v11, "targetTranslateX":F
    const/4 v12, 0x0

    .line 704
    .local v12, "targetTranslateY":F
    :goto_2
    const/4 v5, 0x2

    if-ne v8, v5, :cond_7

    .line 705
    const/16 v7, 0x8

    .line 711
    .local v7, "animationType":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->getSelectedDxDy([F)V

    .line 712
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x0

    aget v9, v5, v14

    .line 713
    .local v9, "currentTranslateX":F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mTmpPosition:[F

    const/4 v14, 0x1

    aget v10, v5, v14

    .line 714
    .local v10, "currentTranslateY":F
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;

    move-object/from16 v5, p0

    move-object v14, v6

    invoke-direct/range {v4 .. v14}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIFFFFILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 757
    .local v4, "rv":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    sub-float v20, v11, v9

    sub-float v21, v12, v10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v14, v7, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getAnimationDuration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IFF)J

    move-result-wide v16

    .line 759
    .local v16, "duration":J
    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 760
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->start()V

    .line 762
    const/16 v18, 0x1

    .line 767
    .end local v4    # "rv":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    .end local v7    # "animationType":I
    .end local v9    # "currentTranslateX":F
    .end local v10    # "currentTranslateY":F
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "swipeDir":I
    .end local v16    # "duration":J
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 769
    .end local v6    # "prevSelected":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_2
    if-eqz p1, :cond_3

    .line 770
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 771
    move-object/from16 v0, p1

    invoke-virtual {v5, v14, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v5

    and-int/2addr v5, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    mul-int/lit8 v14, v14, 0x8

    shr-int/2addr v5, v14

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedFlags:I

    .line 773
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartX:F

    .line 774
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedStartY:F

    .line 775
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 777
    const/4 v5, 0x2

    move/from16 v0, p2

    if-ne v0, v5, :cond_3

    .line 778
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 781
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    .line 782
    .local v19, "rvParent":Landroid/view/ViewParent;
    if-eqz v19, :cond_4

    .line 783
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 785
    :cond_4
    if-nez v18, :cond_5

    .line 786
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 788
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActionState:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v14, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onSelectedChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 789
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    goto/16 :goto_0

    .line 682
    .end local v19    # "rvParent":Landroid/view/ViewParent;
    .restart local v6    # "prevSelected":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->swipeIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v13

    goto/16 :goto_1

    .line 692
    .restart local v13    # "swipeDir":I
    :sswitch_0
    const/4 v12, 0x0

    .line 693
    .restart local v12    # "targetTranslateY":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float v11, v5, v14

    .line 694
    .restart local v11    # "targetTranslateX":F
    goto/16 :goto_2

    .line 697
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    :sswitch_1
    const/4 v11, 0x0

    .line 698
    .restart local v11    # "targetTranslateX":F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float v12, v5, v14

    .line 699
    .restart local v12    # "targetTranslateY":F
    goto/16 :goto_2

    .line 706
    :cond_7
    if-lez v13, :cond_8

    .line 707
    const/4 v7, 0x2

    .restart local v7    # "animationType":I
    goto/16 :goto_3

    .line 709
    .end local v7    # "animationType":I
    :cond_8
    const/4 v7, 0x4

    .restart local v7    # "animationType":I
    goto/16 :goto_3

    .line 764
    .end local v7    # "animationType":I
    .end local v11    # "targetTranslateX":F
    .end local v12    # "targetTranslateY":F
    .end local v13    # "swipeDir":I
    :cond_9
    iget-object v5, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5, v14, v6}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto/16 :goto_4

    .line 783
    .end local v6    # "prevSelected":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v19    # "rvParent":Landroid/view/ViewParent;
    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    .line 687
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public startDrag(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->hasDragFlag(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    const-string v0, "SeslItemTouchHelper"

    const-string v1, "Start drag has been called but swiping is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :goto_0
    return-void

    .line 1185
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eq v0, v1, :cond_1

    .line 1186
    const-string v0, "SeslItemTouchHelper"

    const-string v1, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this SeslItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1190
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->obtainVelocityTracker()V

    .line 1191
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    .line 1192
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public startSwipe(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->hasSwipeFlag(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    const-string v0, "SeslItemTouchHelper"

    const-string v1, "Start swipe has been called but dragging is not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eq v0, v1, :cond_1

    .line 1233
    const-string v0, "SeslItemTouchHelper"

    const-string v1, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this SeslItemTouchHelper."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1237
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->obtainVelocityTracker()V

    .line 1238
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    .line 1239
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 1257
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1258
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1261
    .local v1, "y":F
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    .line 1262
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchY:F

    sub-float v2, v1, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    .line 1263
    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_0

    .line 1264
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    .line 1266
    :cond_0
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_1

    .line 1267
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    .line 1269
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 1270
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    .line 1272
    :cond_2
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_3

    .line 1273
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    .line 1275
    :cond_3
    return-void
.end method
