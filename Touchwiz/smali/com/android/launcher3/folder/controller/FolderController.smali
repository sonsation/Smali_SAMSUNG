.class public Lcom/android/launcher3/folder/controller/FolderController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "FolderController.java"

# interfaces
.implements Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;


# static fields
.field public static final KEY_FOLDER_ICON_APPSEARCHED:Ljava/lang/String; = "KEY_FOLDER_ICON_APPSEARCHED"

.field public static final KEY_FOLDER_ICON_VIEW:Ljava/lang/String; = "KEY_FOLDER_ICON_VIEW"

.field public static final STATE_DRAG:I = 0x2

.field public static final STATE_NONE:I = 0x0

.field public static final STATE_NORMAL:I = 0x1

.field public static final STATE_SELECT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FolderController"

.field private static mHomeKeyPressed:Z


# instance fields
.field private mBgBlurAmount:F

.field private mBgDrakenAlpha:F

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

.field private mFolderCloseReason:I

.field private mHelpTextContainerHeight:I

.field private mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

.field private mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field private mState:I

.field private mStateTransitionDuration:I

.field private mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field private mTargetFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/folder/controller/FolderController;->mHomeKeyPressed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/controller/FolderController;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/controller/FolderController;Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/controller/FolderController;
    .param p1, "x1"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V

    return-void
.end method

.method private attachFolderToDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 5
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 556
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderBgView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 558
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 559
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v2, v3, v3, v3}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    .line 562
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, v4, v4}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 563
    .local v0, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    .end local v0    # "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    .line 567
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 568
    return-void
.end method

.method private callRefreshLiveIcon()V
    .locals 2

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    .line 510
    .local v0, "folderPagedView":Lcom/android/launcher3/folder/view/FolderPagedView;
    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->callRefreshLiveIcon()V

    goto :goto_0
.end method

.method private closeFolder()V
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 821
    :cond_0
    return-void
.end method

.method private detachFolderFromDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 571
    if-eqz p1, :cond_1

    .line 572
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    .line 573
    .local v0, "parent":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drag/DragManager;->removeDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    .line 581
    .end local v0    # "parent":Lcom/android/launcher3/common/view/DragLayer;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v1, :cond_2

    .line 582
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderBgView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    .line 583
    .restart local v0    # "parent":Lcom/android/launcher3/common/view/DragLayer;
    if-eqz v0, :cond_2

    .line 584
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 587
    .end local v0    # "parent":Lcom/android/launcher3/common/view/DragLayer;
    :cond_2
    return-void
.end method

.method private getAdjustedInternalState(I)I
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 399
    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    .end local p1    # "value":I
    :cond_0
    return p1
.end method

.method private isValidFolder()Z
    .locals 3

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, "isValid":Z
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 499
    const/4 v0, 0x1

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    const-string v1, "FolderController"

    const-string v2, "OpenFolder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isWhiteBg()Z
    .locals 2

    .prologue
    .line 840
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 2
    .param p1, "closedFolder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 539
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    .line 540
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    .line 542
    if-eqz p1, :cond_0

    .line 543
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->detachFolderFromDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 544
    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/view/FolderView;->bindController(Lcom/android/launcher3/folder/controller/FolderController;)V

    .line 546
    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->sendAccessibilityEvent(I)V

    .line 553
    :cond_1
    return-void
.end method

.method private onCloseFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 2
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 534
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 535
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 536
    return-void
.end method

.method private onOpenFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->callRefreshLiveIcon()V

    .line 517
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 518
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    .line 520
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 521
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->attachFolderToDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 529
    :goto_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->sendAccessibilityEvent(I)V

    .line 530
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->sendAccessibilityEvent(I)V

    .line 531
    return-void

    .line 523
    :cond_0
    const-string v0, "FolderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening folder ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") which already has a parent ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    invoke-virtual {p1}, Lcom/android/launcher3/folder/view/FolderView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCountBadge(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 824
    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_0

    .line 825
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 826
    .local v0, "container":J
    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedItemCountInFolder(J)I

    move-result v2

    .line 827
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    .line 829
    .end local v0    # "container":J
    .end local v2    # "count":I
    :cond_0
    return-void
.end method

.method private setupFolderBgLayout()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 590
    const/4 v0, 0x0

    .line 591
    .local v0, "completed":Z
    iget v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    if-lez v6, :cond_1

    .line 592
    const/4 v0, 0x1

    .line 607
    :cond_0
    :goto_0
    return v0

    .line 593
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderBgView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 594
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 595
    .local v2, "folderCoord":[I
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    .line 596
    .local v1, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v6, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v5

    .line 597
    .local v5, "scale":F
    aget v6, v2, v8

    if-lez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-nez v6, :cond_0

    .line 598
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 599
    .local v4, "helpTextMarginFromFolderContent":I
    aget v6, v2, v8

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getHeader()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v3, v6, v4

    .line 600
    .local v3, "helpTextContainerHeight":I
    if-lez v3, :cond_0

    .line 601
    iput v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    .line 602
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    iget v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    const/16 v8, 0x50

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/folder/view/FolderBgView;->setHelpTextContainerHeightAndGravity(II)V

    .line 603
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public closeFolderIfLackItem()V
    .locals 3

    .prologue
    .line 808
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 810
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 811
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolder()V

    .line 812
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->showIfNeeded(Landroid/app/FragmentManager;)V

    .line 815
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    return-void
.end method

.method public enterDragState(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x2

    .line 687
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v1, v2, :cond_0

    .line 697
    :goto_0
    return-void

    .line 691
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 692
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 693
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 694
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 696
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public enterNormalState(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(ZLjava/lang/Runnable;)V

    .line 670
    return-void
.end method

.method public enterNormalState(ZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "animated"    # Z
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    .line 673
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v1, v2, :cond_0

    .line 684
    :goto_0
    return-void

    .line 677
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 678
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 679
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 680
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 681
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/StageEntry;->addOnCompleteRunnableCallBack(Ljava/lang/Runnable;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public enterSelectState(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x3

    .line 700
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    if-ne v1, v2, :cond_0

    .line 710
    :goto_0
    return-void

    .line 704
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 705
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean p1, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 706
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateFrom(I)V

    .line 707
    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 709
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public finishOnTouchOutSide()Z
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f090064

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 656
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 660
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 3
    .param p1, "internalState"    # I

    .prologue
    .line 635
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 636
    .local v0, "isBackgroundImageUsing":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->getMaxBlurAmount()F

    move-result v1

    :goto_1
    return v1

    .line 635
    .end local v0    # "isBackgroundImageUsing":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 636
    .restart local v0    # "isBackgroundImageUsing":Z
    :cond_1
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgBlurAmount:F

    goto :goto_1
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 3
    .param p1, "internalState"    # I

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 642
    .local v0, "isBackgroundImageUsing":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v1

    .line 641
    .end local v0    # "isBackgroundImageUsing":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 642
    .restart local v0    # "isBackgroundImageUsing":Z
    :cond_1
    iget v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgDrakenAlpha:F

    goto :goto_1
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 647
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getChildViewAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v3, 0x0

    .line 766
    if-nez p1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-object v3

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getContainerView()Landroid/view/View;

    move-result-object v1

    .line 771
    .local v1, "containerView":Landroid/view/View;
    instance-of v4, v1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 772
    check-cast v2, Lcom/android/launcher3/folder/view/FolderView;

    .line 773
    .local v2, "folderView":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 774
    .local v0, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;
    .locals 1

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/launcher3/folder/controller/FolderController;->getContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DragSource;

    return-object v0
.end method

.method public getFolderBgView()Lcom/android/launcher3/folder/view/FolderBgView;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    return-object v0
.end method

.method protected getInternalState()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    return v0
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public getSearchedAppInfo()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    return v0
.end method

.method protected getSupportSoftInputParam(Landroid/view/Window;)I
    .locals 2
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 860
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 861
    .local v0, "softInputParam":I
    and-int/lit8 v1, v0, -0x11

    return v1
.end method

.method getTargetFolderIconView()Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method public homeKeyPressed()V
    .locals 1

    .prologue
    .line 876
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/folder/controller/FolderController;->mHomeKeyPressed:Z

    .line 877
    return-void
.end method

.method public initStageView()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "FolderController"

    const-string v1, "initStageView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 120
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 128
    return-void
.end method

.method protected isRestorable()Z
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method protected onBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 450
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 452
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->dismissEditingName()V

    .line 454
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :goto_0
    return v1

    .line 459
    .restart local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    iget v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 460
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto :goto_0

    .line 464
    :cond_1
    iget v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    if-nez v2, :cond_2

    .line 465
    iput v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 468
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 2
    .param p1, "whiteBg"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->setFolderContentColor()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isWhiteBg()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderBgView;->setHelpTextColor(Z)V

    .line 335
    :cond_1
    return-void
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 7
    .param p1, "enter"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    if-eqz p1, :cond_1

    .line 716
    invoke-virtual {p0, p2}, Lcom/android/launcher3/folder/controller/FolderController;->enterSelectState(Z)V

    .line 717
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    .line 718
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    .line 720
    .local v0, "folderPagedView":Lcom/android/launcher3/folder/view/FolderPagedView;
    if-eqz v0, :cond_0

    .line 721
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900d0

    .line 722
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 723
    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 724
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 723
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 721
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V

    .line 732
    .end local v0    # "folderPagedView":Lcom/android/launcher3/folder/view/FolderPagedView;
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    .line 729
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->updateCheckBox(Z)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 748
    if-eqz p2, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V

    .line 754
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/controller/FolderController;->refreshCountBadge(Landroid/view/View;)V

    .line 757
    :cond_0
    return-void

    .line 751
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeCheckedApp(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 784
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 788
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 802
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto :goto_0

    .line 791
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    goto :goto_0

    .line 796
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->closeFolder()V

    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 1
    .param p1, "changedOrientation"    # Z

    .prologue
    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mHelpTextContainerHeight:I

    .line 322
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->onConfigurationChangedIfNeeded()V

    .line 325
    :cond_0
    return-void
.end method

.method public onDestroyActivity()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 435
    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 437
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    .line 441
    :cond_0
    invoke-static {}, Lcom/android/launcher3/folder/view/FolderIconView;->release()V

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V

    .line 446
    :cond_1
    return-void
.end method

.method public onPauseActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    .line 428
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/controller/FolderController;->enterNormalState(Z)V

    .line 430
    :cond_1
    return-void
.end method

.method public onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    .line 848
    :cond_0
    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 12
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 133
    const-string v8, "FolderController"

    const-string v9, "onStageEnter()"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x0

    .line 136
    .local v1, "enterAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_6

    .line 137
    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 138
    .local v5, "fromViewMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v6

    .line 139
    .local v6, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const-string v8, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    .line 140
    .local v3, "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    const-string v8, "KEY_FOLDER_ICON_APPSEARCHED"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 141
    const-string v8, "KEY_SELECTED_ITEMS"

    invoke-virtual {p1, v8}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 143
    .local v0, "addToFolderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    if-eqz v3, :cond_0

    .line 144
    iput-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 147
    :cond_0
    const/4 v2, 0x0

    .line 148
    .local v2, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v8, :cond_1

    .line 149
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    .line 152
    :cond_1
    if-eqz v2, :cond_6

    .line 153
    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/view/FolderView;->bindController(Lcom/android/launcher3/folder/controller/FolderController;)V

    .line 155
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/4 v8, 0x1

    if-eq v5, v8, :cond_2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_9

    .line 157
    :cond_2
    const-string v8, "FolderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onStageEnter: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/controller/FolderController;->onOpenFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 159
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->prepareOpen()V

    .line 160
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v9, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8, v2, v9}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getEnterFromHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;

    move-result-object v1

    .line 161
    invoke-virtual {v2, v1}, Lcom/android/launcher3/folder/view/FolderView;->onOpen(Landroid/animation/Animator;)V

    .line 163
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v7

    .line 164
    .local v7, "toState":I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 165
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher3/folder/controller/FolderController;->enterDragState(Z)V

    .line 167
    :cond_3
    iput v7, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    .line 183
    .end local v7    # "toState":I
    :cond_4
    :goto_0
    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    .line 184
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x3

    .line 185
    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 199
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 200
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 201
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v4

    .line 202
    .local v4, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 203
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockFolderAfterAdd(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 210
    .end local v0    # "addToFolderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v3    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    .end local v4    # "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    .end local v5    # "fromViewMode":I
    .end local v6    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_6
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v8, :cond_7

    .line 211
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isWhiteBg()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher3/folder/view/FolderBgView;->setHelpTextColor(Z)V

    .line 213
    iget v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_7

    .line 214
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher3/folder/controller/FolderController;->showFolderBgView(ZZ)V

    .line 218
    :cond_7
    sget-object v8, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v8}, Lcom/android/launcher3/util/Talk;->isAccessibilityEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v1, :cond_8

    .line 219
    new-instance v8, Lcom/android/launcher3/folder/controller/FolderController$1;

    invoke-direct {v8, p0}, Lcom/android/launcher3/folder/controller/FolderController$1;-><init>(Lcom/android/launcher3/folder/controller/FolderController;)V

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 228
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 230
    return-object v1

    .line 168
    .restart local v0    # "addToFolderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .restart local v2    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v3    # "folderIconView":Lcom/android/launcher3/folder/view/FolderIconView;
    .restart local v5    # "fromViewMode":I
    .restart local v6    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_9
    const/4 v8, 0x6

    if-ne v5, v8, :cond_c

    .line 169
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-nez v8, :cond_a

    .line 170
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    .line 171
    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/controller/FolderController;->onOpenFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 172
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->prepareOpen()V

    .line 173
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/android/launcher3/folder/view/FolderView;->onOpen(Landroid/animation/Animator;)V

    .line 175
    :cond_a
    if-eqz v0, :cond_b

    .line 176
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8, v0}, Lcom/android/launcher3/folder/view/FolderIconView;->addItems(Ljava/util/ArrayList;)V

    .line 178
    :cond_b
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v8, v2, v0}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getEnterFromFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Ljava/util/ArrayList;)Landroid/animation/Animator;

    move-result-object v1

    goto/16 :goto_0

    .line 179
    :cond_c
    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    .line 180
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v8, v2}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getEnterFromWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;

    move-result-object v1

    goto/16 :goto_0

    .line 186
    :cond_d
    const/4 v8, 0x2

    if-ne v5, v8, :cond_e

    .line 187
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x4

    .line 188
    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_1

    .line 189
    :cond_e
    const/4 v8, 0x6

    if-ne v5, v8, :cond_5

    .line 190
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_f

    .line 191
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x3

    .line 192
    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_1

    .line 193
    :cond_f
    iget-object v8, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v10, -0x66

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 194
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v8

    const/4 v9, 0x4

    .line 195
    invoke-virtual {v8, v9}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto/16 :goto_1
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 12
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 235
    const-string v10, "FolderController"

    const-string v11, "onStageExit()"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v10}, Lcom/android/launcher3/Utilities;->closeDialog(Landroid/app/Activity;)V

    .line 238
    const/4 v2, 0x0

    .line 239
    .local v2, "exitAnim":Landroid/animation/Animator;
    if-eqz p1, :cond_8

    .line 240
    iget v9, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 241
    .local v9, "toViewMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v5

    .line 242
    .local v5, "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 243
    .local v3, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_0

    .line 244
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 246
    :cond_0
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_1

    .line 247
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    .line 250
    :cond_1
    if-eqz v3, :cond_7

    .line 251
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 254
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 255
    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_9

    :cond_2
    const/4 v4, 0x1

    .line 256
    .local v4, "folderIconViewRemoved":Z
    :goto_0
    if-nez v4, :cond_3

    .line 257
    const-string v10, "KEY_FOLDER_ICON_VIEW"

    iget-object v11, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {p1, v10, v11}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 260
    :cond_3
    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    .line 261
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 263
    iget v10, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const/4 v11, 0x2

    if-gt v10, v11, :cond_5

    iget-boolean v10, p1, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-nez v10, :cond_5

    sget-boolean v10, Lcom/android/launcher3/folder/controller/FolderController;->mHomeKeyPressed:Z

    if-eqz v10, :cond_c

    .line 264
    :cond_5
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/launcher3/folder/controller/FolderController;->mHomeKeyPressed:Z

    .line 265
    const-string v10, "KEY_SUPPRESS_CHANGE_STAGE_ONCE"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lez v10, :cond_a

    const/4 v8, 0x1

    .line 266
    .local v8, "suppressChangeStageOnce":Z
    :goto_1
    if-eqz v8, :cond_b

    const/4 v10, 0x4

    :goto_2
    iput v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 267
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V

    .line 273
    .end local v8    # "suppressChangeStageOnce":Z
    :goto_3
    iget v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    if-nez v10, :cond_6

    .line 274
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    .line 276
    :cond_6
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 277
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v10

    if-eqz v10, :cond_d

    const v10, 0x7f0901ab

    .line 278
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, "screenID":Ljava/lang/String;
    :goto_4
    const v10, 0x7f090138

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "eventID":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v10

    iget v11, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderCloseReason:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v1, v11}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    move-object v0, v3

    .line 283
    .local v0, "closedFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v2, :cond_e

    .line 284
    new-instance v10, Lcom/android/launcher3/folder/controller/FolderController$2;

    invoke-direct {v10, p0, v0}, Lcom/android/launcher3/folder/controller/FolderController$2;-><init>(Lcom/android/launcher3/folder/controller/FolderController;Lcom/android/launcher3/folder/view/FolderView;)V

    invoke-virtual {v2, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    .end local v0    # "closedFolder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v1    # "eventID":Ljava/lang/String;
    .end local v4    # "folderIconViewRemoved":Z
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "screenID":Ljava/lang/String;
    :cond_7
    :goto_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher3/folder/controller/FolderController;->showFolderBgView(ZZ)V

    .line 305
    .end local v3    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v5    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v9    # "toViewMode":I
    :cond_8
    return-object v2

    .line 255
    .restart local v3    # "folder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v5    # "layerViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Integer;>;"
    .restart local v9    # "toViewMode":I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 265
    .restart local v4    # "folderIconViewRemoved":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_1

    .line 266
    .restart local v8    # "suppressChangeStageOnce":Z
    :cond_b
    const/4 v10, 0x3

    goto :goto_2

    .line 269
    .end local v8    # "suppressChangeStageOnce":Z
    :cond_c
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v11, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v10, v3, v11}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToHomeOrAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/folder/view/FolderIconView;)Landroid/animation/Animator;

    move-result-object v2

    .line 270
    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V

    goto :goto_3

    .line 278
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_d
    const v10, 0x7f0901b7

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 292
    .restart local v0    # "closedFolder":Lcom/android/launcher3/folder/view/FolderView;
    .restart local v1    # "eventID":Ljava/lang/String;
    .restart local v7    # "screenID":Ljava/lang/String;
    :cond_e
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/launcher3/folder/view/FolderIconView;->setVisibility(I)V

    .line 293
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseComplete(Lcom/android/launcher3/folder/view/FolderView;)V

    goto :goto_5

    .line 295
    .end local v0    # "closedFolder":Lcom/android/launcher3/folder/view/FolderView;
    .end local v1    # "eventID":Ljava/lang/String;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "screenID":Ljava/lang/String;
    :cond_f
    const/4 v10, 0x6

    if-ne v9, v10, :cond_10

    .line 296
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v10, v3}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToFolderAddAppsAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_5

    .line 297
    :cond_10
    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    .line 298
    iget-object v10, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v10, v3}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getExitToWidgetAnimation(Lcom/android/launcher3/folder/view/FolderView;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_5
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 4
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v3, 0x0

    .line 404
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 406
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->onCloseFolder(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 407
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/controller/FolderController;->detachFolderFromDragLayer(Lcom/android/launcher3/folder/view/FolderView;)V

    .line 408
    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V

    .line 409
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/view/FolderIconView;->setVisibility(I)V

    .line 410
    iput-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    .line 412
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_0
    return-void
.end method

.method public searchBarHasFocus()Z
    .locals 2

    .prologue
    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 870
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderNameView()Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 871
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderNameView()Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->hasFocus()Z

    move-result v1

    .line 873
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSearchedAppInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 836
    iput-object p1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mSearchedAppInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 837
    return-void
.end method

.method public setup()V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 103
    new-instance v0, Lcom/android/launcher3/folder/FolderTransitionAnimation;

    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgBlurAmount:F

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mBgDrakenAlpha:F

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f040026

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderBgView;

    iput-object v0, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    .line 110
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/controller/FolderProxyCallbacksImpl;-><init>(Lcom/android/launcher3/folder/controller/FolderController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setFolderProxyCallbacks(Lcom/android/launcher3/proxy/FolderProxyCallbacks;)V

    .line 111
    return-void
.end method

.method public showFolderBgView(ZZ)V
    .locals 5
    .param p1, "tobeShown"    # Z
    .param p2, "forced"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 480
    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    if-eqz v4, :cond_1

    .line 481
    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 482
    .local v1, "withLighting":Z
    :goto_0
    if-eqz p1, :cond_4

    .line 483
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->setupFolderBgLayout()Z

    move-result v0

    .line 484
    .local v0, "completed":Z
    if-eqz v0, :cond_3

    .line 485
    iget-object v2, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    iget v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    .line 493
    .end local v0    # "completed":Z
    .end local v1    # "withLighting":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 481
    goto :goto_0

    .line 487
    .restart local v0    # "completed":Z
    .restart local v1    # "withLighting":Z
    :cond_3
    const-string v2, "FolderController"

    const-string v3, "showFolderBgView : layouting is not completed yet"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 490
    .end local v0    # "completed":Z
    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/folder/controller/FolderController;->mFolderBgView:Lcom/android/launcher3/folder/view/FolderBgView;

    iget v4, p0, Lcom/android/launcher3/folder/controller/FolderController;->mStateTransitionDuration:I

    invoke-virtual {v3, v2, v4, v1}, Lcom/android/launcher3/folder/view/FolderBgView;->showHelpForEdit(ZIZ)V

    goto :goto_1
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 2
    .param p1, "internalState"    # I

    .prologue
    .line 626
    const/4 v0, 0x1

    .line 627
    .local v0, "support":Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 628
    const/4 v0, 0x0

    .line 630
    :cond_0
    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 2
    .param p1, "internalState"    # I

    .prologue
    .line 617
    const/4 v0, 0x1

    .line 618
    .local v0, "support":Z
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 619
    :cond_0
    const/4 v0, 0x0

    .line 621
    :cond_1
    return v0
.end method

.method protected switchInternalState(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 11
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 339
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v2

    .line 340
    .local v2, "fromState":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/controller/FolderController;->getAdjustedInternalState(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/folder/controller/FolderController;->mState:I

    .line 341
    .local v5, "toState":I
    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 342
    .local v0, "animated":Z
    const/4 v4, 0x0

    .line 344
    .local v4, "stateChangeAnim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 345
    .local v1, "folder":Lcom/android/launcher3/folder/view/FolderView;
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_2

    .line 346
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    .line 348
    if-eq v5, v9, :cond_0

    if-ne v5, v10, :cond_5

    .line 349
    :cond_0
    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/view/FolderView;->hideAddButton(Z)V

    .line 350
    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/view/FolderView;->setCrosshairsVisibility(Z)V

    .line 351
    if-ne v5, v9, :cond_1

    .line 352
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->showHintPages()V

    .line 353
    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/view/FolderView;->setDragInProgress(Z)V

    .line 361
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/folder/FolderInfo;->opened:Z

    if-eqz v6, :cond_2

    .line 362
    if-ne v5, v9, :cond_6

    move v6, v7

    :goto_1
    invoke-virtual {p0, v6, v8}, Lcom/android/launcher3/folder/controller/FolderController;->showFolderBgView(ZZ)V

    .line 366
    :cond_2
    if-eqz v2, :cond_3

    if-ne v2, v7, :cond_8

    .line 367
    :cond_3
    if-ne v5, v9, :cond_7

    .line 368
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v6, v0, v1, v7}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 395
    :cond_4
    :goto_2
    return-object v4

    .line 356
    :cond_5
    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/view/FolderView;->showAddButton(Z)V

    .line 357
    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->hideHintPages()V

    .line 358
    invoke-virtual {v1, v8}, Lcom/android/launcher3/folder/view/FolderView;->setCrosshairsVisibility(Z)V

    goto :goto_0

    :cond_6
    move v6, v8

    .line 362
    goto :goto_1

    .line 369
    :cond_7
    if-ne v5, v10, :cond_4

    .line 370
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 371
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v3

    .line 372
    .local v3, "panel":Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    .line 373
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, v7, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    goto :goto_2

    .line 377
    .end local v3    # "panel":Landroid/view/View;
    :cond_8
    if-ne v2, v9, :cond_9

    .line 378
    if-ne v5, v7, :cond_4

    .line 379
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v6, v0, v1, v8}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    goto :goto_2

    .line 381
    :cond_9
    if-ne v2, v10, :cond_4

    .line 382
    if-ne v5, v7, :cond_c

    .line 383
    const/4 v4, 0x0

    .line 388
    :cond_a
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->isFolderStage()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_b
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    .line 389
    invoke-virtual {v6}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 390
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mMultiSelectManager:Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    invoke-virtual {v6, v8, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    .line 391
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v8, v7}, Lcom/android/launcher3/Launcher;->onChangeSelectMode(ZZ)V

    goto :goto_2

    .line 384
    :cond_c
    if-ne v5, v9, :cond_a

    .line 385
    iget-object v6, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTransitionAnimation:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-virtual {v6, v0, v1, v7}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->getDragAnimation(ZLcom/android/launcher3/folder/view/FolderView;Z)Landroid/animation/AnimatorSet;

    move-result-object v4

    goto :goto_3
.end method

.method public updateCheckBox(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/android/launcher3/folder/controller/FolderController;->isValidFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCheckBox(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    .line 744
    :cond_0
    return-void

    .line 738
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/controller/FolderController;->mTargetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 739
    .local v0, "view":Landroid/view/View;
    instance-of v2, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_2

    .line 740
    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_0
.end method
