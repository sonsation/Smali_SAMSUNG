.class public Lcom/android/launcher3/home/HotseatDragController;
.super Ljava/lang/Object;
.source "HotseatDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragState;


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final REORDER_DELAY:I = 0x96

.field private static final SCREENID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private static mReorderAnimSet:Landroid/animation/AnimatorSet;


# instance fields
.field private mContent:Lcom/android/launcher3/home/HotseatCellLayout;

.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragViewVisualCenter:[F

.field private mEmptyCellRank:I

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHotseat:Lcom/android/launcher3/home/Hotseat;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPrevTargetRank:I

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mRestorePosition:Z

.field private mTargetCell:[I

.field private mTargetRank:I

.field private mTempPt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1332
    new-instance v0, Lcom/android/launcher3/home/HotseatDragController$6;

    invoke-direct {v0}, Lcom/android/launcher3/home/HotseatDragController$6;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HotseatDragController;->SCREENID_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/Hotseat;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hotseat"    # Lcom/android/launcher3/home/Hotseat;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    .line 77
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 80
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    .line 82
    iput v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    .line 85
    iput-boolean v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    .line 87
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 1037
    new-instance v0, Lcom/android/launcher3/home/HotseatDragController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HotseatDragController$4;-><init>(Lcom/android/launcher3/home/HotseatDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 93
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 94
    iput-object p2, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    .line 96
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 99
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HotseatDragController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HotseatDragController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HotseatDragController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$200()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 64
    sput-object p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HotseatDragController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HotseatDragController;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/home/HotseatDragController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HotseatDragController;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HotseatDragController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HotseatDragController;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/home/HotseatCellLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HotseatDragController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HotseatDragController;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V
    .locals 20
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "cellLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p3, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 336
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 337
    .local v19, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 339
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 341
    .local v3, "finalPos":[I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HotseatDragController;->getFinalPositionForDropAnimation([ILcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[I)V

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    aget v8, v3, v2

    const/4 v2, 0x1

    aget v9, v3, v2

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x2

    const/16 v17, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v18, v0

    move-object/from16 v5, p3

    move-object/from16 v15, p4

    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 346
    return-void
.end method

.method private cancelReorder()V
    .locals 1

    .prologue
    .line 1069
    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1070
    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1072
    :cond_0
    return-void
.end method

.method private commitTempPlacement()V
    .locals 7

    .prologue
    .line 1051
    iget-object v6, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 1052
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 1053
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1054
    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1055
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1056
    .local v5, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1057
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v4, :cond_0

    .line 1058
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    .line 1059
    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1060
    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1061
    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 1062
    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 1053
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1065
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HotseatDragController;->commit(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1066
    return-void
.end method

.method private getFinalPositionForDropAnimation([ILcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[I)V
    .locals 10
    .param p1, "loc"    # [I
    .param p2, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p3, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p4, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p5, "targetCell"    # [I

    .prologue
    .line 312
    iget v3, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 313
    .local v3, "spanX":I
    iget v4, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 315
    .local v4, "spanY":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 316
    .local v5, "r":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 318
    const/4 v0, 0x0

    iget v1, v5, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    .line 319
    const/4 v0, 0x1

    iget v1, v5, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    .line 321
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v6

    .line 323
    .local v6, "cellLayoutScale":F
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v0

    int-to-float v7, v0

    .line 324
    .local v7, "iconMarginTop":F
    const/4 v0, 0x0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    const/4 v7, 0x0

    .line 325
    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    .line 326
    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    mul-float v2, v6, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    .line 327
    invoke-virtual {p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v2, v8

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    .line 329
    invoke-virtual {p2}, Lcom/android/launcher3/common/drag/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 330
    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2}, Lcom/android/launcher3/common/drag/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, p1, v0

    .line 332
    :cond_1
    return-void
.end method

.method private initDragRanks()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    .line 112
    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    .line 113
    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    .line 114
    return-void
.end method

.method private isDragOverAppsButton([I)Z
    .locals 6
    .param p1, "targetCell"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1191
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    aget v4, p1, v3

    aget v5, p1, v2

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1192
    .local v0, "dragOverView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1193
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    .line 1194
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 1198
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 996
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 578
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 580
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v1, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_0

    .line 581
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 586
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 587
    return-void

    .line 583
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method private onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 29
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 414
    new-instance v18, Lcom/android/launcher3/home/HotseatDragController$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HotseatDragController$3;-><init>(Lcom/android/launcher3/home/HotseatDragController;)V

    .line 421
    .local v18, "exitDragStateRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 422
    .local v21, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v26, v0

    .line 423
    .local v26, "spanX":I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v27, v0

    .line 425
    .local v27, "spanY":I
    const-wide/16 v16, -0x65

    .line 427
    .local v16, "container":J
    move-object/from16 v0, v21

    instance-of v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v4, :cond_0

    move-object/from16 v0, v21

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_1

    .line 428
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/ItemInfo;->isAppOrShortcutType()Z

    move-result v4

    if-nez v4, :cond_2

    .line 575
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v4, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v22, v0

    .line 433
    .local v22, "isFolderDrop":Z
    const/4 v14, 0x0

    .line 434
    .local v14, "cancelDropFolder":Z
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 435
    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    const/16 v23, 0x1

    .line 439
    .local v23, "isFromHomeFolder":Z
    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v15, "canceledObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 463
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 435
    .end local v15    # "canceledObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v23    # "isFromHomeFolder":Z
    :cond_3
    const/16 v23, 0x0

    goto :goto_1

    .line 445
    .restart local v15    # "canceledObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v23    # "isFromHomeFolder":Z
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v23, :cond_5

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 446
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v25

    .line 447
    .local v25, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v4, v25

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v28

    .line 466
    .local v28, "view":Landroid/view/View;
    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 467
    move-object/from16 v21, v25

    .line 472
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    if-eqz v4, :cond_14

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move/from16 v7, v26

    move/from16 v8, v27

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 476
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v8, 0x0

    move-object/from16 v7, v28

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 479
    if-nez v22, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->hasFolderItem(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    goto/16 :goto_0

    .end local v25    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v28    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v25, v21

    .line 446
    goto/16 :goto_2

    .line 451
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    .line 452
    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v25

    .line 453
    .restart local v25    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v4, :cond_6

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v4, v25

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 456
    :cond_6
    if-eqz v25, :cond_7

    move-object/from16 v4, v25

    .line 457
    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZZLandroid/content/Context;)V

    .line 459
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v6, v25

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v28

    .line 461
    .restart local v28    # "view":Landroid/view/View;
    goto/16 :goto_3

    .end local v25    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v28    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v25, v21

    .line 452
    goto :goto_4

    .line 485
    .restart local v25    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v28    # "view":Landroid/view/View;
    :cond_9
    const/4 v14, 0x1

    .line 488
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 489
    if-nez v22, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->hasFolderItem(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    goto/16 :goto_0

    .line 495
    :cond_b
    const/4 v14, 0x1

    .line 497
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 499
    if-eqz v14, :cond_f

    .line 500
    if-nez v22, :cond_10

    .line 501
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_d

    .line 502
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v14, v6}, Lcom/android/launcher3/home/HotseatDragController;->onDropExtraObjects(Ljava/util/ArrayList;ZZZ)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 504
    :cond_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 505
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 506
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v20, v4, 0x1

    .line 507
    .local v20, "fullCnt":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v4, v15, v0, v5, v1}, Lcom/android/launcher3/home/HomeController;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 506
    .end local v20    # "fullCnt":I
    :cond_e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v20, v4, 0x1

    goto :goto_5

    .line 512
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move/from16 v7, v26

    move/from16 v8, v27

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 519
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v24

    .line 520
    .local v24, "isFull":Z
    if-nez v24, :cond_11

    if-eqz v14, :cond_15

    if-eqz v22, :cond_15

    .line 521
    :cond_11
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    .end local v25    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_12
    :goto_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_13

    .line 560
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v14, v6}, Lcom/android/launcher3/home/HotseatDragController;->onDropExtraObjects(Ljava/util/ArrayList;ZZZ)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 563
    :cond_13
    if-eqz v24, :cond_19

    .line 564
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 565
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/HotseatDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->showNoSpacePageforHotseat()V

    goto/16 :goto_0

    .line 516
    .end local v24    # "isFull":Z
    .restart local v25    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/launcher3/home/HotseatCellLayout;->findCellForSpan([IIIZ)Z

    goto :goto_6

    .line 523
    .restart local v24    # "isFull":Z
    :cond_15
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-nez v4, :cond_16

    .line 524
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v19

    .line 525
    .local v19, "folder":Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_16

    .line 526
    check-cast v19, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v19    # "folder":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->updateDeletedFolder()V

    .line 530
    :cond_16
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_17

    .line 531
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCells(IIZZ)V

    .line 536
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v6, -0x65

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v11, v5, v11

    const/4 v12, -0x1

    move-object/from16 v5, v21

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 538
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, v21

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_18

    .line 539
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v4, :cond_18

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    check-cast v25, Lcom/android/launcher3/folder/FolderInfo;

    .end local v25    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 546
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v6, -0x65

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v11, v5, v11

    move-object/from16 v0, v21

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v5, v28

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 549
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/launcher3/home/HotseatDragController;->sayDragTalkBack(ZZII)V

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->onDropChild(Landroid/view/View;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 554
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v4, :cond_12

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_7

    .line 569
    :cond_19
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 570
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1a

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 571
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v20, v4, 0x1

    .line 572
    .restart local v20    # "fullCnt":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v4, v15, v0, v5, v1}, Lcom/android/launcher3/home/HomeController;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 571
    .end local v20    # "fullCnt":I
    :cond_1a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v20, v4, 0x1

    goto :goto_8

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 349
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 351
    .local v9, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getDistanceFromCell(FF[I)F

    move-result v4

    .line 362
    .local v4, "distance":F
    const/4 v11, 0x0

    .line 363
    .local v11, "willAddToFolder":Z
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willCreateUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;[IFZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 365
    invoke-virtual {v1, v0, v2, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willAddToExistingUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;[IF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    :cond_1
    const/4 v11, 0x1

    .line 368
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    .line 369
    .local v8, "dropOverView":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 371
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v0, v1, v2

    .line 372
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v2, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v0, v1, v2

    .line 393
    .end local v8    # "dropOverView":Landroid/view/View;
    :cond_2
    :goto_0
    const-wide/16 v6, -0x65

    .line 394
    .local v6, "container":J
    new-instance v10, Lcom/android/launcher3/home/HotseatDragController$2;

    invoke-direct {v10, p0, v9}, Lcom/android/launcher3/home/HotseatDragController$2;-><init>(Lcom/android/launcher3/home/HotseatDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    .line 403
    .local v10, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    if-eqz v11, :cond_6

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 405
    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    .line 410
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/home/HotseatDragController;->sayDragTalkBack(ZZII)V

    .line 411
    .end local v6    # "container":J
    .end local v10    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    :goto_2
    return-void

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 377
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 381
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->showNoSpacePageforHotseat()V

    goto :goto_2

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    .line 385
    .restart local v8    # "dropOverView":Landroid/view/View;
    if-eqz v8, :cond_2

    .line 386
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 387
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v0, v1, v2

    .line 388
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v2, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v0, v1, v2

    goto :goto_0

    .line 407
    .end local v8    # "dropOverView":Landroid/view/View;
    .restart local v6    # "container":J
    .restart local v10    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-direct {p0, v9, v0, v1, v10}, Lcom/android/launcher3/home/HotseatDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;ZZZ)Ljava/util/ArrayList;
    .locals 26
    .param p2, "restored"    # Z
    .param p3, "cancelDropFolder"    # Z
    .param p4, "notExternal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;ZZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v23, "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v14, "canceledObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 595
    .local v15, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    if-eqz p3, :cond_1

    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    .line 598
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 599
    :cond_2
    if-eqz p4, :cond_3

    .line 601
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 603
    :cond_3
    move/from16 v0, p2

    iput-boolean v0, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    .line 604
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    :cond_4
    iget-object v0, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 609
    .local v20, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p2, :cond_5

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    .line 610
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 614
    :cond_5
    if-eqz p2, :cond_9

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    .line 616
    .local v16, "container":J
    :goto_1
    const-wide/16 v4, -0x65

    cmp-long v2, v16, v4

    if-nez v2, :cond_10

    .line 617
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 618
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v21, 0x1

    .line 619
    .local v21, "isItemInFolder":Z
    :goto_2
    const/16 v18, 0x0

    .line 621
    .local v18, "folder":Landroid/view/View;
    if-eqz v21, :cond_6

    .line 622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v18

    .line 623
    if-nez p2, :cond_6

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v4, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    .line 628
    :cond_6
    const/16 v22, 0x0

    .line 629
    .local v22, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v2, v2, Lcom/android/launcher3/home/WorkspaceDragController;

    if-eqz v2, :cond_b

    .line 630
    :cond_7
    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v24

    .line 651
    .local v24, "view":Landroid/view/View;
    :goto_3
    if-eqz v22, :cond_14

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_14

    .line 652
    move-object/from16 v3, v22

    .line 655
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_4
    if-eqz p2, :cond_e

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x0

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v5, v2, v4

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x1

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v5, v2, v4

    .line 661
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    .line 662
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    .line 664
    if-eqz p2, :cond_8

    if-nez v21, :cond_f

    .line 667
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v8, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v9, v4, v5

    const/4 v10, -0x1

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v10, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v11, v2, v5

    iget v12, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v5, v24

    move-wide/from16 v6, v16

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->onDropChild(Landroid/view/View;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 674
    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_0

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iget-object v4, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v0, v24

    invoke-virtual {v2, v4, v0, v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_0

    .line 614
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v16    # "container":J
    .end local v18    # "folder":Landroid/view/View;
    .end local v21    # "isItemInFolder":Z
    .end local v22    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v24    # "view":Landroid/view/View;
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_9
    const-wide/16 v16, -0x65

    goto/16 :goto_1

    .line 618
    .restart local v16    # "container":J
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 632
    .restart local v18    # "folder":Landroid/view/View;
    .restart local v21    # "isItemInFolder":Z
    .restart local v22    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_b
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 647
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 635
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 636
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v22

    .line 637
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v2, v22

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v24

    .line 638
    .restart local v24    # "view":Landroid/view/View;
    goto/16 :goto_3

    .end local v24    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v22, v20

    .line 636
    goto :goto_6

    .line 640
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 641
    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v22

    .line 642
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v4, v22

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v24

    .line 645
    .restart local v24    # "view":Landroid/view/View;
    goto/16 :goto_3

    .end local v24    # "view":Landroid/view/View;
    :cond_d
    move-object/from16 v22, v20

    .line 641
    goto :goto_7

    .line 659
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v24    # "view":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/launcher3/home/HotseatCellLayout;->findCellForSpan([IIIZ)Z

    goto/16 :goto_5

    .line 678
    :cond_f
    if-eqz v18, :cond_0

    .line 679
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/folder/FolderInfo;

    .line 680
    .local v19, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v5, v2, v4

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x1

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v5, v2, v4

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    goto/16 :goto_0

    .line 686
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v18    # "folder":Landroid/view/View;
    .end local v19    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v21    # "isItemInFolder":Z
    .end local v22    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v24    # "view":Landroid/view/View;
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_10
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 687
    move/from16 v0, p2

    iput-boolean v0, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    move-object/from16 v3, v20

    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto/16 :goto_0

    .line 691
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v15    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v16    # "container":J
    :cond_11
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 692
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    .line 695
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    .line 697
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_13

    .line 698
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 699
    .restart local v15    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v3, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 700
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez p4, :cond_13

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v2

    if-nez v2, :cond_13

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v18

    .line 702
    .restart local v18    # "folder":Landroid/view/View;
    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_13

    .line 703
    check-cast v18, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v18    # "folder":Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->updateDeletedFolder()V

    .line 708
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v15    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_13
    return-object v14

    .restart local v15    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .restart local v16    # "container":J
    .restart local v18    # "folder":Landroid/view/View;
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v21    # "isItemInFolder":Z
    .restart local v22    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v24    # "view":Landroid/view/View;
    :cond_14
    move-object/from16 v3, v20

    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto/16 :goto_4

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 20
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "isFromFolder"    # Z

    .prologue
    .line 1293
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1294
    .local v14, "objectInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1295
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v10}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 1298
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v16

    .line 1299
    .local v16, "workspace":Lcom/android/launcher3/home/Workspace;
    if-eqz p2, :cond_3

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v10, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v10, v11}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v12

    .line 1301
    .local v12, "folder":Landroid/view/View;
    if-eqz v12, :cond_1

    .line 1302
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/folder/FolderInfo;

    .line 1304
    .local v13, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v10, v13, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v18, -0x65

    cmp-long v2, v10, v18

    if-nez v2, :cond_2

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    .line 1310
    .local v15, "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v2, v15}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v10, 0x0

    iget v11, v13, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v11, v2, v10

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v10, 0x1

    iget v11, v13, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v11, v2, v10

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    .line 1329
    .end local v12    # "folder":Landroid/view/View;
    .end local v13    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v15    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v10}, Lcom/android/launcher3/common/drag/DragManager;->onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V

    .line 1330
    return-void

    .line 1307
    .restart local v12    # "folder":Landroid/view/View;
    .restart local v13    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_2
    iget-wide v10, v13, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    .restart local v15    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    goto :goto_0

    .line 1316
    .end local v12    # "folder":Landroid/view/View;
    .end local v13    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v15    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v3

    .line 1319
    .local v3, "objectView":Landroid/view/View;
    iget-wide v10, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v18, -0x64

    cmp-long v2, v10, v18

    if-nez v2, :cond_1

    .line 1320
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    iget-wide v4, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1322
    .local v4, "container":J
    iget-wide v6, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1323
    .local v6, "screenId":J
    iget v8, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1324
    .local v8, "cellX":I
    iget v9, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1325
    .local v9, "cellY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget v10, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v11, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1
.end method

.method private sayDragTalkBack(ZZII)V
    .locals 9
    .param p1, "internal"    # Z
    .param p2, "isMovedLayout"    # Z
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I

    .prologue
    const v6, 0x7f0900d5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1351
    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1352
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_3

    .line 1353
    if-eqz p2, :cond_1

    .line 1354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0900d9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0900d8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p4, 0x1

    .line 1355
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    add-int/lit8 v6, p3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, "description":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 1367
    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 1369
    :cond_0
    return-void

    .line 1357
    .end local v0    # "description":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, p4

    .line 1358
    .local v1, "pos":I
    :goto_1
    new-array v3, v8, [Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1359
    .restart local v0    # "description":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "pos":I
    :cond_2
    move v1, p3

    .line 1357
    goto :goto_1

    .line 1361
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, p4

    .line 1362
    .restart local v1    # "pos":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0900d4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    .line 1363
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "description":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "pos":I
    :cond_4
    move v1, p3

    .line 1361
    goto :goto_2
.end method

.method private setReorderTarget()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 1372
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v10

    .line 1373
    .local v10, "target":I
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    if-ne v10, v0, :cond_0

    .line 1414
    :goto_0
    return v3

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v10, 0x1

    :goto_1
    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    move v3, v12

    .line 1379
    goto :goto_0

    .line 1378
    :cond_1
    add-int/lit8 v0, v10, -0x1

    goto :goto_1

    .line 1382
    :cond_2
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_4

    move v7, v10

    .line 1383
    .local v7, "empty":I
    :goto_2
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_3

    iget v10, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    .line 1385
    :cond_3
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 1386
    .local v5, "regionToCenterPoint":[I
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->regionToCenterPoint(IIII[I)V

    .line 1387
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    aget v1, v5, v12

    aget v2, v5, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v8

    .line 1389
    .local v8, "overViewCenterPoint":I
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v12

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v6

    .line 1391
    .local v6, "dragViewCenterPoint":I
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v11

    .line 1392
    .local v11, "targetCell":I
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v9, -0x1

    .line 1394
    .local v9, "revertRank":I
    :goto_3
    if-le v10, v7, :cond_7

    .line 1395
    if-le v6, v8, :cond_6

    .line 1396
    iput v11, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_0

    .line 1382
    .end local v5    # "regionToCenterPoint":[I
    .end local v6    # "dragViewCenterPoint":I
    .end local v7    # "empty":I
    .end local v8    # "overViewCenterPoint":I
    .end local v9    # "revertRank":I
    .end local v11    # "targetCell":I
    :cond_4
    iget v7, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    goto :goto_2

    .restart local v5    # "regionToCenterPoint":[I
    .restart local v6    # "dragViewCenterPoint":I
    .restart local v7    # "empty":I
    .restart local v8    # "overViewCenterPoint":I
    .restart local v11    # "targetCell":I
    :cond_5
    move v9, v3

    .line 1392
    goto :goto_3

    .line 1399
    .restart local v9    # "revertRank":I
    :cond_6
    sub-int v0, v11, v9

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    .line 1409
    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1410
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    aput v1, v0, v3

    goto/16 :goto_0

    .line 1402
    :cond_7
    if-ge v6, v8, :cond_8

    .line 1403
    iput v11, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto/16 :goto_0

    .line 1406
    :cond_8
    add-int v0, v11, v9

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_4

    .line 1412
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    aput v1, v0, v12

    goto/16 :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 835
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    const/4 v0, 0x0

    .line 839
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 8
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "destInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 975
    const-wide/16 v2, -0x65

    .line 976
    .local v2, "container":J
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    const-wide/16 v4, -0x1

    iget v6, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/HomeBindController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JJII)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 2
    .param p1, "targetCell"    # [I
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method public canOpenFolder()Z
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->canMoveHometray()Z

    move-result v0

    return v0
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 971
    return-void
.end method

.method createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6
    .param p1, "targetCell"    # [I
    .param p2, "newView"    # Landroid/view/View;
    .param p3, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v1, 0x0

    .line 1001
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    .prologue
    .line 1208
    const/4 v0, 0x2

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    .line 850
    .local v0, "screenHeight":I
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 851
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 854
    :cond_0
    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 9
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 917
    if-nez p1, :cond_0

    .line 944
    :goto_0
    return v6

    .line 919
    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 921
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v7, :cond_e

    move v0, v5

    .line 922
    .local v0, "app":Z
    :goto_1
    iget v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_f

    move v1, v5

    .line 923
    .local v1, "folder":Z
    :goto_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    .line 924
    .local v2, "homeOnlyMode":Z
    const/4 v4, 0x0

    .line 926
    .local v4, "optionFlags":I
    or-int/lit8 v4, v4, 0x1

    .line 927
    or-int/lit8 v4, v4, 0x20

    .line 928
    if-eqz v2, :cond_1

    or-int/lit16 v4, v4, 0x1000

    .line 929
    :cond_1
    if-eqz v2, :cond_2

    or-int/lit16 v4, v4, 0x2000

    .line 930
    :cond_2
    if-eqz v0, :cond_3

    or-int/lit8 v4, v4, 0x40

    .line 931
    :cond_3
    if-eqz v0, :cond_4

    or-int/lit16 v4, v4, 0x80

    .line 932
    :cond_4
    if-nez v1, :cond_5

    or-int/lit8 v4, v4, 0x2

    .line 933
    :cond_5
    if-eqz v0, :cond_6

    or-int/lit16 v4, v4, 0x100

    .line 934
    :cond_6
    if-eqz v0, :cond_7

    or-int/lit16 v4, v4, 0x200

    .line 935
    :cond_7
    if-nez v1, :cond_8

    or-int/lit16 v4, v4, 0x400

    .line 936
    :cond_8
    if-eqz v1, :cond_9

    or-int/lit8 v4, v4, 0x8

    .line 937
    :cond_9
    if-eqz v1, :cond_a

    or-int/lit16 v4, v4, 0x800

    .line 938
    :cond_a
    if-eqz v0, :cond_b

    or-int/lit16 v4, v4, 0x4000

    .line 939
    :cond_b
    if-eqz v0, :cond_c

    const v5, 0x8000

    or-int/2addr v4, v5

    .line 940
    :cond_c
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSetToZeroPage()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 941
    if-eqz v0, :cond_d

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    :cond_d
    move v6, v4

    .line 944
    goto :goto_0

    .end local v0    # "app":Z
    .end local v1    # "folder":Z
    .end local v2    # "homeOnlyMode":Z
    .end local v4    # "optionFlags":I
    :cond_e
    move v0, v6

    .line 921
    goto :goto_1

    .restart local v0    # "app":Z
    :cond_f
    move v1, v6

    .line 922
    goto :goto_2
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1
    .param p1, "isDrop"    # Z

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method isReorderRunning()Z
    .locals 1

    .prologue
    .line 1075
    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeEmptyCell(IZZ)V
    .locals 1
    .param p1, "targetCell"    # I
    .param p2, "animate"    # Z
    .param p3, "commit"    # Z

    .prologue
    .line 1079
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCells(IIZZ)V

    .line 1080
    return-void
.end method

.method makeEmptyCells(IIZZ)V
    .locals 4
    .param p1, "targetCell"    # I
    .param p2, "emptyCells"    # I
    .param p3, "animate"    # Z
    .param p4, "commit"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1083
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1122
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v2

    add-int v0, v2, p2

    .line 1089
    .local v0, "cellCount":I
    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getMaxCellCount()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 1090
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getMaxCellCount()I

    move-result v0

    .line 1093
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    .line 1095
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getOccupied()[[Z

    move-result-object v1

    .line 1097
    .local v1, "occupied":[[Z
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1098
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1101
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    .line 1109
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatDragController;->isReorderRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1110
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->cancelReorder()V

    .line 1113
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2, p3, v1, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->reorderMakeCells(Z[[ZI)Landroid/animation/AnimatorSet;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    .line 1115
    sget-object v2, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    .line 1116
    sget-object v2, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1119
    :cond_4
    if-eqz p4, :cond_0

    .line 1120
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    goto :goto_0

    .line 1087
    .end local v0    # "cellCount":I
    .end local v1    # "occupied":[[Z
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    .line 1088
    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v2

    add-int v0, v2, p2

    goto :goto_1

    .line 1103
    .restart local v0    # "cellCount":I
    .restart local v1    # "occupied":[[Z
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1106
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_2
.end method

.method mapPointFromSelfToHotseatLayout([F)V
    .locals 5
    .param p1, "xy"    # [F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 986
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    aget v1, p1, v4

    float-to-int v1, v1

    aput v1, v0, v4

    .line 987
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    aget v1, p1, v3

    float-to-int v1, v1

    aput v1, v0, v3

    .line 988
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    .line 989
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    .line 991
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    aget v0, v0, v4

    int-to-float v0, v0

    aput v0, p1, v4

    .line 992
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    aget v0, v0, v3

    int-to-float v0, v0

    aput v0, p1, v3

    .line 993
    return-void
.end method

.method public onDragEnd()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->initDragRanks()V

    .line 142
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Hotseat;->changeGrid(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 145
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 713
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    :goto_0
    return-void

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsOccupiedForAllChild()V

    .line 718
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    .line 719
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->mapPointFromSelfToHotseatLayout([F)V

    .line 721
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v6

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 724
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    .line 731
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    .line 732
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 733
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    .line 734
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    .line 735
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HotseatDragController;->setDragMode(I)V

    .line 737
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->showCancelDropTarget()V

    goto :goto_0

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->setDragEnterTarget(FF)V

    .line 727
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    invoke-virtual {p0, v0, v3, v6}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCell(IZZ)V

    .line 728
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    goto :goto_1
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 742
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    .line 750
    :cond_2
    if-eqz p2, :cond_3

    .line 751
    iput-boolean v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    .line 754
    :cond_3
    if-nez p2, :cond_4

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 755
    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 756
    invoke-virtual {p0, v3, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 760
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    .line 761
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->clearDragOutlines()V

    .line 762
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HotseatDragController;->setDragMode(I)V

    .line 763
    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsOccupiedForAllChild()V

    .line 765
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    goto :goto_0
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 14
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x1

    .line 773
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatDragController;->isReorderRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    iget-object v13, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 778
    .local v13, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v13, :cond_2

    .line 779
    const-string v0, "DropTarget"

    const-string v1, "DragObject has null info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    :cond_2
    iget v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v0, :cond_3

    iget v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    .line 787
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->mapPointFromSelfToHotseatLayout([F)V

    .line 793
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v11

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 796
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v11

    iget v1, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v3

    iget v1, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_6

    .line 797
    :cond_5
    iput-boolean v11, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    .line 800
    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    iget-object v8, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v9, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    .line 802
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    if-eq v0, v3, :cond_9

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 807
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->setReorderTarget()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 808
    iget-object v12, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 809
    .local v12, "dragView":Lcom/android/launcher3/common/drag/DragView;
    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v5, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v7, v0, v11

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v8, v0, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/home/HotseatCellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    .line 814
    .end local v12    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    :goto_1
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    if-eq v0, v1, :cond_8

    .line 815
    invoke-virtual {p0, v11}, Lcom/android/launcher3/home/HotseatDragController;->setDragMode(I)V

    .line 816
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 817
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 818
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    goto/16 :goto_0

    .line 812
    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->clearDragOutlines()V

    goto :goto_1

    .line 819
    :cond_8
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    if-eq v0, v1, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    goto/16 :goto_0

    .line 825
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 826
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    .line 827
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {p0, v11}, Lcom/android/launcher3/home/HotseatDragController;->setDragMode(I)V

    goto/16 :goto_0
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 131
    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 31
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HotseatDragController;->mapPointFromSelfToHotseatLayout([F)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v2, :cond_1

    .line 159
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/HotseatDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 307
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    .line 308
    :goto_1
    return-void

    .line 161
    :cond_1
    new-instance v18, Lcom/android/launcher3/home/HotseatDragController$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HotseatDragController$1;-><init>(Lcom/android/launcher3/home/HotseatDragController;)V

    .line 168
    .local v18, "exitDragStateRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v21, v0

    .line 169
    .local v21, "cell":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v30, v0

    .line 170
    .local v30, "originalLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v2, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v26, v0

    .line 171
    .local v26, "isFolderDrop":Z
    const/16 v20, 0x0

    .line 173
    .local v20, "cancelDropFolder":Z
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v2, :cond_10

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/16 v24, 0x1

    .line 175
    .local v24, "hasMovedLayout":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 178
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 180
    if-eqz v24, :cond_4

    move-object/from16 v6, v30

    .line 181
    .local v6, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v5, v21

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    if-nez v26, :cond_5

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 187
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto/16 :goto_1

    .line 174
    .end local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v24    # "hasMovedLayout":Z
    :cond_3
    const/16 v24, 0x0

    goto :goto_2

    .line 180
    .restart local v24    # "hasMovedLayout":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 190
    .restart local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_5
    const/16 v20, 0x1

    .line 193
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 195
    if-nez v26, :cond_9

    .line 196
    if-eqz v24, :cond_7

    if-eqz v30, :cond_7

    .line 197
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 199
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 200
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 202
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto/16 :goto_1

    .line 205
    :cond_9
    const/16 v20, 0x1

    .line 208
    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    .line 209
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCells(IIZZ)V

    .line 212
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v9, v2

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 217
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 218
    .local v27, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_11

    const/16 v23, 0x1

    .line 220
    .local v23, "foundCell":Z
    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 221
    :cond_c
    const/16 v23, 0x0

    .line 224
    :cond_d
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 226
    .local v25, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v23, :cond_13

    .line 227
    const-wide/16 v10, -0x65

    .line 228
    .local v10, "container":J
    const-wide/16 v12, -0x1

    .line 230
    .local v12, "screenId":J
    if-eqz v24, :cond_e

    .line 232
    if-eqz v30, :cond_12

    .line 233
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 239
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v14, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v15, v2, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v9, v21

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 243
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 244
    .local v28, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v28

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v28

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v28

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v28

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 246
    move-object/from16 v0, v27

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v28

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 247
    move-object/from16 v0, v27

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, v28

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 248
    const/4 v2, 0x1

    move-object/from16 v0, v28

    iput-boolean v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 249
    const/4 v2, 0x0

    move-object/from16 v0, v28

    iput-boolean v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 251
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v28

    iget v14, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v28

    iget v15, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v9, v25

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    .line 254
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/launcher3/home/HotseatDragController;->sayDragTalkBack(ZZII)V

    .line 284
    if-nez v24, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_10

    .line 285
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 289
    .end local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "container":J
    .end local v12    # "screenId":J
    .end local v23    # "foundCell":Z
    .end local v24    # "hasMovedLayout":Z
    .end local v25    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v27    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v28    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_10
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 291
    .restart local v6    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v17, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v19, v0

    move-object/from16 v16, v21

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 300
    :goto_6
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 302
    if-nez v20, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 303
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/launcher3/home/HotseatDragController;->onDropExtraObjects(Ljava/util/ArrayList;ZZZ)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 218
    .restart local v24    # "hasMovedLayout":Z
    .restart local v27    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 235
    .restart local v10    # "container":J
    .restart local v12    # "screenId":J
    .restart local v23    # "foundCell":Z
    .restart local v25    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_12
    const-string v2, "DropTarget"

    const-string v3, "mDragInfo.cell has null parent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 256
    .end local v10    # "container":J
    .end local v12    # "screenId":J
    :cond_13
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 258
    .local v22, "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v22

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    .line 259
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 260
    if-eqz v30, :cond_14

    .line 261
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 265
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    .line 267
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 268
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 269
    .local v29, "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/home/HotseatDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 270
    const/4 v3, 0x0

    move-object/from16 v0, v29

    iput-boolean v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    goto :goto_7

    .line 274
    .end local v29    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_15
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 275
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 279
    :cond_16
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->showNoSpacePageforHotseat()V

    goto/16 :goto_1

    .line 295
    .end local v22    # "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v23    # "foundCell":Z
    .end local v24    # "hasMovedLayout":Z
    .end local v25    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v27    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    .line 298
    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 883
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 913
    :goto_0
    return-void

    .line 885
    :cond_0
    if-nez p3, :cond_2

    .line 886
    invoke-virtual {p0, v8, v10}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 887
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    const-wide/16 v2, -0x65

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v6, v6, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    iget-object v7, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v7, v7, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 889
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->onDropChild(Landroid/view/View;)V

    .line 891
    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 895
    :cond_1
    iput-boolean v10, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 898
    :cond_2
    if-eqz p3, :cond_3

    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 899
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 902
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 903
    invoke-virtual {p0, v8, v8}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 906
    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 907
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    .line 910
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 911
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    .line 912
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    goto :goto_0
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1156
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p1, :cond_2

    .line 1157
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1158
    .local v0, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    .line 1159
    .local v2, "sourceView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1160
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1161
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1164
    .end local v0    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "sourceView":Landroid/view/View;
    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 1166
    :cond_2
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, p1, Lcom/android/launcher3/home/Workspace;

    if-nez v4, :cond_1

    instance-of v4, p1, Lcom/android/launcher3/home/Hotseat;

    if-nez v4, :cond_1

    .line 1173
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1174
    .local v0, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 1175
    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v3

    .line 1176
    .local v3, "sourceView":Landroid/view/View;
    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1177
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5, v2, v3}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0

    .line 1181
    .end local v0    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v3    # "sourceView":Landroid/view/View;
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1182
    if-eqz p2, :cond_3

    .line 1183
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    .line 1184
    .local v1, "fullCnt":I
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p3, v5, v6, v1}, Lcom/android/launcher3/home/HomeController;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;ZI)V

    .line 1187
    .end local v1    # "fullCnt":I
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    .line 1188
    return-void

    .line 1183
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    goto :goto_1
.end method

.method removeEmptyCells(ZZ)V
    .locals 6
    .param p1, "animate"    # Z
    .param p2, "commit"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1125
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1129
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    .line 1131
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HotseatCellLayout;->getOccupied()[[Z

    move-result-object v0

    .line 1133
    .local v0, "occupied":[[Z
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1134
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getEmptyCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    .line 1139
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatDragController;->isReorderRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1140
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->cancelReorder()V

    .line 1143
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->reorderRemoveCells(Z[[Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    .line 1145
    sget-object v1, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    .line 1146
    sget-object v1, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1149
    :cond_3
    if-eqz p2, :cond_0

    .line 1150
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    goto :goto_0

    .line 1136
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getEmptyCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_1
.end method

.method restoreHotseatObjects(Ljava/util/ArrayList;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1212
    .local p1, "hotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 1213
    sget-object v2, Lcom/android/launcher3/home/HotseatDragController;->SCREENID_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1215
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v14

    .line 1216
    .local v14, "anim":Landroid/animation/AnimatorSet;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v16, "bounceAnims":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/animation/Animator;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_1
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1218
    .local v18, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1219
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1220
    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v22, 0x1

    .line 1221
    .local v22, "isFromFolder":Z
    :goto_1
    if-eqz v22, :cond_3

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v20

    .line 1223
    .local v20, "folder":Landroid/view/View;
    if-eqz v20, :cond_1

    .line 1224
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/folder/FolderInfo;

    .line 1225
    .local v21, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v24

    .line 1226
    .local v24, "original":Lcom/android/launcher3/common/base/view/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v5, v2, v4

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iget v5, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v5, v2, v4

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    goto :goto_0

    .line 1220
    .end local v20    # "folder":Landroid/view/View;
    .end local v21    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v22    # "isFromFolder":Z
    .end local v24    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    const/16 v22, 0x0

    goto :goto_1

    .line 1232
    .restart local v22    # "isFromFolder":Z
    :cond_3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v19, v0

    .line 1233
    .local v19, "dragView":Lcom/android/launcher3/common/drag/DragView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v25

    .line 1235
    .local v25, "view":Landroid/view/View;
    if-nez v25, :cond_5

    .line 1290
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v18    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v19    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v22    # "isFromFolder":Z
    .end local v25    # "view":Landroid/view/View;
    :cond_4
    :goto_2
    return-void

    .line 1239
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v18    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .restart local v19    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .restart local v22    # "isFromFolder":Z
    .restart local v25    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1240
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 1244
    :cond_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1245
    .local v23, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    const/4 v2, 0x1

    move-object/from16 v0, v23

    iput-boolean v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1247
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    .line 1248
    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    .line 1249
    .local v17, "countMax":I
    :goto_3
    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v17

    if-le v2, v0, :cond_7

    .line 1250
    move/from16 v0, v17

    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1253
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v10, -0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v11, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v12, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v5, v25

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 1257
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_8

    .line 1258
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1261
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1262
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/home/HomeController;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 1264
    .local v15, "bounceAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/launcher3/home/HotseatDragController$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/home/HotseatDragController$5;-><init>(Lcom/android/launcher3/home/HotseatDragController;Lcom/android/launcher3/common/drag/DragView;)V

    invoke-virtual {v15, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1282
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1248
    .end local v15    # "bounceAnimator":Landroid/animation/ValueAnimator;
    .end local v17    # "countMax":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v17

    goto :goto_3

    .line 1286
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v18    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v19    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v22    # "isFromFolder":Z
    .end local v23    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v25    # "view":Landroid/view/View;
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1287
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1288
    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2
.end method

.method setDragEnterTarget(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 1009
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    float-to-int v1, p1

    float-to-int v2, p2

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    .line 1010
    const/4 v0, 0x2

    new-array v5, v0, [I

    .line 1011
    .local v5, "regionToCenterPoint":[I
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->regionToCenterPoint(IIII[I)V

    .line 1012
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    aget v1, v5, v7

    aget v2, v5, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v6

    .line 1013
    .local v6, "centerPoint":I
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    int-to-float v0, v6

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    .line 1018
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_0

    .line 1023
    :cond_2
    int-to-float v0, v6

    cmpg-float v0, v0, p1

    if-gez v0, :cond_4

    .line 1024
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    .line 1025
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    :cond_3
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_0

    .line 1029
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    .line 1030
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_0
.end method

.method public setDragMode(I)V
    .locals 2
    .param p1, "dragMode"    # I

    .prologue
    .line 949
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 950
    if-nez p1, :cond_2

    .line 951
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 952
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 964
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    .line 966
    :cond_1
    return-void

    .line 953
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 954
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 955
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 956
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    goto :goto_0

    .line 957
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 958
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    .line 959
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 961
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 962
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0
.end method

.method setup(Lcom/android/launcher3/home/HomeController;)V
    .locals 2
    .param p1, "homeController"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 103
    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HotseatCellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    .line 105
    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 107
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->initDragRanks()V

    .line 108
    return-void
.end method

.method startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V
    .locals 2
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p2, "isSource"    # Z

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 118
    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    .line 121
    :cond_0
    if-eqz p2, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->removeView(Landroid/view/View;)V

    .line 125
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    .line 126
    return-void
.end method
