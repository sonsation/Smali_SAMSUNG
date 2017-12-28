.class public Lcom/android/launcher3/folder/controller/FolderIconDropController;
.super Ljava/lang/Object;
.source "FolderIconDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;
    }
.end annotation


# static fields
.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field private static final FOLDER_OPEN_TIMEOUT:I = 0x5dc

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field private mCreateUserFolderOnDrop:Z

.field private mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field private final mFolderCreationAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private final mFolderNSecOpenAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mMaxDistanceForFolder:F

.field private mTargetState:Lcom/android/launcher3/common/drag/DragState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dragState"    # Lcom/android/launcher3/common/drag/DragState;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 71
    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 73
    iput-boolean v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mCreateUserFolderOnDrop:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mAddToExistingFolderOnDrop:Z

    .line 78
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 79
    iput-object p2, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    .line 80
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderNSecOpenAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 81
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderCreationAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 82
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 85
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderIconDropController;
    .param p1, "x1"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->openFolderOnDragHold(Lcom/android/launcher3/folder/view/FolderIconView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/common/drag/DragState;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderIconDropController;
    .param p1, "x1"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderIconDropController;
    .param p1, "x1"    # Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/controller/FolderIconDropController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/controller/FolderIconDropController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanupAddToFolder()V

    return-void
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->onDragExit(Ljava/lang/Object;)V

    .line 605
    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 607
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 592
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToNaturalState()V

    .line 594
    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderRingAnimator:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderCreationAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderCreationAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 598
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderCreationAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 600
    :cond_1
    return-void
.end method

.method private cleanupFolderNSecOpen()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderNSecOpenAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderNSecOpenAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 587
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderNSecOpenAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 589
    :cond_0
    return-void
.end method

.method private isAppsAlphabeticViewType(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 10
    .param p1, "icon"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 664
    iget-wide v6, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    move v1, v3

    .line 665
    .local v1, "isApps":Z
    :goto_0
    const/4 v0, 0x0

    .line 666
    .local v0, "isAlphabeticViewType":Z
    iget-object v5, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v2

    .line 667
    .local v2, "mViewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v2, v5, :cond_0

    .line 668
    const/4 v0, 0x1

    .line 670
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v3

    .end local v0    # "isAlphabeticViewType":Z
    .end local v1    # "isApps":Z
    .end local v2    # "mViewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    :cond_1
    move v1, v4

    .line 664
    goto :goto_0

    .restart local v0    # "isAlphabeticViewType":Z
    .restart local v1    # "isApps":Z
    .restart local v2    # "mViewType":Lcom/android/launcher3/allapps/controller/AppsController$ViewType;
    :cond_2
    move v3, v4

    .line 670
    goto :goto_1
.end method

.method private onDropExtraObjects(Lcom/android/launcher3/folder/view/FolderIconView;Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 5
    .param p1, "targetFolderIcon"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p2, "dstRect"    # Landroid/graphics/Rect;
    .param p4, "dragView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/view/FolderIconView;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v4, 0x1

    .line 497
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v1, "dragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 499
    .local v0, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eq v3, p4, :cond_0

    .line 502
    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_1

    .line 503
    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 504
    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    .end local v0    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_2
    if-nez p2, :cond_3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 510
    return-void

    .line 509
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private openFolder(Lcom/android/launcher3/folder/view/FolderIconView;I)V
    .locals 3
    .param p1, "targetFolder"    # Lcom/android/launcher3/folder/view/FolderIconView;
    .param p2, "toInternalState"    # I

    .prologue
    .line 628
    if-eqz p1, :cond_0

    .line 629
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 630
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v1, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 632
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 634
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_0
    return-void
.end method

.method private openFolderOnDragHold(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 7
    .param p1, "targetFolder"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 610
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderNSecOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 611
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->isAllIconViewInflated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 616
    sget-object v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->TAG:Ljava/lang/String;

    const-string v1, "openFolderOnDragHold : all items are not bound yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 620
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "FNSO"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 621
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/drag/DragState;->setDragMode(I)V

    .line 622
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->setSuppressFolderCloseOnce()V

    .line 623
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;I)V

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)Z
    .locals 7
    .param p1, "dragViewCenter"    # [F
    .param p2, "targetCell"    # [I
    .param p3, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p4, "dragInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    move v5, v6

    .line 224
    :cond_0
    :goto_0
    return v5

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    aget v1, p1, v6

    aget v2, p1, v5

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v4

    .line 214
    .local v4, "distance":F
    iget-boolean v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_2

    iget-object v1, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v0, p0

    move-object v2, p4

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willCreateUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;[IFZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, v0, p2, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willAddToExistingUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;[IF)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    move v5, v6

    .line 224
    goto :goto_0
.end method

.method public cleanup()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanupFolderNSecOpen()V

    .line 580
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanupFolderCreation()V

    .line 581
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanupAddToFolder()V

    .line 582
    return-void
.end method

.method public onDragEnter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mCreateUserFolderOnDrop:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mAddToExistingFolderOnDrop:Z

    .line 99
    return-void
.end method

.method public onDragExit(I)V
    .locals 2
    .param p1, "dragMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 193
    if-ne p1, v1, :cond_2

    .line 194
    iput-boolean v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mCreateUserFolderOnDrop:Z

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    instance-of v0, v0, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getFolderRings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->hideFolderAcceptForcedly()V

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 205
    return-void

    .line 195
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 196
    iput-boolean v1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mAddToExistingFolderOnDrop:Z

    goto :goto_0
.end method

.method public onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V
    .locals 19
    .param p1, "dragViewCenter"    # [F
    .param p2, "targetCell"    # [I
    .param p3, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p4, "dragInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p5, "dragMode"    # I

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 109
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v4, 0x0

    aget v4, p1, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    move-object/from16 v0, p2

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 111
    .local v6, "distance":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, p2, v5

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 113
    .local v9, "dragOverView":Landroid/view/View;
    if-eqz v9, :cond_2

    .line 114
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v2, v2, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v2, :cond_0

    .line 120
    :cond_2
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willCreateUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;[IFZ)Z

    move-result v15

    .line 121
    .local v15, "userFolderPending":Z
    if-nez p5, :cond_5

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderCreationAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 122
    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v2

    if-nez v2, :cond_5

    .line 123
    new-instance v12, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, p2, v5

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2, v4, v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;-><init>(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/common/base/view/CellLayout;II)V

    .line 126
    .local v12, "listener":Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderCreationAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2, v12}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderCreationAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 129
    instance-of v2, v9, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_0

    .line 131
    instance-of v2, v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v2, :cond_3

    .line 132
    check-cast v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v14, v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mLabel:Ljava/lang/String;

    .line 138
    .local v14, "title":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f0900d6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v14, v7, v17

    const/16 v17, 0x1

    check-cast v9, Lcom/android/launcher3/common/view/IconView;

    .line 139
    .end local v9    # "dragOverView":Landroid/view/View;
    invoke-virtual {v9}, Lcom/android/launcher3/common/view/IconView;->getTitle()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v7, v17

    .line 138
    invoke-virtual {v4, v5, v7}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f0900df

    .line 140
    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 141
    .local v8, "description":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    .end local v8    # "description":Ljava/lang/String;
    .end local v14    # "title":Ljava/lang/String;
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v9    # "dragOverView":Landroid/view/View;
    :cond_3
    instance-of v2, v3, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_4

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f090045

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    aput-object v17, v5, v7

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "title":Ljava/lang/String;
    goto :goto_1

    .line 136
    .end local v14    # "title":Ljava/lang/String;
    :cond_4
    iget-object v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    check-cast v14, Ljava/lang/String;

    .restart local v14    # "title":Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v12    # "listener":Lcom/android/launcher3/folder/controller/FolderIconDropController$FolderCreationAlarmListener;
    .end local v14    # "title":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1, v6}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willAddToExistingUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;[IF)Z

    move-result v16

    .line 148
    .local v16, "willAddToFolder":Z
    if-eqz v16, :cond_8

    if-nez p5, :cond_8

    .line 149
    if-eqz v9, :cond_0

    .line 153
    check-cast v9, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v9    # "dragOverView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/view/FolderIconView;->onDragEnter(Ljava/lang/Object;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    .line 157
    .local v10, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderNSecOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderNSecOpenAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v2

    if-nez v2, :cond_6

    .line 158
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->isAppsAlphabeticViewType(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-nez v2, :cond_6

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 161
    .local v13, "targetFolder":Lcom/android/launcher3/folder/view/FolderIconView;
    new-instance v12, Lcom/android/launcher3/folder/controller/FolderIconDropController$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/launcher3/folder/controller/FolderIconDropController$1;-><init>(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 166
    .local v12, "listener":Lcom/android/launcher3/util/alarm/OnAlarmListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderNSecOpenAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2, v12}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderNSecOpenAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 170
    .end local v12    # "listener":Lcom/android/launcher3/util/alarm/OnAlarmListener;
    .end local v13    # "targetFolder":Lcom/android/launcher3/folder/view/FolderIconView;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->clearDragOutlines()V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Lcom/android/launcher3/common/drag/DragState;->setDragMode(I)V

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanupFolderCreation()V

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f0900de

    invoke-virtual {v2, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 175
    .restart local v8    # "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mDragOverFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, "folderName":Ljava/lang/String;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 179
    :cond_7
    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v11    # "folderName":Ljava/lang/String;
    .restart local v9    # "dragOverView":Landroid/view/View;
    :cond_8
    const/4 v2, 0x2

    move/from16 v0, p5

    if-ne v0, v2, :cond_9

    if-nez v16, :cond_9

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/launcher3/common/drag/DragState;->setDragMode(I)V

    .line 187
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_0

    if-nez v15, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/android/launcher3/common/drag/DragState;->setDragMode(I)V

    goto/16 :goto_0
.end method

.method public onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 10
    .param p1, "dragViewCenter"    # [F
    .param p2, "targetCell"    # [I
    .param p3, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 413
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v6, :cond_0

    .line 414
    const/4 v6, 0x0

    .line 492
    :goto_0
    return v6

    .line 417
    :cond_0
    const/4 v4, 0x0

    .line 418
    .local v4, "isRecoverModeWithFolderLock":Z
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 419
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getRecoverMode()Z

    move-result v4

    .line 420
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getReroderLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 421
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getReroderLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 425
    :cond_1
    const/4 v0, 0x0

    .line 427
    .local v0, "distance":F
    if-eqz p1, :cond_2

    .line 428
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v7, 0x0

    aget v7, p1, v7

    const/4 v8, 0x1

    aget v8, p1, v8

    invoke-virtual {v6, v7, v8, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->getDistanceFromCell(FF[I)F

    .line 431
    :cond_2
    iget v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mMaxDistanceForFolder:F

    cmpl-float v6, v0, v6

    if-lez v6, :cond_3

    .line 432
    const/4 v6, 0x0

    goto :goto_0

    .line 435
    :cond_3
    iget-boolean v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mAddToExistingFolderOnDrop:Z

    if-nez v6, :cond_4

    if-eqz p1, :cond_4

    if-nez v4, :cond_4

    .line 436
    const/4 v6, 0x0

    goto :goto_0

    .line 439
    :cond_4
    if-nez p2, :cond_5

    .line 440
    const/4 v6, 0x0

    goto :goto_0

    .line 443
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mAddToExistingFolderOnDrop:Z

    .line 445
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v7, 0x0

    aget v7, p2, v7

    const/4 v8, 0x1

    aget v8, p2, v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 447
    .local v1, "dropOverView":Landroid/view/View;
    instance-of v6, v1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_e

    move-object v2, v1

    .line 448
    check-cast v2, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 449
    .local v2, "fi":Lcom/android/launcher3/folder/view/FolderIconView;
    iget-object v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_7

    .line 450
    const/4 v6, 0x1

    iput-boolean v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    .line 451
    const/4 v6, 0x1

    iput-boolean v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 452
    iget-object v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    .line 453
    const/4 v6, 0x0

    iget-object v7, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-direct {p0, v2, v6, v7, v8}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropExtraObjects(Lcom/android/launcher3/folder/view/FolderIconView;Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/view/View;)V

    .line 455
    :cond_6
    const/4 v6, 0x1

    goto :goto_0

    .line 457
    :cond_7
    iget-object v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lcom/android/launcher3/folder/view/FolderIconView;->acceptDrop(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 458
    iget-object v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v3, v6

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 460
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v4, :cond_9

    .line 461
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v6

    if-nez v6, :cond_9

    instance-of v6, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_9

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 462
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 463
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/folder/folderlock/FolderLock;->needPopupConfirm(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 464
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v6, p3, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)V

    .line 465
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 469
    :goto_1
    iget-object v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_8

    .line 470
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertAddToLockedFolderLog(Lcom/android/launcher3/Launcher;Z)V

    .line 472
    :cond_8
    iget-object v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v6, :cond_9

    .line 473
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertAddToLockedFolderLog(Lcom/android/launcher3/Launcher;Z)V

    .line 478
    :cond_9
    invoke-virtual {v2, p3}, Lcom/android/launcher3/folder/view/FolderIconView;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 479
    iget-object v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    .line 480
    const/4 v6, 0x0

    iget-object v7, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-direct {p0, v2, v6, v7, v8}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropExtraObjects(Lcom/android/launcher3/folder/view/FolderIconView;Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/view/View;)V

    .line 483
    :cond_a
    iget-object v6, p3, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v6, :cond_b

    .line 484
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    .line 485
    .local v5, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_d

    .line 486
    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    .line 485
    :goto_2
    invoke-virtual {v7, v8, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertAddToFolderLog(Lcom/android/launcher3/Launcher;Z)V

    .line 488
    .end local v5    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    :cond_b
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 467
    :cond_c
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    .line 486
    .restart local v5    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    :cond_d
    const/4 v6, 0x0

    goto :goto_2

    .line 492
    .end local v2    # "fi":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v5    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 7
    .param p1, "dragViewCenter"    # [F
    .param p2, "targetCell"    # [I
    .param p3, "newView"    # Landroid/view/View;
    .param p4, "originalLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p5, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 229
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z
    .locals 32
    .param p1, "dragViewCenter"    # [F
    .param p2, "targetCell"    # [I
    .param p3, "newView"    # Landroid/view/View;
    .param p4, "originalLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p5, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p6, "targetView"    # Landroid/view/View;

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v9, :cond_0

    .line 235
    const/4 v9, 0x0

    .line 409
    :goto_0
    return v9

    .line 238
    :cond_0
    const/16 v16, 0x0

    .line 240
    .local v16, "distance":F
    const/16 v22, 0x0

    .line 241
    .local v22, "isRecoverModeWithFolderLock":Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getRecoverMode()Z

    move-result v22

    .line 243
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getReroderLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    if-eqz v9, :cond_1

    if-eqz v22, :cond_1

    .line 244
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getReroderLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 248
    :cond_1
    if-eqz p1, :cond_2

    .line 249
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/16 v28, 0x0

    aget v28, p1, v28

    const/16 v29, 0x1

    aget v29, p1, v29

    move/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v16

    .line 252
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mMaxDistanceForFolder:F

    cmpl-float v9, v16, v9

    if-lez v9, :cond_3

    .line 253
    const/4 v9, 0x0

    goto :goto_0

    .line 256
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mCreateUserFolderOnDrop:Z

    if-nez v9, :cond_4

    if-eqz p1, :cond_4

    if-nez v22, :cond_4

    .line 257
    const/4 v9, 0x0

    goto :goto_0

    .line 260
    :cond_4
    if-nez p2, :cond_5

    .line 261
    const/4 v9, 0x0

    goto :goto_0

    .line 264
    :cond_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mCreateUserFolderOnDrop:Z

    .line 266
    if-nez p6, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/16 v28, 0x0

    aget v28, p2, v28

    const/16 v29, 0x1

    aget v29, p2, v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    .line 268
    .local v6, "v":Landroid/view/View;
    :goto_1
    if-nez v6, :cond_7

    .line 269
    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v6    # "v":Landroid/view/View;
    :cond_6
    move-object/from16 v6, p6

    .line 266
    goto :goto_1

    .line 272
    .restart local v6    # "v":Landroid/view/View;
    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v12, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 273
    .local v12, "aboveIconInfo":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v0, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v27, v0

    .line 275
    .local v27, "willBecomeIconInfo":Z
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 277
    .local v8, "dragView":Lcom/android/launcher3/common/drag/DragView;
    const/16 v23, 0x0

    .line 278
    .local v23, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 279
    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->acceptDropToFolder()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 280
    const/4 v9, 0x1

    move-object/from16 v0, p5

    iput-boolean v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    .line 281
    const/4 v9, 0x1

    move-object/from16 v0, p5

    iput-boolean v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 282
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 283
    .local v18, "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 285
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 286
    .local v26, "targetInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x66

    cmp-long v9, v28, v30

    if-eqz v9, :cond_a

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    if-eqz v9, :cond_a

    .line 287
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v9}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v9

    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v9, v0, :cond_9

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 288
    invoke-interface {v9}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v9

    const/16 v28, 0x4

    move/from16 v0, v28

    if-ne v9, v0, :cond_a

    .line 289
    :cond_9
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v23

    .line 292
    :cond_a
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 293
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v9}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object p3

    .line 294
    const/16 v27, 0x1

    .line 300
    .end local v18    # "dragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v26    # "targetInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_b
    if-eqz v12, :cond_16

    if-eqz v27, :cond_16

    .line 301
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v24

    .line 302
    .local v24, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v29, v0

    if-eqz v24, :cond_10

    .line 303
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    .line 302
    :goto_2
    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToAppLog(Lcom/android/launcher3/Launcher;Z)V

    .line 305
    if-nez v23, :cond_11

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v7, v9

    .line 306
    .local v7, "sourceInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :goto_3
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 308
    .local v5, "destInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz p4, :cond_c

    .line 309
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 312
    :cond_c
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    .line 313
    .local v19, "folderLocation":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v9, v6, v0}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v10

    .line 314
    .local v10, "scale":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v9, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v9, v0, v5}, Lcom/android/launcher3/common/drag/DragState;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v4

    .line 317
    .local v4, "fi":Lcom/android/launcher3/folder/view/FolderIconView;
    const/4 v9, -0x1

    iput v9, v5, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 318
    const/4 v9, -0x1

    iput v9, v5, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 319
    const/4 v9, -0x1

    iput v9, v7, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 320
    const/4 v9, -0x1

    iput v9, v7, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 322
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->isAppsAlphabeticViewType(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 323
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v9

    iget-wide v0, v9, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-wide/from16 v20, v0

    .line 324
    .local v20, "folderId":J
    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 325
    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 327
    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 328
    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 330
    if-eqz v8, :cond_d

    .line 331
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v17

    .line 332
    .local v17, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    .line 334
    .end local v17    # "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    :cond_d
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    .line 335
    .local v25, "postAnimationRunnable":Ljava/lang/Runnable;
    const/4 v15, 0x0

    .line 336
    .local v15, "delayToOpenFolder":I
    if-eqz v25, :cond_e

    .line 337
    invoke-interface/range {v25 .. v25}, Ljava/lang/Runnable;->run()V

    .line 338
    const/16 v15, 0x96

    .line 340
    :cond_e
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v28, Lcom/android/launcher3/folder/controller/FolderIconDropController$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController$2;-><init>(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView;)V

    int-to-long v0, v15

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    .end local v15    # "delayToOpenFolder":I
    .end local v25    # "postAnimationRunnable":Ljava/lang/Runnable;
    :goto_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGameHome()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 394
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel;->getAppsModel()Lcom/android/launcher3/allapps/model/AppsModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/allapps/model/AppsModel;->getAllAppItemInApps()Ljava/util/ArrayList;

    move-result-object v14

    .line 395
    .local v14, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/android/launcher3/gamehome/GameHomeManager;->checkGameAppList(Ljava/util/ArrayList;)V

    .line 396
    invoke-static {}, Lcom/android/launcher3/gamehome/GameHomeManager;->getInstance()Lcom/android/launcher3/gamehome/GameHomeManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v9, v0, v5, v7}, Lcom/android/launcher3/gamehome/GameHomeManager;->startGameHUN(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 399
    .end local v14    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_f
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v9, :cond_15

    .line 400
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v9, v1, v8}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropExtraObjects(Lcom/android/launcher3/folder/view/FolderIconView;Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/view/View;)V

    .line 401
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToAppLog(Lcom/android/launcher3/Launcher;Z)V

    .line 406
    :goto_5
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 303
    .end local v4    # "fi":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v5    # "destInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "sourceInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v10    # "scale":F
    .end local v19    # "folderLocation":Landroid/graphics/Rect;
    .end local v20    # "folderId":J
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_11
    move-object/from16 v7, v23

    .line 305
    goto/16 :goto_3

    .line 349
    .restart local v4    # "fi":Lcom/android/launcher3/folder/view/FolderIconView;
    .restart local v5    # "destInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v7    # "sourceInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v10    # "scale":F
    .restart local v19    # "folderLocation":Landroid/graphics/Rect;
    :cond_12
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v9

    iget-wide v0, v9, Lcom/android/launcher3/folder/FolderInfo;->id:J

    move-wide/from16 v20, v0

    .line 350
    .restart local v20    # "folderId":J
    move-wide/from16 v0, v20

    iput-wide v0, v5, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 351
    move-wide/from16 v0, v20

    iput-wide v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 354
    if-eqz v8, :cond_13

    const/4 v13, 0x1

    .line 356
    .local v13, "animate":Z
    :goto_6
    if-eqz v13, :cond_14

    .line 357
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v25, v0

    .line 358
    .restart local v25    # "postAnimationRunnable":Ljava/lang/Runnable;
    new-instance v11, Lcom/android/launcher3/folder/controller/FolderIconDropController$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController$3;-><init>(Lcom/android/launcher3/folder/controller/FolderIconDropController;Ljava/lang/Runnable;Lcom/android/launcher3/folder/view/FolderIconView;)V

    .line 377
    .local v11, "onFinishAnimationRunnable":Ljava/lang/Runnable;
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/folder/view/FolderIconView;->performCreateAnimation(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    goto/16 :goto_4

    .line 354
    .end local v11    # "onFinishAnimationRunnable":Ljava/lang/Runnable;
    .end local v13    # "animate":Z
    .end local v25    # "postAnimationRunnable":Ljava/lang/Runnable;
    :cond_13
    const/4 v13, 0x0

    goto :goto_6

    .line 380
    .restart local v13    # "animate":Z
    :cond_14
    invoke-virtual {v4, v5}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 381
    invoke-virtual {v4, v7}, Lcom/android/launcher3/folder/view/FolderIconView;->addItem(Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 382
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v28, Lcom/android/launcher3/folder/controller/FolderIconDropController$4;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController$4;-><init>(Lcom/android/launcher3/folder/controller/FolderIconDropController;Lcom/android/launcher3/folder/view/FolderIconView;)V

    const-wide/16 v30, 0x96

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 403
    .end local v13    # "animate":Z
    :cond_15
    sget-object v9, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v28, v0

    const v29, 0x7f0900d2

    invoke-virtual/range {v28 .. v29}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    goto :goto_5

    .line 409
    .end local v4    # "fi":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v5    # "destInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v7    # "sourceInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v10    # "scale":F
    .end local v19    # "folderLocation":Landroid/graphics/Rect;
    .end local v20    # "folderId":J
    .end local v24    # "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public setMaxDistance(I)V
    .locals 2
    .param p1, "iconSize"    # I

    .prologue
    .line 88
    const v0, 0x3f0ccccd    # 0.55f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mMaxDistanceForFolder:F

    .line 89
    return-void
.end method

.method public setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 93
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 94
    return-void
.end method

.method public willAddToExistingUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;[IF)Z
    .locals 8
    .param p1, "dragInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "targetCell"    # [I
    .param p3, "distance"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 551
    iget-object v5, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v5, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v3

    .line 555
    :cond_1
    iget v5, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mMaxDistanceForFolder:F

    cmpl-float v5, p3, v5

    if-gtz v5, :cond_0

    .line 559
    iget-object v5, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    aget v6, p2, v3

    aget v7, p2, v4

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 561
    .local v0, "dropOverView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 562
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 563
    .local v2, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget-boolean v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_2

    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_0

    iget v5, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-ne v5, v6, :cond_0

    .line 568
    .end local v2    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_2
    instance-of v5, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 569
    check-cast v1, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 570
    .local v1, "fi":Lcom/android/launcher3/folder/view/FolderIconView;
    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->acceptDrop(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 571
    goto :goto_0
.end method

.method public willCreateUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;[IFZ)Z
    .locals 10
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "dragInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "considerTimeout"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 514
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v7, :cond_1

    .line 547
    :cond_0
    :goto_0
    return v6

    .line 518
    :cond_1
    iget v7, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mMaxDistanceForFolder:F

    cmpl-float v7, p4, v7

    if-gtz v7, :cond_0

    .line 522
    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    aget v8, p3, v6

    aget v9, p3, v5

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 524
    .local v1, "dropOverView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 525
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 526
    .local v3, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget-boolean v7, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_2

    iget v7, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iget v8, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ne v7, v8, :cond_0

    iget v7, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iget v8, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-ne v7, v8, :cond_0

    .line 531
    .end local v3    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    .line 532
    .local v2, "hasntMoved":Z
    if-eqz p2, :cond_3

    .line 533
    iget-object v7, p2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v1, v7, :cond_6

    move v2, v5

    .line 536
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    if-eqz p5, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mCreateUserFolderOnDrop:Z

    if-eqz v7, :cond_0

    .line 540
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 541
    .local v0, "aboveShortcut":Z
    iget v7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v7, :cond_5

    iget v7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eq v7, v5, :cond_5

    iget v7, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/launcher3/folder/controller/FolderIconDropController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 545
    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->acceptDropToFolder()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    move v4, v5

    .line 547
    .local v4, "willBecomeShortcut":Z
    :goto_2
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    :goto_3
    move v6, v5

    goto :goto_0

    .end local v0    # "aboveShortcut":Z
    .end local v4    # "willBecomeShortcut":Z
    :cond_6
    move v2, v6

    .line 533
    goto :goto_1

    .restart local v0    # "aboveShortcut":Z
    :cond_7
    move v4, v6

    .line 545
    goto :goto_2

    .restart local v4    # "willBecomeShortcut":Z
    :cond_8
    move v5, v6

    .line 547
    goto :goto_3
.end method
