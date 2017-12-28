.class public Lcom/android/launcher3/allapps/controller/AppsDragController;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragScroller;
.implements Lcom/android/launcher3/common/drag/DragState;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;,
        Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final DRAG_OBJECT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppsDragController"

.field private static final sTempPosArray:[I


# instance fields
.field private mAlphabetOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mCustomOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

.field private mDragComplete:Z

.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

.field private mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

.field private mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

.field private mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

.field private mTargetCell:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    .line 921
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$5;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$5;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->DRAG_OBJECT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsPagedView"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    .line 77
    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 78
    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 79
    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 81
    iput v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    .line 86
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    .line 87
    new-instance v0, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    .line 88
    new-instance v0, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    .line 89
    new-instance v0, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    .line 90
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 91
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    .line 97
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAlphabetOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    .line 98
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mCustomOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    .line 748
    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 105
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 106
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mCustomOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/allapps/DragAppIcon;)Lcom/android/launcher3/allapps/DragAppIcon;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;
    .param p1, "x1"    # Lcom/android/launcher3/allapps/DragAppIcon;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->restoreOverLastItems()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragOperator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/controller/AppsDragController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsDragController;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->createEmptyScreen()V

    return-void
.end method

.method private createEmptyScreen()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 895
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    goto :goto_0
.end method

.method private findNearestArea(II)I
    .locals 7
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I

    .prologue
    const/4 v3, 0x1

    .line 308
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v6

    .line 309
    .local v6, "pageIndex":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 310
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 311
    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    .line 314
    :cond_0
    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    mul-int/2addr v1, v2

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getTargetRank()I
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->findNearestArea(II)I

    move-result v0

    return v0
.end method

.method private onDropCompletedWithExtraItems(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 547
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 548
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v8}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 551
    :cond_0
    instance-of v8, p1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v8, :cond_1

    move-object v8, p1

    check-cast v8, Lcom/android/launcher3/folder/view/FolderView;

    .line 552
    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    const/4 v7, 0x1

    .line 553
    .local v7, "targetIsAppsFolder":Z
    :goto_0
    instance-of v6, p1, Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 555
    .local v6, "targetIsApps":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v3, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v5, "successDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v0, "cancelDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-boolean v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v8, :cond_2

    .line 561
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    :goto_1
    iget-object v8, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 567
    .local v1, "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    iget-boolean v9, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v9, :cond_3

    .line 569
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 552
    .end local v0    # "cancelDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v1    # "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v3    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v5    # "successDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v6    # "targetIsApps":Z
    .end local v7    # "targetIsAppsFolder":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 563
    .restart local v0    # "cancelDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v3    # "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v5    # "successDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v6    # "targetIsApps":Z
    .restart local v7    # "targetIsAppsFolder":Z
    :cond_2
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 571
    .restart local v1    # "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 575
    .end local v1    # "dObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_4
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/allapps/controller/DragOperator;->removeEmptyCellIfNecessary(Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 577
    if-nez v7, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    if-eqz v6, :cond_8

    .line 578
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_8

    .line 579
    :cond_6
    invoke-direct {p0, p1, p2, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->placeObjectsToOriginalPosition(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;)V

    .line 587
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/controller/DragOperator;->updateDirtyItemsToDb()V

    .line 588
    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->updateBadgeItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 589
    return-void

    .line 580
    :cond_8
    if-nez v7, :cond_9

    if-eqz v6, :cond_7

    .line 581
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 582
    :cond_9
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v8

    long-to-int v4, v8

    .line 583
    .local v4, "indexScreen":I
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-gez v8, :cond_a

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 585
    .local v2, "droppedPosition":I
    :goto_4
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v8, p2, v4, v2, v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->refreshObjectsToPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;)V

    goto :goto_3

    .line 583
    .end local v2    # "droppedPosition":I
    :cond_a
    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 584
    invoke-virtual {v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v10

    mul-int/2addr v9, v10

    add-int v2, v8, v9

    goto :goto_4
.end method

.method private onDropCompletedWithOutExtraItems(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    .line 478
    if-nez p3, :cond_6

    const/4 v13, 0x1

    .line 479
    .local v13, "restorePosition":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v2, :cond_5

    .line 480
    const/4 v10, 0x0

    .line 481
    .local v10, "homeMakeClone":Z
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 482
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-nez v2, :cond_0

    .line 483
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-wide v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    const/4 v10, 0x1

    .line 487
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v2, :cond_1

    if-eqz v10, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v2, :cond_8

    const/4 v13, 0x1

    .line 488
    :goto_2
    if-eqz v13, :cond_c

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v4, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 490
    .local v4, "cell":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 492
    .local v8, "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->restoreOverLastItems()V

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v3, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v3, v2, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v6, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v6, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 501
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-interface {v2, v3, v5}, Lcom/android/launcher3/allapps/AppsReorderListener;->realTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iput v2, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v2, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v4, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v14, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 508
    .local v14, "screenId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v14

    if-eqz v2, :cond_3

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    long-to-int v3, v14

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    .line 512
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 513
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 514
    .local v12, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v10, :cond_a

    .line 515
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 523
    :goto_3
    invoke-virtual {v12, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 537
    .end local v12    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->updateBadgeItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 543
    .end local v4    # "cell":Landroid/view/View;
    .end local v8    # "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v10    # "homeMakeClone":Z
    .end local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v14    # "screenId":J
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropCompletedWithOutExtra(Z)V

    .line 544
    return-void

    .line 478
    .end local v13    # "restorePosition":Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 483
    .restart local v10    # "homeMakeClone":Z
    .restart local v11    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v13    # "restorePosition":Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 487
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 519
    .restart local v4    # "cell":Landroid/view/View;
    .restart local v8    # "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v12    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v14    # "screenId":J
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 520
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    const/4 v3, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateCountBadge(Landroid/view/View;Z)V

    goto :goto_3

    .line 525
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v9, 0x2d0

    .line 527
    .local v9, "delayDuration":I
    :goto_6
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsDragController$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v12, v4, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Landroid/view/View;)V

    int-to-long v6, v9

    invoke-virtual {v4, v2, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 525
    .end local v9    # "delayDuration":I
    :cond_b
    const/4 v9, 0x0

    goto :goto_6

    .line 539
    .end local v4    # "cell":Landroid/view/View;
    .end local v8    # "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v12    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v14    # "screenId":J
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-interface {v2, v3}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    goto :goto_5
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 231
    new-instance v6, Lcom/android/launcher3/allapps/controller/AppsDragController$2;

    invoke-direct {v6, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    .line 237
    .local v6, "exitDragStateRunnable":Ljava/lang/Runnable;
    iput-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 241
    const-string v0, "AppsDragController"

    const-string v1, "onDropExternal drop through fakeview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 245
    .local v9, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v10

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v2, v2

    iget v3, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v4, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-interface {v0, v9, v1, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 252
    .local v3, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-wide v4, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-interface {v0, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v8

    .line 253
    .local v8, "folderView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/folder/FolderInfo;

    .line 255
    .local v7, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object v4, v11

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, v7, v10}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropCreateFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 271
    :goto_0
    return-void

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropAddToExistingFolder()V

    goto :goto_0

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, p1, v9, v3, v6}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 269
    invoke-direct {p0, p1, v10}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->updateDirtyItemsToDb()V

    goto :goto_0
.end method

.method private onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "internal"    # Z

    .prologue
    .line 274
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 278
    .local v6, "dragItemInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    iget-wide v2, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v2

    iget v3, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method private onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v3, 0x1

    .line 188
    new-instance v10, Lcom/android/launcher3/allapps/controller/AppsDragController$1;

    invoke-direct {v10, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    .line 195
    .local v10, "exitDragStateRunnable":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v7, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 196
    .local v7, "dragView":Landroid/view/View;
    iget-object v11, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 198
    .local v11, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_0

    if-eqz v11, :cond_0

    .line 199
    const-string v0, "AppsDragController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find dropLayout : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v1, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v4, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 206
    :cond_0
    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_2

    .line 207
    iput-object v10, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    .line 213
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v8, 0x0

    move-object v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, v11, v3}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropCreateFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V

    .line 228
    :cond_2
    :goto_0
    return-void

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropAddToExistingFolder()V

    goto :goto_0

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, p1, v11, v7}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)V

    .line 226
    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_0
.end method

.method private onResetScrollArea()V
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    .line 684
    return-void
.end method

.method private placeObjectsToOriginalPosition(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "mainDragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 795
    .local p3, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v2, :cond_3

    .line 796
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 797
    .local v9, "dragItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v5, 0x0

    invoke-interface {v2, v9, v3, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    .line 802
    .end local v9    # "dragItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .local v8, "dragIcon":Landroid/view/View;
    :goto_0
    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsDragController;->DRAG_OBJECT_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 805
    .local v10, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v13, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 806
    .local v13, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v2, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v4

    .line 808
    .local v4, "view":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    move-object v4, v8

    .line 812
    :cond_1
    iget v11, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 813
    .local v11, "indexRank":I
    iget-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v12, v2

    .line 814
    .local v12, "indexScreen":I
    const-wide/16 v2, -0x66

    iput-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v2, v12, v11}, Lcom/android/launcher3/allapps/controller/DragOperator;->makeEmptyCellAndReorderIfNecessary(II)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v4, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 818
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 819
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 820
    .local v14, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 821
    invoke-virtual {v14, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 822
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 825
    .end local v14    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-eqz v2, :cond_0

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v10, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_1

    .line 799
    .end local v4    # "view":Landroid/view/View;
    .end local v8    # "dragIcon":Landroid/view/View;
    .end local v10    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v11    # "indexRank":I
    .end local v12    # "indexScreen":I
    .end local v13    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v8, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .restart local v8    # "dragIcon":Landroid/view/View;
    goto :goto_0

    .line 831
    :cond_4
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-nez v2, :cond_5

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateCountBadge(Landroid/view/View;Z)V

    .line 834
    :cond_5
    return-void
.end method

.method private restoreOverLastItems()V
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AppsReorderListener;->getExistOverLastItemMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AppsReorderListener;->undoOverLastItems()V

    .line 901
    :cond_0
    return-void
.end method

.method private setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 708
    return-void
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    .line 692
    if-eqz p1, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->restoreOverLastItems()V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    .line 697
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 698
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    .line 700
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/AppsReorderListener;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 701
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 703
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setDragMode(I)V

    .line 704
    return-void
.end method

.method private setEmptyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v2, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->cellX:I

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->cellY:I

    .line 153
    return-void
.end method

.method private updateBadgeItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 904
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_0

    .line 906
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_0
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 909
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 910
    .local v0, "extra":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_1

    .line 911
    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 916
    .end local v0    # "extra":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 917
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v2, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateBadgeItems(Ljava/util/ArrayList;)V

    .line 919
    :cond_3
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v1, 0x0

    .line 404
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_0

    .line 405
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 406
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 408
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid item drop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    return v1

    .line 413
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/allapps/controller/DragOperator;->acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 414
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acceptDrop mRestorePositionOnDrop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/controller/DragOperator;->getRestorePosition()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 419
    .local v2, "screenId":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    .line 422
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 7
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "destInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JIII)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public canOpenFolder()Z
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 735
    return-void
.end method

.method public createUserFolderIfNecessary(Lcom/android/launcher3/common/base/view/CellLayout;[ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z
    .locals 7
    .param p1, "targetLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "targetCell"    # [I
    .param p3, "newView"    # Landroid/view/View;
    .param p4, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p5, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 843
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 844
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 433
    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 6
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 854
    if-eqz p1, :cond_1

    .line 855
    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v4

    .line 856
    .local v2, "pageIndex":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 858
    .local v0, "folder":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 860
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v2, v4

    .line 866
    .end local v0    # "folder":Landroid/view/View;
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    :goto_0
    return v2

    .line 864
    .end local v2    # "pageIndex":I
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    .restart local v2    # "pageIndex":I
    goto :goto_0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 5
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x0

    .line 593
    if-nez p1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return v2

    .line 595
    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 596
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 597
    .local v0, "folder":Z
    :goto_1
    const/4 v2, 0x0

    .line 599
    .local v2, "optionFlags":I
    or-int/lit8 v2, v2, 0x1

    .line 600
    or-int/lit8 v2, v2, 0x20

    .line 601
    or-int/lit16 v2, v2, 0x1000

    .line 602
    or-int/lit16 v2, v2, 0x2000

    .line 603
    or-int/lit8 v2, v2, 0x4

    .line 604
    if-eqz v0, :cond_3

    .line 605
    or-int/lit8 v2, v2, 0x8

    .line 606
    or-int/lit16 v2, v2, 0x800

    goto :goto_0

    .end local v0    # "folder":Z
    .end local v2    # "optionFlags":I
    :cond_2
    move v0, v2

    .line 596
    goto :goto_1

    .line 608
    .restart local v0    # "folder":Z
    .restart local v2    # "optionFlags":I
    :cond_3
    or-int/lit8 v2, v2, 0x40

    .line 609
    or-int/lit16 v2, v2, 0x80

    .line 610
    or-int/lit16 v2, v2, 0x100

    .line 611
    or-int/lit16 v2, v2, 0x200

    .line 612
    or-int/lit16 v2, v2, 0x400

    .line 613
    or-int/lit16 v2, v2, 0x4000

    .line 614
    const v3, 0x8000

    or-int/lit16 v2, v3, 0x77e5

    .line 615
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSetToZeroPage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public getScrollZone()I
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1
    .param p1, "isDrop"    # Z

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public needDefferToBind(Lcom/android/launcher3/common/drag/DragManager;)Z
    .locals 6
    .param p1, "dragManager"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    const/4 v2, 0x1

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, "dragFromAppsOrAppsFolder":Z
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    if-nez v3, :cond_1

    .line 877
    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v1

    .line 878
    .local v1, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v3}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v3, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 879
    invoke-interface {v3}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 880
    :cond_0
    const/4 v0, 0x1

    .line 884
    .end local v1    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_1
    const-string v3, "AppsDragController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needDeferToBind : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "screenId"    # I

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/controller/DragOperator;->onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V

    .line 849
    return-void
.end method

.method public onDragEnd()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hideHintPages()V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->changeState(IZ)Z

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    .line 160
    iput-boolean v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    .line 161
    return v2
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 6
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 285
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    .line 286
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 288
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 289
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 290
    .local v2, "screenId":J
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iput-wide v2, v1, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 291
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 293
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 295
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/controller/DragOperator;->setRestorePosition(Z)V

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 299
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 300
    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 301
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    if-eqz v1, :cond_4

    .line 369
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isPageMoving()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 378
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v1, v2, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    .line 384
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onResetScrollArea()V

    .line 385
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 386
    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 387
    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 389
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_2

    .line 391
    :cond_1
    const-string v1, "AppsDragController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragExit with cancel or incompleted from external : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-interface {v1, v2}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    .line 393
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->restoreOverLastItems()V

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/DragAppIcon;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/DragAppIcon;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_2
    :goto_1
    return-void

    .line 372
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    .line 375
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string v1, "AppsDragController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragExit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 13
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 320
    iget-object v7, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 321
    .local v7, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v7, :cond_0

    .line 322
    const-string v0, "AppsDragController"

    const-string v1, "DragObject has null info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 326
    :cond_0
    iget v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v0, :cond_1

    iget v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v0, :cond_2

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    .line 330
    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 332
    .local v6, "dragView":Lcom/android/launcher3/common/drag/DragView;
    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getTranslationX()F

    move-result v0

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getOffsetX()F

    move-result v1

    sub-float v10, v0, v1

    .line 333
    .local v10, "touchX":F
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->dragPullingPages(F)V

    .line 335
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v8

    .line 336
    .local v8, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v8, v0, :cond_3

    .line 337
    invoke-direct {p0, v8}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 338
    invoke-direct {p0, v8}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 344
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v9

    .line 345
    .local v9, "pageIndex":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getTargetRank()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 346
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    int-to-long v4, v9

    iput-wide v4, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 349
    invoke-virtual {v1, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 351
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    rem-int/2addr v1, v2

    aput v1, v0, v12

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    div-int/2addr v1, v2

    aput v1, v0, v3

    .line 358
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/DragOperator;->dragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 362
    .end local v9    # "pageIndex":I
    :cond_4
    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v0

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v1

    sub-float v11, v0, v1

    .line 363
    .local v11, "touchY":F
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0, v11}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->approachBorderOnDrag(F)V

    goto/16 :goto_0

    .line 354
    .end local v11    # "touchY":F
    .restart local v9    # "pageIndex":I
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v12

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    goto :goto_1
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 2
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 134
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->showHintPages(Z)V

    .line 137
    check-cast p2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .end local p2    # "info":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setEmptyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->dragStart()V

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 144
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v1, 0x7f0900cd

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->say(I)V

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    .line 179
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/AppsReorderListener;->setExistOverLastItemMoved(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->forcelyAnimateReturnPages()V

    .line 185
    return-void

    .line 181
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    .line 462
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    .line 464
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    .line 467
    :cond_0
    const-string v0, "AppsDragController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDropCompleted mRestorePositionOnDrop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/DragOperator;->getRestorePosition()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 469
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropCompletedWithOutExtraItems(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 473
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DragOperator;->dropCompleted()V

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 475
    return-void

    .line 471
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropCompletedWithExtraItems(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method public onEnterScrollArea(III)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v1, 0x1

    .line 655
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 656
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v3

    if-nez p3, :cond_0

    const/4 v2, -0x1

    :goto_0
    add-int v0, v3, v2

    .line 659
    .local v0, "page":I
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 660
    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    .line 661
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->invalidate()V

    .line 666
    .end local v0    # "page":I
    :goto_1
    return v1

    :cond_0
    move v2, v1

    .line 656
    goto :goto_0

    .line 666
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 671
    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->invalidate()V

    .line 674
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    .line 675
    const/4 v0, 0x1

    .line 678
    :cond_0
    return v0
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 762
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p1, :cond_2

    .line 763
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v5, "targetIconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/DragAppIcon;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 766
    .local v0, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    .line 767
    .local v2, "sourceView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 769
    .local v3, "tag":Ljava/lang/Object;
    instance-of v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v7, :cond_0

    move-object v1, v3

    .line 770
    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 771
    .local v1, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    new-instance v4, Lcom/android/launcher3/allapps/DragAppIcon;

    invoke-direct {v4}, Lcom/android/launcher3/allapps/DragAppIcon;-><init>()V

    .line 772
    .local v4, "targetIcon":Lcom/android/launcher3/allapps/DragAppIcon;
    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v7, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 773
    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 774
    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v7, v4, Lcom/android/launcher3/allapps/DragAppIcon;->cellX:I

    .line 775
    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v7, v4, Lcom/android/launcher3/allapps/DragAppIcon;->cellY:I

    .line 776
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 781
    .end local v0    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v1    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "sourceView":Landroid/view/View;
    .end local v3    # "tag":Ljava/lang/Object;
    .end local v4    # "targetIcon":Lcom/android/launcher3/allapps/DragAppIcon;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iput v7, v6, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 782
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-wide v8, v7, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v8, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    .line 783
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/DragAppIcon;->cellX:I

    iput v7, v6, Lcom/android/launcher3/allapps/DragAppIcon;->cellX:I

    .line 784
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/DragAppIcon;->cellY:I

    iput v7, v6, Lcom/android/launcher3/allapps/DragAppIcon;->cellY:I

    .line 786
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    const/4 v8, 0x0

    invoke-interface {v6, v5, v7, v8}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/DragAppIcon;Z)V

    .line 788
    .end local v5    # "targetIconList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/DragAppIcon;>;"
    :cond_2
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
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
    .line 839
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 631
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollLeft()V

    .line 634
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 635
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 639
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollRight()V

    .line 646
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 647
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 651
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    return-void
.end method

.method public setDragMode(I)V
    .locals 3
    .param p1, "dragMode"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 712
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 713
    if-nez p1, :cond_2

    .line 714
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 715
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 729
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    .line 731
    :cond_1
    return-void

    .line 716
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 717
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 718
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    goto :goto_0

    .line 719
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 720
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 721
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/DragAppIcon;

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    goto :goto_0

    .line 722
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 723
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    .line 724
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 726
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 727
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0, v2, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->changeState(IZ)Z

    goto :goto_0
.end method

.method public setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->updateDragMode()V

    .line 122
    return-void
.end method

.method public setReorderListener(Lcom/android/launcher3/allapps/AppsReorderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/allapps/AppsReorderListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderListener:Lcom/android/launcher3/allapps/AppsReorderListener;

    .line 126
    return-void
.end method

.method public setup(Lcom/android/launcher3/common/view/DragLayer;)V
    .locals 2
    .param p1, "dragLayer"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 116
    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .line 117
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)V
    .locals 0
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 130
    return-void
.end method

.method public updateDragMode()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAlphabetOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    .line 112
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mCustomOperator:Lcom/android/launcher3/allapps/controller/DragOperator;

    goto :goto_0
.end method
