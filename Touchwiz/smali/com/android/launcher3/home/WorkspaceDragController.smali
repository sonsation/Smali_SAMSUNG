.class public Lcom/android/launcher3/home/WorkspaceDragController;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragScroller;
.implements Lcom/android/launcher3/common/drag/DragState;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field private static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field private static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final WIDGET_DROP_ANIMATION_DELAY:I = 0xc8


# instance fields
.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mFirstDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

.field private mRestorePosition:Z

.field private mTargetCell:[I

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workspace"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 90
    iput v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    .line 91
    iput v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    .line 96
    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 98
    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 103
    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 104
    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFirstDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 106
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    .line 108
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 111
    iput v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    .line 126
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 127
    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 129
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    .line 132
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/WorkspaceDragController;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnLastItem(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/WorkspaceDragController;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreItems(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private addItemOnLastItem(Ljava/util/ArrayList;Z)V
    .locals 38
    .param p2, "removeOriginalView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1902
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const-wide/16 v24, -0x64

    .line 1903
    .local v24, "container":J
    const-wide/16 v10, 0x0

    .line 1905
    .local v10, "screenId":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 1906
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 1908
    const/16 v22, 0x0

    .line 1909
    .local v22, "canEnterResizeMode":Z
    const/16 v27, 0x0

    .line 1911
    .local v27, "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    :goto_0
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1912
    .local v31, "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    const/16 v29, 0x0

    .line 1913
    .local v29, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1914
    .local v28, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->itemFromAppsController(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v26

    .line 1915
    .local v26, "fromAppsController":Z
    if-eqz p2, :cond_6

    if-nez v26, :cond_6

    const/16 v33, 0x1

    .line 1917
    .local v33, "removeView":Z
    :goto_1
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v6, v6, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v6, :cond_8

    .line 1919
    :cond_0
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v6, :cond_7

    .line 1920
    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v35

    .line 1945
    .end local v10    # "screenId":J
    .local v35, "view":Landroid/view/View;
    :goto_2
    if-eqz v29, :cond_d

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_d

    .line 1946
    move-object/from16 v7, v29

    .line 1949
    .end local v28    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .local v7, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 1950
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v10

    .line 1952
    .restart local v10    # "screenId":J
    move-object/from16 v0, v35

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_b

    .line 1953
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    move-object/from16 v27, v35

    .line 1954
    check-cast v27, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 1955
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0, v8}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1956
    const/16 v22, 0x1

    .line 1958
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    .line 1965
    :cond_2
    :goto_4
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1966
    .local v30, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    if-eqz v30, :cond_3

    .line 1967
    const/4 v6, 0x1

    move-object/from16 v0, v30

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1970
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x64

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    const/4 v14, -0x1

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1973
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    instance-of v6, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_5

    if-eqz p2, :cond_4

    if-nez v33, :cond_5

    .line 1975
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v9, Ljava/util/ArrayList;

    move-object v6, v7

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-wide v12, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v8, v9, v12, v13}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 1977
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v6, :cond_5

    move-object v6, v7

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1978
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object v6, v7

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v8, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 1982
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1984
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v14, -0x64

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x0

    aget v18, v6, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x1

    aget v19, v6, v8

    iget v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v20, v0

    iget v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v13, v35

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_0

    .line 1915
    .end local v7    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v30    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v33    # "removeView":Z
    .end local v35    # "view":Landroid/view/View;
    .restart local v28    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_6
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 1922
    .restart local v33    # "removeView":Z
    :cond_7
    const/16 v35, 0x0

    .restart local v35    # "view":Landroid/view/View;
    goto/16 :goto_2

    .line 1925
    .end local v35    # "view":Landroid/view/View;
    :cond_8
    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v6, :pswitch_data_0

    .line 1941
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1928
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v33, :cond_9

    move-object/from16 v6, v28

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1929
    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v29

    .line 1930
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v29

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v8, v9, v6}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v35

    .line 1932
    .restart local v35    # "view":Landroid/view/View;
    goto/16 :goto_2

    .end local v35    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v29, v28

    .line 1929
    goto :goto_5

    .line 1934
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v6, v28

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    .line 1935
    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v29

    .line 1936
    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v8, v29

    check-cast v8, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .end local v10    # "screenId":J
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v35

    .line 1939
    .restart local v35    # "view":Landroid/view/View;
    goto/16 :goto_2

    .end local v35    # "view":Landroid/view/View;
    .restart local v10    # "screenId":J
    :cond_a
    move-object/from16 v29, v28

    .line 1935
    goto :goto_6

    .line 1960
    .end local v28    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v7    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v35    # "view":Landroid/view/View;
    :cond_b
    if-eqz v33, :cond_2

    .line 1961
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_4

    .line 1988
    .end local v7    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v26    # "fromAppsController":Z
    .end local v29    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v31    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v33    # "removeView":Z
    .end local v35    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10, v11}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v34

    .line 1989
    .local v34, "snapScreen":I
    move/from16 v23, v22

    .line 1990
    .local v23, "enterResizeMode":Z
    move-object/from16 v36, v27

    .line 1991
    .local v36, "widgetHostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    new-instance v32, Lcom/android/launcher3/home/WorkspaceDragController$12;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v34

    move/from16 v3, v23

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceDragController$12;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;IZLcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    .line 2003
    .local v32, "onComplete":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2004
    return-void

    .end local v10    # "screenId":J
    .end local v23    # "enterResizeMode":Z
    .end local v32    # "onComplete":Ljava/lang/Runnable;
    .end local v34    # "snapScreen":I
    .end local v36    # "widgetHostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .restart local v26    # "fromAppsController":Z
    .restart local v28    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v29    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v31    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .restart local v33    # "removeView":Z
    .restart local v35    # "view":Landroid/view/View;
    :cond_d
    move-object/from16 v7, v28

    .end local v28    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v7    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto/16 :goto_3

    .line 1925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 8
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/Integer;>;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1683
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1684
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    .line 1685
    .local v1, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 1686
    .local v2, "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v1, p3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1687
    .local v0, "profileId":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v4, :cond_0

    move v3, v4

    .line 1689
    .end local v0    # "profileId":Ljava/lang/Long;
    .end local v1    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    .end local v2    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :goto_0
    return v3

    .restart local v0    # "profileId":Ljava/lang/Long;
    .restart local v1    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    .restart local v2    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_0
    move v3, v5

    .line 1687
    goto :goto_0

    .end local v0    # "profileId":Ljava/lang/Long;
    .end local v1    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    .end local v2    # "userMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_1
    move v3, v5

    .line 1689
    goto :goto_0
.end method

.method private findEmptyCellForExtraDragObject([IZZZZ)Z
    .locals 15
    .param p1, "targetCell"    # [I
    .param p2, "canceled"    # Z
    .param p3, "cancelDropFolder"    # Z
    .param p4, "addEmptyScreen"    # Z
    .param p5, "findTotalPage"    # Z

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v12

    .line 1615
    .local v12, "screenId":J
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v11

    .line 1618
    .local v11, "screen":I
    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v14

    .line 1625
    .local v14, "totalPage":I
    :goto_0
    move v10, v11

    .local v10, "i":I
    :goto_1
    if-ge v10, v14, :cond_9

    .line 1626
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1627
    .local v8, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v8, :cond_2

    .line 1625
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1618
    .end local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v10    # "i":I
    .end local v14    # "totalPage":I
    :cond_1
    add-int/lit8 v14, v11, 0x1

    goto :goto_0

    .line 1631
    .restart local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v10    # "i":I
    .restart local v14    # "totalPage":I
    :cond_2
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    .line 1632
    .local v3, "countX":I
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    .line 1633
    .local v4, "countY":I
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v5

    .line 1634
    .local v5, "occupied":[[Z
    if-ne v10, v11, :cond_7

    if-eqz p2, :cond_3

    if-eqz p3, :cond_7

    .line 1635
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 1636
    .local v6, "prevTargetX":I
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 1642
    .local v7, "prevTargetY":I
    :goto_2
    if-ltz v6, :cond_4

    if-gez v7, :cond_5

    .line 1643
    :cond_4
    const/4 v6, 0x0

    .line 1644
    const/4 v7, 0x0

    .line 1647
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v12

    .line 1648
    const-wide/16 v0, -0xc9

    cmp-long v0, v12, v0

    if-nez v0, :cond_6

    .line 1649
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    .line 1652
    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v9

    .line 1653
    .local v9, "foundCell":Z
    if-eqz v9, :cond_8

    .line 1654
    iput-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1655
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1656
    const/4 v0, 0x1

    .line 1678
    .end local v3    # "countX":I
    .end local v4    # "countY":I
    .end local v5    # "occupied":[[Z
    .end local v6    # "prevTargetX":I
    .end local v7    # "prevTargetY":I
    .end local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v9    # "foundCell":Z
    :goto_3
    return v0

    .line 1638
    .restart local v3    # "countX":I
    .restart local v4    # "countY":I
    .restart local v5    # "occupied":[[Z
    .restart local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_7
    const/4 v6, 0x0

    .line 1639
    .restart local v6    # "prevTargetX":I
    const/4 v7, 0x0

    .restart local v7    # "prevTargetY":I
    goto :goto_2

    .line 1659
    .restart local v9    # "foundCell":Z
    :cond_8
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v9

    .line 1660
    if-eqz v9, :cond_0

    .line 1661
    iput-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1662
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1663
    const/4 v0, 0x1

    goto :goto_3

    .line 1667
    .end local v3    # "countX":I
    .end local v4    # "countY":I
    .end local v5    # "occupied":[[Z
    .end local v6    # "prevTargetX":I
    .end local v7    # "prevTargetY":I
    .end local v8    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v9    # "foundCell":Z
    :cond_9
    if-eqz p4, :cond_b

    .line 1668
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1669
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    .line 1671
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v12

    .line 1672
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1673
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1674
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1675
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1678
    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1571
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    .line 1573
    .local v0, "checkExtra":Z
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1574
    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x2

    .line 1577
    .local v2, "count":I
    :goto_0
    move v3, v2

    .local v3, "index":I
    :goto_1
    if-lez v3, :cond_3

    .line 1578
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1579
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v1, :cond_2

    .line 1577
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1574
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1575
    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    goto :goto_0

    .line 1583
    .restart local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v2    # "count":I
    .restart local v3    # "index":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1588
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1589
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    .line 1590
    .local v6, "screenId":J
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 1592
    .restart local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v8, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v9, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {v1, v5, v8, v9, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findCellForSpan([IIIZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1593
    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1594
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1610
    :goto_2
    return-void

    .line 1596
    :cond_4
    if-ne v3, v2, :cond_6

    .line 1597
    if-nez v0, :cond_5

    .line 1598
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    .line 1600
    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v8, -0xc9

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1601
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    .line 1606
    :goto_3
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1607
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    aput v10, v5, v10

    .line 1608
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    aput v10, v5, v11

    goto :goto_2

    .line 1603
    :cond_6
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v5, v8}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    .line 1604
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_3
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[IZ)V
    .locals 10
    .param p1, "loc"    # [I
    .param p2, "scaleXY"    # [F
    .param p3, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p4, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p5, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p6, "targetCell"    # [I
    .param p7, "scale"    # Z

    .prologue
    .line 1537
    iget v4, p5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 1538
    .local v4, "spanX":I
    iget v5, p5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 1540
    .local v5, "spanY":I
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v1, 0x0

    aget v2, p6, v1

    const/4 v1, 0x1

    aget v3, p6, v1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/Workspace;->estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v9

    .line 1541
    .local v9, "r":Landroid/graphics/Rect;
    const/4 v0, 0x0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    .line 1542
    const/4 v0, 0x1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    .line 1544
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p4, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v6

    .line 1548
    .local v6, "cellLayoutScale":F
    if-eqz p7, :cond_0

    .line 1549
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    .line 1550
    .local v7, "dragViewScaleX":F
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 1558
    .local v8, "dragViewScaleY":F
    :goto_0
    instance-of v0, p5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_1

    .line 1559
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    .line 1560
    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p4}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentTop()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    .line 1566
    :goto_1
    const/4 v0, 0x0

    mul-float v1, v7, v6

    aput v1, p2, v0

    .line 1567
    const/4 v0, 0x1

    mul-float v1, v8, v6

    aput v1, p2, v0

    .line 1568
    return-void

    .line 1552
    .end local v7    # "dragViewScaleX":F
    .end local v8    # "dragViewScaleY":F
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1553
    .restart local v7    # "dragViewScaleX":F
    const/high16 v8, 0x3f800000    # 1.0f

    .restart local v8    # "dragViewScaleY":F
    goto :goto_0

    .line 1562
    :cond_1
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    .line 1563
    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    goto :goto_1
.end method

.method private isExistSingleInstanceAppWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z
    .locals 12
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1693
    sget-object v8, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v9, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1694
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1693
    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    .line 1695
    .local v1, "isExistPackageListWidget":Z
    sget-object v8, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v9, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1696
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1695
    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    .line 1698
    .local v0, "isExistComponentListWidget":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    .line 1699
    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1700
    .local v2, "isLightTheme":Z
    if-eqz v2, :cond_1

    .line 1701
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x1030132

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->setTheme(I)V

    .line 1706
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/launcher3/home/HomeLoader;->checkDuplicatedSingleInstanceWidgetExist(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1708
    .local v5, "widgetLabel":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 1709
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f09003a

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1714
    .local v4, "popupSting":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1715
    .local v3, "onlyOneToast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v6, v7

    .line 1718
    .end local v2    # "isLightTheme":Z
    .end local v3    # "onlyOneToast":Landroid/widget/Toast;
    .end local v4    # "popupSting":Ljava/lang/String;
    .end local v5    # "widgetLabel":Ljava/lang/String;
    :cond_2
    return v6

    .line 1711
    .restart local v2    # "isLightTheme":Z
    .restart local v5    # "widgetLabel":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f090082

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "popupSting":Ljava/lang/String;
    goto :goto_0
.end method

.method private itemFromAppsController(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 6
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1887
    const/4 v0, 0x0

    .line 1889
    .local v0, "result":Z
    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1890
    const/4 v0, 0x1

    .line 1897
    :cond_0
    :goto_0
    return v0

    .line 1891
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1893
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 6
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 517
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 519
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v1, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_1

    .line 520
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 525
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 526
    .local v2, "screenId":J
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 529
    :cond_0
    return-void

    .line 522
    .end local v2    # "screenId":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method private onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 42
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 654
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 655
    .local v35, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v3, :cond_0

    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_1

    .line 656
    :cond_0
    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/common/base/item/ItemInfo;->isAppOrShortcutType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 831
    :cond_1
    :goto_0
    return-void

    .line 659
    :cond_2
    new-instance v20, Lcom/android/launcher3/home/WorkspaceDragController$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$6;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    .line 666
    .local v20, "exitDragStateRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v3, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v36, v0

    .line 667
    .local v36, "isFolderDrop":Z
    const/16 v29, 0x0

    .line 668
    .local v29, "cancelDropFolder":Z
    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v35

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 669
    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v38, 0x1

    .line 671
    .local v38, "isFromHomeFolder":Z
    :goto_1
    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v38, :cond_5

    :cond_3
    const/16 v37, 0x1

    .line 676
    .local v37, "isFromApps":Z
    :goto_2
    move-object/from16 v0, v35

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 695
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 669
    .end local v37    # "isFromApps":Z
    .end local v38    # "isFromHomeFolder":Z
    :cond_4
    const/16 v38, 0x0

    goto :goto_1

    .line 671
    .restart local v38    # "isFromHomeFolder":Z
    :cond_5
    const/16 v37, 0x0

    goto :goto_2

    .line 680
    .restart local v37    # "isFromApps":Z
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v38, :cond_a

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 681
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v39

    .line 682
    .local v39, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v3, v39

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v6, v3}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v41

    .line 698
    .local v41, "view":Landroid/view/View;
    :goto_4
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_6

    .line 699
    move-object/from16 v35, v39

    .line 702
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x0

    aget v3, v3, v5

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v4, v5

    move-object/from16 v0, v35

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v35

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-object/from16 v0, p1

    invoke-virtual {v3, v5, v6, v0, v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->acceptDrop([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)Z

    move-result v34

    .line 707
    .local v34, "foundCell":Z
    if-nez v34, :cond_e

    .line 708
    new-instance v2, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    .line 709
    .local v2, "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v5, v5

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    const/4 v10, 0x3

    move-object v6, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    if-ltz v3, :cond_d

    const/16 v34, 0x1

    .line 715
    :goto_5
    if-nez v34, :cond_e

    .line 716
    invoke-interface/range {v20 .. v20}, Ljava/lang/Runnable;->run()V

    .line 718
    if-eqz v38, :cond_7

    .line 719
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 721
    :cond_7
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v32, "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 724
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 726
    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 727
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 731
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/HomeController;->showNoSpacePage(Z)V

    goto/16 :goto_0

    .end local v2    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .end local v32    # "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v34    # "foundCell":Z
    .end local v39    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v41    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v39, v35

    .line 681
    goto/16 :goto_3

    .line 685
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    .line 686
    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v39

    .line 687
    .restart local v39    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_6
    if-eqz v39, :cond_b

    move-object/from16 v3, v39

    .line 688
    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/launcher3/folder/FolderInfo;->setAlphabeticalOrder(ZZLandroid/content/Context;)V

    .line 690
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v39

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v41

    .line 693
    .restart local v41    # "view":Landroid/view/View;
    goto/16 :goto_4

    .end local v39    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v41    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v39, v35

    .line 686
    goto :goto_6

    .line 713
    .restart local v2    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .restart local v34    # "foundCell":Z
    .restart local v39    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v41    # "view":Landroid/view/View;
    :cond_d
    const/16 v34, 0x0

    goto/16 :goto_5

    .line 736
    .end local v2    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_e
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    move-object/from16 v6, v41

    move-object/from16 v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 739
    if-nez v36, :cond_f

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->hasFolderItem(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 742
    :cond_f
    const/4 v8, 0x1

    .line 744
    .end local v29    # "cancelDropFolder":Z
    .local v8, "cancelDropFolder":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v3, v5, v6, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 745
    if-nez v36, :cond_10

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->hasFolderItem(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 748
    :cond_10
    const/4 v8, 0x1

    .line 751
    :cond_11
    if-eqz v8, :cond_16

    .line 752
    if-nez v36, :cond_13

    .line 753
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 754
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v3, :cond_12

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 755
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 758
    :cond_12
    invoke-interface/range {v20 .. v20}, Ljava/lang/Runnable;->run()V

    .line 759
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 760
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v10, v3, 0x1

    move-object/from16 v3, p0

    .line 759
    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZI)V

    goto/16 :goto_0

    .line 765
    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v14}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-result v3

    if-nez v3, :cond_16

    .line 767
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v4, "extraDragList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_14

    .line 771
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 774
    :cond_14
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v3, :cond_15

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 775
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 779
    :cond_15
    invoke-interface/range {v20 .. v20}, Ljava/lang/Runnable;->run()V

    .line 781
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZI)V

    goto/16 :goto_0

    .line 786
    .end local v4    # "extraDragList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_16
    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-nez v3, :cond_17

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v35

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v3, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v33

    .line 788
    .local v33, "folder":Landroid/view/View;
    move-object/from16 v0, v33

    instance-of v3, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_17

    .line 789
    check-cast v33, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v33    # "folder":Landroid/view/View;
    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderView;->updateDeletedFolder()V

    .line 793
    :cond_17
    const-wide/16 v30, -0x64

    .line 794
    .local v30, "container":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3, v5}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v14

    .line 796
    .local v14, "screenId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    cmp-long v3, v6, v14

    if-eqz v3, :cond_18

    .line 797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v14, v15}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v40

    .line 798
    .local v40, "snapScreen":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 803
    .end local v40    # "snapScreen":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v12, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v16, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v17, v3, v5

    const/16 v18, -0x1

    move-object/from16 v11, v35

    invoke-virtual/range {v10 .. v18}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 805
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, v35

    instance-of v3, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_19

    .line 806
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v35

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v6, v10, v11}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v3, :cond_19

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 808
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v3, v35

    check-cast v3, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 812
    :cond_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v12, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v16, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v17, v3, v5

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    move-object/from16 v11, v41

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 815
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x1

    aget v7, v7, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6, v7}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 820
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v17, v0

    const/16 v19, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v21, v0

    move-object/from16 v18, v41

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .line 828
    :goto_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 829
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v28, v3, 0x1

    move-object/from16 v21, p0

    move/from16 v26, v8

    invoke-direct/range {v21 .. v28}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZI)V

    goto/16 :goto_0

    .line 825
    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    goto :goto_8

    .end local v8    # "cancelDropFolder":Z
    .end local v14    # "screenId":J
    .end local v30    # "container":J
    .restart local v29    # "cancelDropFolder":Z
    :cond_1b
    move/from16 v8, v29

    .end local v29    # "cancelDropFolder":Z
    .restart local v8    # "cancelDropFolder":Z
    goto/16 :goto_7

    .line 676
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
    .locals 45
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 532
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 534
    .local v20, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    const/16 v37, 0x1

    .line 535
    .local v37, "findNearestVacantCell":Z
    const/16 v44, 0x0

    .line 536
    .local v44, "willAddToFolder":Z
    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 537
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    float-to-int v8, v8

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 540
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v10

    .line 543
    .local v10, "distance":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willCreateUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;[IFZ)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 545
    invoke-virtual {v7, v6, v8, v10}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willAddToExistingUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;[IF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 547
    :cond_0
    const/16 v37, 0x0

    .line 548
    const/16 v44, 0x1

    .line 555
    .end local v10    # "distance":F
    :cond_1
    :goto_0
    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    :cond_2
    const/16 v39, 0x1

    .line 557
    .local v39, "isWidget":Z
    :goto_1
    if-eqz v39, :cond_8

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v24, v0

    .line 558
    .local v24, "finalView":Landroid/view/View;
    :goto_2
    const/16 v41, 0x0

    .line 559
    .local v41, "updateWidgetSize":Z
    if-eqz v37, :cond_b

    .line 560
    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v14

    .line 561
    .local v14, "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v17, v0

    .line 562
    .local v17, "resultSpan":[I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v12, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v13, v6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v16, v0

    const/16 v18, 0x3

    invoke-virtual/range {v11 .. v18}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 566
    const/4 v6, 0x0

    aget v6, v17, v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    aget v6, v17, v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    if-eq v6, v7, :cond_4

    .line 567
    :cond_3
    const/16 v41, 0x1

    .line 570
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ltz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ltz v6, :cond_9

    const/4 v6, 0x0

    aget v6, v17, v6

    if-lez v6, :cond_9

    const/4 v6, 0x1

    aget v6, v17, v6

    if-lez v6, :cond_9

    const/16 v38, 0x1

    .line 573
    .local v38, "foundCell":Z
    :goto_3
    if-nez v38, :cond_a

    .line 574
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 575
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 576
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 578
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 580
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeController;->showNoSpacePage(Z)V

    .line 651
    .end local v14    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .end local v17    # "resultSpan":[I
    .end local v38    # "foundCell":Z
    :goto_4
    return-void

    .line 551
    .end local v24    # "finalView":Landroid/view/View;
    .end local v39    # "isWidget":Z
    .end local v41    # "updateWidgetSize":Z
    :cond_6
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v11

    const-string v12, "IWAR"

    const-string v13, "Home_Background_Longpress"

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    .line 555
    :cond_7
    const/16 v39, 0x0

    goto/16 :goto_1

    .line 557
    .restart local v39    # "isWidget":Z
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 570
    .restart local v14    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .restart local v17    # "resultSpan":[I
    .restart local v24    # "finalView":Landroid/view/View;
    .restart local v41    # "updateWidgetSize":Z
    :cond_9
    const/16 v38, 0x0

    goto :goto_3

    .line 584
    .restart local v38    # "foundCell":Z
    :cond_a
    const/4 v6, 0x0

    aget v6, v17, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    .line 585
    const/4 v6, 0x1

    aget v6, v17, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    .line 588
    .end local v14    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    .end local v17    # "resultSpan":[I
    .end local v38    # "foundCell":Z
    :cond_b
    const-wide/16 v34, -0x64

    .line 589
    .local v34, "container":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v42

    .line 590
    .local v42, "screenId":J
    const/16 v36, 0x0

    .line 592
    .local v36, "delay":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    cmp-long v6, v6, v42

    if-eqz v6, :cond_c

    .line 593
    new-instance v40, Lcom/android/launcher3/home/WorkspaceDragController$3;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$3;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;J)V

    .line 602
    .local v40, "r":Ljava/lang/Runnable;
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_e

    .line 603
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 607
    :goto_5
    const/16 v36, 0xc8

    .line 610
    .end local v40    # "r":Ljava/lang/Runnable;
    :cond_c
    new-instance v22, Lcom/android/launcher3/home/WorkspaceDragController$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceDragController$4;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;J)V

    .line 620
    .local v22, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    instance-of v6, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_d

    if-eqz v41, :cond_d

    move-object/from16 v33, v24

    .line 621
    check-cast v33, Landroid/appwidget/AppWidgetHostView;

    .line 622
    .local v33, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, v33

    invoke-static {v6, v0, v7, v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    .line 626
    .end local v33    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_d
    if-eqz v39, :cond_f

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v6, :cond_f

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v6, :cond_f

    .line 628
    const/16 v23, 0x1

    .line 629
    .local v23, "animationStyle":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v21, v0

    .line 630
    .local v21, "dragView":Lcom/android/launcher3/common/drag/DragView;
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/android/launcher3/home/WorkspaceDragController$5;

    move-object/from16 v19, p0

    invoke-direct/range {v18 .. v24}, Lcom/android/launcher3/home/WorkspaceDragController$5;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;)V

    move/from16 v0, v36

    int-to-long v8, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 650
    .end local v21    # "dragView":Lcom/android/launcher3/common/drag/DragView;
    .end local v23    # "animationStyle":I
    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    goto/16 :goto_4

    .line 605
    .end local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .restart local v40    # "r":Ljava/lang/Runnable;
    :cond_e
    invoke-interface/range {v40 .. v40}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    .line 637
    .end local v40    # "r":Ljava/lang/Runnable;
    .restart local v22    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    :cond_f
    if-eqz v39, :cond_10

    .line 638
    const/16 v23, 0x0

    .line 639
    .restart local v23    # "animationStyle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v28, v0

    const/16 v32, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, v20

    move-object/from16 v29, v22

    move/from16 v30, v23

    move-object/from16 v31, v24

    invoke-virtual/range {v25 .. v32}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_6

    .line 641
    .end local v23    # "animationStyle":I
    :cond_10
    if-eqz v44, :cond_11

    .line 642
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 643
    invoke-interface/range {v22 .. v22}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 645
    :cond_11
    const/16 v23, 0x1

    .line 646
    .restart local v23    # "animationStyle":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v28, v0

    const/16 v32, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, v20

    move-object/from16 v29, v22

    move/from16 v30, v23

    move-object/from16 v31, v24

    invoke-virtual/range {v25 .. v32}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_6
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZI)V
    .locals 9
    .param p2, "postRunnable"    # Ljava/lang/Runnable;
    .param p3, "restored"    # Z
    .param p4, "canceled"    # Z
    .param p5, "cancelDropFolder"    # Z
    .param p6, "fromOther"    # Z
    .param p7, "fullCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "ZZZZI)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZIZ)V

    .line 837
    return-void
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZIZ)V
    .locals 29
    .param p2, "postRunnable"    # Ljava/lang/Runnable;
    .param p3, "restored"    # Z
    .param p4, "canceled"    # Z
    .param p5, "cancelDropFolder"    # Z
    .param p6, "fromOther"    # Z
    .param p7, "fullCnt"    # I
    .param p8, "isTargetHotseat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "ZZZZIZ)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v25, "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v24, "restoreExtraDropItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 846
    .local v13, "remainCnt":I
    move/from16 v26, p7

    .line 848
    .local v26, "totalCnt":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 849
    .local v16, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    if-eqz p5, :cond_0

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v4, :cond_0

    .line 850
    add-int/lit8 v13, v13, -0x1

    .line 851
    goto :goto_0

    .line 853
    :cond_0
    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    or-int p3, p3, v4

    .line 855
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 857
    .local v20, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p3, :cond_1

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v4, v4, v14

    if-nez v4, :cond_1

    .line 858
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v21

    .line 863
    .local v21, "isItemInFolder":Z
    const/16 v17, 0x0

    .line 865
    .local v17, "folder":Landroid/view/View;
    if-eqz v21, :cond_2

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v17

    .line 867
    if-nez p3, :cond_2

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    .line 872
    :cond_2
    const/16 v22, 0x0

    .line 873
    .local v22, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v4, v4, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v4, :cond_9

    .line 874
    :cond_3
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v27

    .line 897
    .local v27, "view":Landroid/view/View;
    :goto_1
    if-eqz v22, :cond_4

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 898
    move-object/from16 v20, v22

    .line 901
    :cond_4
    if-eqz p3, :cond_c

    .line 902
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v10, v4, v5

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v10, v4, v5

    move/from16 v23, v13

    .line 919
    .end local v13    # "remainCnt":I
    .local v23, "remainCnt":I
    :goto_2
    if-eqz p3, :cond_5

    if-nez v21, :cond_13

    .line 920
    :cond_5
    if-eqz p3, :cond_11

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 921
    .local v6, "container":J
    :goto_3
    if-eqz p3, :cond_12

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 925
    .local v8, "screenId":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v14, 0x1

    aget v11, v5, v14

    const/4 v12, -0x1

    move-object/from16 v5, v20

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 927
    if-eqz p6, :cond_6

    .line 928
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, v20

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_6

    .line 929
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v4, v20

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v10, v14, v15}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 933
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v14, 0x1

    aget v11, v5, v14

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v5, v27

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v4, :cond_7

    .line 937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 941
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, v16

    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    .line 943
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v4

    if-nez v4, :cond_8

    .line 944
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v13, 0x12c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v12, v27

    move-object/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    .end local v6    # "container":J
    .end local v8    # "screenId":J
    :cond_8
    :goto_5
    move/from16 v13, v23

    .line 955
    .end local v23    # "remainCnt":I
    .restart local v13    # "remainCnt":I
    goto/16 :goto_0

    .line 876
    .end local v27    # "view":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    .line 893
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown item type: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 880
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v4, v20

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 881
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v22

    .line 882
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v22

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v10, v4}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v27

    .line 884
    .restart local v27    # "view":Landroid/view/View;
    goto/16 :goto_1

    .end local v27    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v22, v20

    .line 881
    goto :goto_6

    .line 886
    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v4, v20

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    .line 887
    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v22

    .line 888
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v22

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v27

    .line 891
    .restart local v27    # "view":Landroid/view/View;
    goto/16 :goto_1

    .end local v27    # "view":Landroid/view/View;
    :cond_b
    move-object/from16 v22, v20

    .line 887
    goto :goto_7

    .line 905
    .restart local v27    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFirstDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v10, v14}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v14

    cmp-long v4, v4, v14

    if-eqz v4, :cond_d

    if-eqz p4, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p4

    .line 906
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-result v19

    .line 908
    .local v19, "foundCell":Z
    :goto_8
    if-nez v19, :cond_10

    .line 909
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v4, v4, v14

    if-nez v4, :cond_e

    .line 910
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_e
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 906
    .end local v19    # "foundCell":Z
    :cond_f
    const/16 v19, 0x0

    goto :goto_8

    .line 915
    .restart local v19    # "foundCell":Z
    :cond_10
    add-int/lit8 v13, v13, -0x1

    move/from16 v23, v13

    .end local v13    # "remainCnt":I
    .restart local v23    # "remainCnt":I
    goto/16 :goto_2

    .line 920
    .end local v19    # "foundCell":Z
    :cond_11
    const-wide/16 v6, -0x64

    goto/16 :goto_3

    .line 921
    .restart local v6    # "container":J
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v8

    goto/16 :goto_4

    .line 948
    .end local v6    # "container":J
    :cond_13
    if-eqz v17, :cond_8

    .line 949
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/folder/FolderInfo;

    .line 950
    .local v18, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v10, v4, v5

    .line 951
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v10, v4, v5

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    goto/16 :goto_5

    .line 957
    .end local v16    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v17    # "folder":Landroid/view/View;
    .end local v18    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v21    # "isItemInFolder":Z
    .end local v22    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v23    # "remainCnt":I
    .end local v27    # "view":Landroid/view/View;
    .restart local v13    # "remainCnt":I
    :cond_14
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v4

    .line 959
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    .line 962
    :cond_15
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_17

    .line 964
    new-instance v11, Lcom/android/launcher3/home/WorkspaceDragController$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$7;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;)V

    .line 972
    .local v11, "addItemRunnable":Ljava/lang/Runnable;
    new-instance v12, Lcom/android/launcher3/home/WorkspaceDragController$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p6

    invoke-direct {v12, v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$8;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V

    .line 978
    .local v12, "restoreRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    move/from16 v14, v26

    move/from16 v15, p8

    invoke-static/range {v10 .. v15}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;Ljava/lang/Runnable;IIZ)V

    .line 991
    .end local v11    # "addItemRunnable":Ljava/lang/Runnable;
    .end local v12    # "restoreRunnable":Ljava/lang/Runnable;
    :cond_16
    :goto_9
    return-void

    .line 980
    :cond_17
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_16

    .line 981
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 982
    .restart local v16    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 983
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz p6, :cond_16

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v4

    if-nez v4, :cond_16

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v4, v14, v15}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v17

    .line 985
    .restart local v17    # "folder":Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_16

    .line 986
    check-cast v17, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local v17    # "folder":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->updateDeletedFolder()V

    goto :goto_9

    .line 876
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

.method private onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 69
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 254
    new-instance v51, Lcom/android/launcher3/home/WorkspaceDragController$1;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$1;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    .line 262
    .local v51, "exitDragStateRunnable":Ljava/lang/Runnable;
    const/16 v64, 0x0

    .line 263
    .local v64, "resizeOnDrop":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v5, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v58, v0

    .line 264
    .local v58, "isFolderDrop":Z
    const/16 v49, 0x0

    .line 266
    .local v49, "cancelDropFolder":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v16, v0

    .line 267
    .local v16, "cell":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 268
    .local v50, "cellInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v62, v0

    .line 270
    .local v62, "originalLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/16 v48, 0x0

    .line 271
    .local v48, "canEnterResizeMode":Z
    const/16 v56, 0x0

    .line 272
    .local v56, "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_23

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v5, :cond_23

    .line 273
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v5, v8, v14

    if-eqz v5, :cond_2

    const/16 v54, 0x1

    .line 274
    .local v54, "hasMovedFromHotseat":Z
    :goto_0
    if-eqz v54, :cond_0

    .line 275
    if-eqz v58, :cond_3

    .line 276
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSDT"

    const-string v7, "Folder"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 285
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v63

    .line 286
    .local v63, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f0901c0

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f090179

    .line 287
    move-object/from16 v0, v63

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .end local v63    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v11, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanX:I

    .line 290
    .local v11, "spanX":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v12, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanY:I

    .line 292
    .local v12, "spanY":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v9, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v10, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 295
    move-object/from16 v0, v51

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 297
    if-eqz v54, :cond_5

    const/16 v17, 0x0

    .line 298
    .local v17, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v18, p1

    .line 299
    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 301
    if-nez v58, :cond_6

    .line 514
    .end local v11    # "spanX":I
    .end local v12    # "spanY":I
    .end local v54    # "hasMovedFromHotseat":Z
    :cond_1
    :goto_3
    return-void

    .line 273
    .end local v17    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    const/16 v54, 0x0

    goto/16 :goto_0

    .line 279
    .restart local v54    # "hasMovedFromHotseat":Z
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 280
    .local v57, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual/range {v57 .. v57}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 281
    invoke-virtual/range {v57 .. v57}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "extra":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSDT"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_1

    .line 281
    .end local v7    # "extra":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    .end local v57    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v11    # "spanX":I
    .restart local v12    # "spanY":I
    :cond_5
    move-object/from16 v17, v62

    .line 297
    goto :goto_2

    .line 304
    .restart local v17    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_6
    const/16 v49, 0x1

    .line 307
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v8, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 309
    if-nez v58, :cond_a

    .line 310
    if-nez v54, :cond_8

    if-eqz v62, :cond_8

    .line 311
    move-object/from16 v0, v62

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 313
    :cond_8
    if-nez v54, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    int-to-long v14, v5

    cmp-long v5, v8, v14

    if-nez v5, :cond_1

    .line 314
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto :goto_3

    .line 318
    :cond_a
    const/16 v49, 0x1

    .line 321
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 322
    .restart local v57    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-static/range {v57 .. v57}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v23

    .line 323
    .local v23, "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v26, v0

    .line 324
    .local v26, "resultSpan":[I
    if-eqz v49, :cond_12

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v23}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    .end local v23    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    move-result v5

    if-nez v5, :cond_10

    .line 327
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v19, "extraDragList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_c

    .line 329
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    .line 332
    :cond_c
    new-instance v67, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v67 .. v67}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 333
    .local v67, "source":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v67

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->copyFrom(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 334
    move-object/from16 v0, v19

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_d

    .line 337
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    :cond_d
    if-eqz v62, :cond_e

    .line 341
    move-object/from16 v0, v62

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 344
    :cond_e
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_f

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 345
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 348
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    .line 350
    invoke-interface/range {v51 .. v51}, Ljava/lang/Runnable;->run()V

    .line 352
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v24, 0x0

    .line 353
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v18, p0

    move/from16 v23, v49

    .line 352
    invoke-direct/range {v18 .. v25}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZI)V

    goto/16 :goto_3

    .line 356
    .end local v19    # "extraDragList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v67    # "source":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_10
    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v26, v5

    .line 357
    const/4 v5, 0x1

    const/4 v6, 0x1

    aput v6, v26, v5

    .line 365
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ltz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ltz v5, :cond_13

    const/4 v5, 0x0

    aget v5, v26, v5

    if-lez v5, :cond_13

    const/4 v5, 0x1

    aget v5, v26, v5

    if-lez v5, :cond_13

    const/16 v53, 0x1

    .line 368
    .local v53, "foundCell":Z
    :goto_6
    if-nez v53, :cond_1a

    .line 369
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v65, "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v50

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v5, v8, v14

    if-nez v5, :cond_14

    .line 371
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 372
    if-eqz v62, :cond_11

    .line 373
    move-object/from16 v0, v62

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 379
    :cond_11
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    .line 380
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v52, "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v52

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_17

    .line 383
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 384
    .local v61, "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, v61

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v5, v8, v14

    if-nez v5, :cond_15

    .line 385
    move-object/from16 v0, v65

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 360
    .end local v52    # "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v53    # "foundCell":Z
    .end local v61    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v65    # "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v23    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v0, v5

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v0, v5

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v25, v0

    const/16 v27, 0x2

    move-object/from16 v24, v16

    invoke-virtual/range {v20 .. v27}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    goto/16 :goto_5

    .line 365
    .end local v23    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_13
    const/16 v53, 0x0

    goto/16 :goto_6

    .line 376
    .restart local v53    # "foundCell":Z
    .restart local v65    # "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_14
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    .line 377
    move-object/from16 v0, v65

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 387
    .restart local v52    # "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .restart local v61    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_8

    .line 390
    .end local v61    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_16
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 392
    :cond_17
    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_18

    .line 393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v5

    .line 394
    move-object/from16 v0, v65

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    .line 397
    :cond_18
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 398
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 399
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 401
    :cond_19
    invoke-interface/range {v51 .. v51}, Ljava/lang/Runnable;->run()V

    .line 402
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->showNoSpacePage(Z)V

    goto/16 :goto_3

    .line 407
    .end local v52    # "finalAddItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .end local v65    # "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    :cond_1a
    move-object/from16 v0, v16

    instance-of v5, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_1c

    const/4 v5, 0x0

    aget v5, v26, v5

    move-object/from16 v0, v57

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ne v5, v6, :cond_1b

    const/4 v5, 0x1

    aget v5, v26, v5

    move-object/from16 v0, v57

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-eq v5, v6, :cond_1c

    .line 409
    :cond_1b
    const/16 v64, 0x1

    .line 410
    const/4 v5, 0x0

    aget v5, v26, v5

    move-object/from16 v0, v57

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 411
    const/4 v5, 0x1

    aget v5, v26, v5

    move-object/from16 v0, v57

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v4, v16

    .line 412
    check-cast v4, Landroid/appwidget/AppWidgetHostView;

    .line 413
    .local v4, "awhv":Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x0

    aget v6, v26, v6

    const/4 v8, 0x1

    aget v8, v26, v8

    invoke-static {v5, v4, v6, v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    .line 417
    .end local v4    # "awhv":Landroid/appwidget/AppWidgetHostView;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v62

    if-ne v0, v5, :cond_1d

    if-eqz v49, :cond_25

    :cond_1d
    const/16 v55, 0x1

    .line 418
    .local v55, "hasMovedLayout":Z
    :goto_9
    const-wide/16 v30, -0x64

    .line 419
    .local v30, "container":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-gez v5, :cond_26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v32, v0

    .line 422
    .local v32, "screenId":J
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    cmp-long v5, v8, v32

    if-eqz v5, :cond_1e

    .line 423
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v66

    .line 424
    .local v66, "snapScreen":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v66

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 427
    .end local v66    # "snapScreen":I
    :cond_1e
    if-eqz v55, :cond_1f

    .line 428
    if-nez v54, :cond_27

    if-eqz v62, :cond_27

    .line 429
    move-object/from16 v0, v62

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 434
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v34, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v35, v5, v6

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v36, v0

    move-object/from16 v0, v50

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v37, v0

    move-object/from16 v29, v16

    invoke-virtual/range {v28 .. v37}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 436
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToPageLog(Ljava/lang/Object;Z)V

    .line 437
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 438
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v63

    .line 439
    .restart local v63    # "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f0901c1

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f09018e

    .line 440
    move-object/from16 v0, v63

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 439
    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v63    # "res":Landroid/content/res/Resources;
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v60

    check-cast v60, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 446
    .local v60, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 448
    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    .line 449
    move-object/from16 v0, v57

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    .line 450
    const/4 v5, 0x1

    move-object/from16 v0, v60

    iput-boolean v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 451
    if-nez v55, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_20

    .line 452
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 455
    :cond_20
    move-object/from16 v0, v16

    instance-of v5, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v5, :cond_21

    move-object/from16 v56, v16

    .line 456
    check-cast v56, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v56

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 458
    const/16 v48, 0x1

    .line 462
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v28, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move/from16 v34, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v35, v0

    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v36, v0

    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v37, v0

    move-object/from16 v29, v50

    invoke-virtual/range {v28 .. v37}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    .line 465
    const/4 v6, 0x1

    if-eqz v55, :cond_28

    if-nez v54, :cond_28

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, v60

    iget v8, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v60

    iget v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    .line 467
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v32, v8

    if-nez v5, :cond_23

    .line 468
    if-nez v55, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    move-object/from16 v0, v60

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    move-object/from16 v0, v60

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-eq v5, v6, :cond_23

    .line 469
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    .line 474
    .end local v11    # "spanX":I
    .end local v12    # "spanY":I
    .end local v17    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v26    # "resultSpan":[I
    .end local v30    # "container":J
    .end local v32    # "screenId":J
    .end local v53    # "foundCell":Z
    .end local v54    # "hasMovedFromHotseat":Z
    .end local v55    # "hasMovedLayout":Z
    .end local v57    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v60    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_23
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 477
    .restart local v17    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v48, :cond_29

    .line 478
    move-object/from16 v68, v56

    .line 479
    .local v68, "widgetHostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    new-instance v38, Lcom/android/launcher3/home/WorkspaceDragController$2;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v68

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$2;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    .line 489
    .end local v68    # "widgetHostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .local v38, "onCompleteRunnable":Ljava/lang/Runnable;
    :goto_d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 490
    move-object/from16 v0, v50

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_24

    move-object/from16 v0, v50

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2a

    :cond_24
    const/16 v59, 0x1

    .line 492
    .local v59, "isWidget":Z
    :goto_e
    if-eqz v59, :cond_2c

    .line 493
    if-eqz v64, :cond_2b

    const/16 v39, 0x2

    .line 495
    .local v39, "animationType":I
    :goto_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v37, v0

    const/16 v41, 0x0

    move-object/from16 v34, p0

    move-object/from16 v35, v50

    move-object/from16 v36, v17

    move-object/from16 v40, v16

    invoke-virtual/range {v34 .. v41}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 508
    .end local v39    # "animationType":I
    .end local v59    # "isWidget":Z
    :goto_10
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 510
    if-nez v49, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    .line 511
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    move/from16 v43, v0

    const/16 v44, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v47, v5, 0x1

    move-object/from16 v40, p0

    move/from16 v45, v49

    .line 511
    invoke-direct/range {v40 .. v47}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZI)V

    goto/16 :goto_3

    .line 417
    .end local v38    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v11    # "spanX":I
    .restart local v12    # "spanY":I
    .restart local v26    # "resultSpan":[I
    .restart local v53    # "foundCell":Z
    .restart local v54    # "hasMovedFromHotseat":Z
    .restart local v57    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_25
    const/16 v55, 0x0

    goto/16 :goto_9

    .line 419
    .restart local v30    # "container":J
    .restart local v55    # "hasMovedLayout":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 420
    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v32

    goto/16 :goto_a

    .line 431
    .restart local v32    # "screenId":J
    :cond_27
    const-string v5, "DropTarget"

    const-string v6, "mDragInfo.cell has null parent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 465
    .restart local v60    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 486
    .end local v11    # "spanX":I
    .end local v12    # "spanY":I
    .end local v26    # "resultSpan":[I
    .end local v30    # "container":J
    .end local v32    # "screenId":J
    .end local v53    # "foundCell":Z
    .end local v54    # "hasMovedFromHotseat":Z
    .end local v55    # "hasMovedLayout":Z
    .end local v57    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v60    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_29
    move-object/from16 v38, v51

    .restart local v38    # "onCompleteRunnable":Ljava/lang/Runnable;
    goto/16 :goto_d

    .line 490
    :cond_2a
    const/16 v59, 0x0

    goto :goto_e

    .line 493
    .restart local v59    # "isWidget":Z
    :cond_2b
    const/16 v39, 0x0

    goto :goto_f

    .line 498
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v40, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v41, v0

    const/16 v43, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v45, v0

    move-object/from16 v42, v16

    move-object/from16 v44, v38

    invoke-virtual/range {v40 .. v45}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_10

    .line 502
    .end local v59    # "isWidget":Z
    :cond_2d
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 503
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 504
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    .line 505
    invoke-interface/range {v38 .. v38}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_10
.end method

.method private onResetScrollArea()V
    .locals 1

    .prologue
    .line 1379
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    .line 1381
    return-void
.end method

.method private restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 23
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "isFromFolder"    # Z

    .prologue
    .line 1830
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1831
    .local v19, "objectInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-nez v2, :cond_0

    .line 1832
    const-string v2, "DropTarget"

    const-string v3, "dragView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :goto_0
    return-void

    .line 1836
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1837
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 1840
    :cond_1
    if-eqz p2, :cond_4

    .line 1841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v15

    .line 1842
    .local v15, "folder":Landroid/view/View;
    if-eqz v15, :cond_2

    .line 1843
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/folder/FolderInfo;

    .line 1845
    .local v18, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 1846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v21

    .line 1850
    .local v21, "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v4, v2, v3

    .line 1852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v4, v2, v3

    .line 1853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    .line 1883
    .end local v15    # "folder":Landroid/view/View;
    .end local v18    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v21    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V

    goto :goto_0

    .line 1848
    .restart local v15    # "folder":Landroid/view/View;
    .restart local v18    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v21

    .restart local v21    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    goto :goto_1

    .line 1856
    .end local v15    # "folder":Landroid/view/View;
    .end local v18    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v21    # "original":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v20

    .line 1859
    .local v20, "objectView":Landroid/view/View;
    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 1860
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    .line 1862
    .local v16, "container":J
    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1863
    .local v6, "screenId":J
    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1864
    .local v8, "cellX":I
    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1865
    .local v9, "cellY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    .line 1866
    .local v14, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v14, :cond_5

    invoke-virtual {v14, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->isOccupied(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    .line 1868
    .end local v6    # "screenId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    .line 1869
    .end local v8    # "cellX":I
    .local v12, "cellX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v13, v2, v3

    .line 1870
    .end local v9    # "cellY":I
    .local v13, "cellY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v6

    .line 1871
    .restart local v6    # "screenId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    aget v8, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v9, v3, v4

    const/4 v10, -0x1

    move-object/from16 v3, v19

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    move v9, v13

    .end local v13    # "cellY":I
    .restart local v9    # "cellY":I
    move v8, v12

    .line 1874
    .end local v12    # "cellX":I
    .restart local v8    # "cellX":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, v20

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_2

    .line 1877
    .end local v6    # "screenId":J
    .end local v8    # "cellX":I
    .end local v9    # "cellY":I
    .end local v14    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v16    # "container":J
    :cond_6
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1878
    .local v22, "restoredHotseatObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v2

    .line 1880
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    goto/16 :goto_2
.end method

.method private restoreItems(Ljava/util/ArrayList;Z)V
    .locals 10
    .param p2, "fromOther"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v3, 0x0

    .line 2007
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 2008
    .local v2, "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v0, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2009
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 2012
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 2013
    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 2014
    .local v1, "isFromHomeFolder":Z
    :goto_1
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 2015
    iget-object v5, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2016
    iput-boolean v3, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2017
    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v6, v2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0

    .end local v1    # "isFromHomeFolder":Z
    :cond_1
    move v1, v3

    .line 2013
    goto :goto_1

    .line 2020
    .restart local v1    # "isFromHomeFolder":Z
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_0

    .line 2023
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "isFromHomeFolder":Z
    .end local v2    # "object":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_3
    return-void
.end method

.method private sayDragTalkBack(ZZII)V
    .locals 9
    .param p1, "internal"    # Z
    .param p2, "isMovedLayout"    # Z
    .param p3, "cellX"    # I
    .param p4, "cellY"    # I

    .prologue
    .line 1805
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1806
    .local v3, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_3

    .line 1807
    if-eqz p2, :cond_2

    .line 1808
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 1809
    .local v0, "currentPage":I
    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    .line 1810
    .local v2, "maxPages":I
    if-eq v0, v2, :cond_0

    .line 1811
    add-int/lit8 v2, v2, -0x1

    .line 1814
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0900db

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0900d8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p4, 0x1

    .line 1815
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, p3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1824
    .end local v0    # "currentPage":I
    .end local v2    # "maxPages":I
    .local v1, "description":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    .line 1825
    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    .line 1827
    :cond_1
    return-void

    .line 1817
    .end local v1    # "description":Ljava/lang/String;
    :cond_2
    const v4, 0x7f0900d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "description":Ljava/lang/String;
    goto :goto_0

    .line 1820
    .end local v1    # "description":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0900d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0900d8

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p4, 0x1

    .line 1821
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, p3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "description":Ljava/lang/String;
    goto :goto_0
.end method

.method private setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1446
    return-void
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    const/4 v2, -0x1

    .line 1429
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    .line 1431
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    .line 1432
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    .line 1434
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1435
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    .line 1436
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    .line 1437
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1438
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1440
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    .line 1441
    invoke-direct {p0, v2, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropOverCell(II)V

    .line 1442
    return-void
.end method

.method private setCurrentDropOverCell(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1449
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 1450
    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    .line 1451
    iput p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    .line 1452
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setDragMode(I)V

    .line 1454
    :cond_1
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1175
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_0

    .line 1176
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_0

    .line 1177
    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 1178
    .local v0, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->isExistSingleInstanceAppWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1179
    const/4 v1, 0x0

    .line 1188
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    :goto_0
    return v1

    .line 1183
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    .line 1184
    .local v2, "screenId":J
    const-wide/16 v4, -0xc9

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1185
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    .line 1188
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 8
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "destInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 1413
    const-wide/16 v2, -0x64

    .line 1414
    .local v2, "container":J
    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 1415
    .local v4, "screenId":J
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

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
    .line 1461
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 42
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "cellLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p3, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p5, "animationType"    # I
    .param p6, "finalView"    # Landroid/view/View;
    .param p7, "external"    # Z

    .prologue
    .line 1467
    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    .line 1468
    .local v37, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1470
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 1471
    .local v5, "finalPos":[I
    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 1472
    .local v6, "scaleXY":[F
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-nez v4, :cond_5

    const/4 v11, 0x1

    .line 1473
    .local v11, "scalePreview":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[IZ)V

    .line 1476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 1477
    .local v39, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b0024

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v0, v4, -0xc8

    move/from16 v20, v0

    .line 1480
    .local v20, "duration":I
    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    .line 1481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 1484
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_6

    :cond_1
    const/16 v38, 0x1

    .line 1486
    .local v38, "isWidget":Z
    :goto_1
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_2

    if-eqz p7, :cond_7

    :cond_2
    if-eqz p6, :cond_7

    .line 1487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v41

    .line 1488
    .local v41, "unScaledSize":[I
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p6

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_3

    .line 1490
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v8, 0x0

    aget v8, v41, v8

    const/4 v9, 0x1

    aget v9, v41, v9

    .line 1491
    invoke-static {v4, v7, v8, v9}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v40

    .line 1493
    .local v40, "resizeResult":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    if-eqz v40, :cond_3

    .line 1494
    const/4 v4, 0x0

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    aput v7, v41, v4

    .line 1495
    const/4 v4, 0x1

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    aput v7, v41, v4

    .line 1498
    .end local v40    # "resizeResult":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    :cond_3
    move-object/from16 v0, p6

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetBitmap(Landroid/view/View;[I)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 1499
    .local v36, "crossFadeBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    .line 1500
    move/from16 v0, v20

    int-to-float v4, v0

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/drag/DragView;->crossFade(I)V

    .line 1505
    .end local v36    # "crossFadeBitmap":Landroid/graphics/Bitmap;
    .end local v41    # "unScaledSize":[I
    :cond_4
    :goto_2
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    .line 1506
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v15, 0x0

    const v16, 0x3dcccccd    # 0.1f

    const v17, 0x3dcccccd    # 0.1f

    const/16 v18, 0x0

    move-object/from16 v13, p3

    move-object v14, v5

    move-object/from16 v19, p4

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 1531
    :goto_3
    return-void

    .line 1472
    .end local v11    # "scalePreview":Z
    .end local v20    # "duration":I
    .end local v38    # "isWidget":Z
    .end local v39    # "res":Landroid/content/res/Resources;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1484
    .restart local v11    # "scalePreview":Z
    .restart local v20    # "duration":I
    .restart local v39    # "res":Landroid/content/res/Resources;
    :cond_6
    const/16 v38, 0x0

    goto :goto_1

    .line 1501
    .restart local v38    # "isWidget":Z
    :cond_7
    if-eqz v38, :cond_4

    if-eqz p7, :cond_4

    .line 1502
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_2

    .line 1510
    :cond_8
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_9

    .line 1511
    const/16 v33, 0x2

    .line 1516
    .local v33, "endStyle":I
    :goto_4
    new-instance v32, Lcom/android/launcher3/home/WorkspaceDragController$10;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$10;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1527
    .local v32, "onComplete":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v21, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    const/4 v4, 0x0

    aget v25, v5, v4

    const/4 v4, 0x1

    aget v26, v5, v4

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v30, v6, v4

    const/4 v4, 0x1

    aget v31, v6, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v35, v0

    move-object/from16 v22, p3

    move/from16 v34, v20

    invoke-virtual/range {v21 .. v35}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_3

    .line 1513
    .end local v32    # "onComplete":Ljava/lang/Runnable;
    .end local v33    # "endStyle":I
    :cond_9
    const/16 v33, 0x0

    .restart local v33    # "endStyle":I
    goto :goto_4
.end method

.method public canOpenFolder()Z
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->canMoveHometray()Z

    move-result v0

    return v0
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1409
    return-void
.end method

.method createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6
    .param p1, "targetCell"    # [I
    .param p2, "newView"    # Landroid/view/View;
    .param p3, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v1, 0x0

    .line 1457
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method public dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;ZI)V
    .locals 9
    .param p2, "postRunnable"    # Ljava/lang/Runnable;
    .param p3, "fromOther"    # Z
    .param p4, "fullCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1795
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    move v6, p3

    move v7, p4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZIZ)V

    .line 1796
    return-void
.end method

.method dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1778
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    .line 1779
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 1780
    .local v1, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    const-wide/16 v8, -0x64

    .line 1781
    .local v8, "container":J
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v10

    .line 1782
    .local v10, "screenId":J
    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$11;

    invoke-direct {v4, p0, v1, v10, v11}, Lcom/android/launcher3/home/WorkspaceDragController$11;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;J)V

    .line 1789
    .local v4, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 1791
    return-void
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    .prologue
    .line 1800
    const/4 v0, 0x0

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 1199
    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 1758
    if-eqz p1, :cond_2

    .line 1759
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    .line 1760
    .local v2, "pageIndex":I
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1761
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    .line 1762
    .local v0, "folder":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1763
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 1764
    .local v1, "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 1765
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    .line 1774
    .end local v0    # "folder":Landroid/view/View;
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    :goto_0
    return v2

    .line 1767
    .restart local v0    # "folder":Landroid/view/View;
    .restart local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    goto :goto_0

    .line 1772
    .end local v0    # "folder":Landroid/view/View;
    .end local v1    # "folderInfo":Lcom/android/launcher3/folder/FolderInfo;
    .end local v2    # "pageIndex":I
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    .restart local v2    # "pageIndex":I
    goto :goto_0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 10
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 159
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return v7

    .line 161
    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 163
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v8, :cond_12

    move v0, v6

    .line 164
    .local v0, "app":Z
    :goto_1
    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_13

    move v1, v6

    .line 165
    .local v1, "folder":Z
    :goto_2
    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_14

    :cond_1
    move v5, v6

    .line 167
    .local v5, "widget":Z
    :goto_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    .line 168
    .local v2, "homeOnlyMode":Z
    const/4 v4, 0x0

    .line 170
    .local v4, "optionFlags":I
    if-nez v5, :cond_2

    or-int/lit8 v4, v4, 0x1

    .line 171
    :cond_2
    if-nez v5, :cond_3

    or-int/lit8 v4, v4, 0x20

    .line 172
    :cond_3
    if-eqz v2, :cond_4

    if-nez v5, :cond_4

    or-int/lit16 v4, v4, 0x1000

    .line 173
    :cond_4
    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    or-int/lit16 v4, v4, 0x2000

    .line 174
    :cond_5
    if-eqz v0, :cond_6

    or-int/lit8 v4, v4, 0x40

    .line 175
    :cond_6
    if-nez v0, :cond_7

    if-eqz v5, :cond_8

    :cond_7
    or-int/lit16 v4, v4, 0x80

    .line 176
    :cond_8
    if-nez v1, :cond_9

    or-int/lit8 v4, v4, 0x2

    .line 177
    :cond_9
    if-eqz v0, :cond_a

    or-int/lit16 v4, v4, 0x100

    .line 178
    :cond_a
    if-eqz v0, :cond_b

    or-int/lit16 v4, v4, 0x200

    .line 179
    :cond_b
    if-nez v1, :cond_c

    or-int/lit16 v4, v4, 0x400

    .line 180
    :cond_c
    if-eqz v1, :cond_d

    or-int/lit8 v4, v4, 0x8

    .line 181
    :cond_d
    if-eqz v1, :cond_e

    or-int/lit16 v4, v4, 0x800

    .line 182
    :cond_e
    if-eqz v0, :cond_f

    or-int/lit16 v4, v4, 0x4000

    .line 183
    :cond_f
    if-eqz v0, :cond_10

    const v6, 0x8000

    or-int/2addr v4, v6

    .line 184
    :cond_10
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSetToZeroPage()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 185
    if-eqz v0, :cond_11

    const/high16 v6, 0x10000

    or-int/2addr v4, v6

    :cond_11
    move v7, v4

    .line 188
    goto :goto_0

    .end local v0    # "app":Z
    .end local v1    # "folder":Z
    .end local v2    # "homeOnlyMode":Z
    .end local v4    # "optionFlags":I
    .end local v5    # "widget":Z
    :cond_12
    move v0, v7

    .line 163
    goto :goto_1

    .restart local v0    # "app":Z
    :cond_13
    move v1, v7

    .line 164
    goto :goto_2

    .restart local v1    # "folder":Z
    :cond_14
    move v5, v7

    .line 165
    goto :goto_3
.end method

.method public getScrollZone()I
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1
    .param p1, "isDrop"    # Z

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 208
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->disableAndFlushExternalQueue()V

    .line 210
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 216
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 217
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 222
    :goto_0
    return v0

    .line 221
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 222
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v3, 0x1

    .line 995
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    .line 996
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    .line 998
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 999
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1000
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1001
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1003
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->showCancelDropTarget()V

    .line 1005
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v1, :cond_0

    .line 1006
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    check-cast v1, Lcom/android/launcher3/home/HotseatDragController;

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    .line 1008
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1073
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    .line 1077
    :cond_0
    if-eqz p2, :cond_1

    .line 1078
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 1081
    :cond_1
    if-nez p2, :cond_2

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 1082
    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1083
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    .line 1084
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_2

    .line 1085
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1089
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v0, :cond_6

    .line 1090
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1093
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1101
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_3

    .line 1102
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1105
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v0, v1, :cond_4

    .line 1106
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1107
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1110
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    .line 1113
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->onResetScrollArea()V

    .line 1114
    invoke-direct {p0, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1115
    invoke-direct {p0, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1116
    return-void

    .line 1095
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    .line 1098
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 14
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    const/4 v13, 0x1

    const/4 v6, 0x0

    .line 1013
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1019
    .local v9, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v9, :cond_2

    .line 1020
    const-string v0, "DropTarget"

    const-string v1, "DragObject has null info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1024
    :cond_2
    iget-object v8, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 1025
    .local v8, "dragView":Lcom/android/launcher3/common/drag/DragView;
    if-eqz v8, :cond_3

    .line 1026
    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getTranslationX()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getOffsetX()F

    move-result v1

    sub-float v12, v0, v1

    .line 1027
    .local v12, "touchX":F
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/home/Workspace;->dragPullingPages(F)V

    .line 1031
    .end local v12    # "touchX":F
    :cond_3
    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v0, :cond_4

    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1032
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    .line 1034
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_a

    const/4 v7, 0x0

    .line 1036
    .local v7, "child":Landroid/view/View;
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v10

    .line 1037
    .local v10, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v10, v0, :cond_6

    .line 1038
    invoke-direct {p0, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1039
    invoke-direct {p0, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1043
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 1046
    invoke-static {v9}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v11

    .line 1048
    .local v11, "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v6

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v13

    float-to-int v2, v2

    iget v3, v11, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    iget v4, v11, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    .line 1051
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    aget v0, v0, v6

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    aget v0, v0, v13

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_8

    .line 1052
    :cond_7
    iput-boolean v6, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 1055
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    aget v0, v0, v6

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    aget v1, v1, v13

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropOverCell(II)V

    .line 1057
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    .line 1059
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    move-object v3, v11

    move-object v4, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->startReorder([F[ILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;I)Z

    .line 1062
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    if-eq v0, v13, :cond_9

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1063
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    goto/16 :goto_0

    .line 1034
    .end local v7    # "child":Landroid/view/View;
    .end local v10    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v11    # "spanInfo":Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v7, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "source"    # Lcom/android/launcher3/common/drag/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 194
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/LauncherAppState;->enableExternalQueue(Z)V

    .line 196
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 197
    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 202
    :goto_0
    return v0

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    move v0, v1

    .line 202
    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFirstDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_1

    .line 244
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 249
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->forcelyAnimateReturnPages()V

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    .line 251
    return-void

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    .line 246
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p3, "success"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1228
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_0

    .line 1295
    :goto_0
    return-void

    .line 1230
    :cond_0
    if-eqz p3, :cond_6

    .line 1231
    instance-of v0, p1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1233
    .local v9, "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v9, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 1271
    .end local v9    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    if-nez v0, :cond_3

    .line 1272
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1276
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1277
    const/4 v8, 0x0

    .line 1278
    .local v8, "canEnterResizeMode":Z
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v0, :cond_4

    .line 1279
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v10, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v10, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 1280
    .local v10, "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1281
    invoke-virtual {v0, v10, v3, v5}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1282
    const/4 v8, 0x1

    .line 1285
    .end local v10    # "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    :cond_4
    if-nez v8, :cond_a

    .line 1286
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    .line 1292
    .end local v8    # "canEnterResizeMode":Z
    :cond_5
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 1294
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    goto :goto_0

    .line 1238
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1239
    .restart local v9    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v9, :cond_9

    .line 1240
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 1245
    :goto_3
    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$9;

    invoke-direct {v4, p0}, Lcom/android/launcher3/home/WorkspaceDragController$9;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    .line 1252
    .local v4, "exitDragStateRunnable":Ljava/lang/Runnable;
    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_7

    iget-object v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v0, :cond_7

    .line 1253
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_7

    .line 1254
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1255
    .local v1, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1256
    .local v2, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v3, v0, v5

    .line 1257
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v6, v0, v3

    .line 1258
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1259
    iget-object v3, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v0, p0

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 1264
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_7
    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_8

    .line 1265
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1268
    :cond_8
    iput-boolean v5, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    goto/16 :goto_1

    .line 1242
    .end local v4    # "exitDragStateRunnable":Ljava/lang/Runnable;
    :cond_9
    const-string v0, "DropTarget"

    const-string v3, "Invalid state: cellLayout == null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1288
    .end local v9    # "cellLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v8    # "canEnterResizeMode":Z
    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    goto/16 :goto_2
.end method

.method public onEnterScrollArea(III)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "direction"    # I

    .prologue
    const/4 v4, 0x1

    .line 1334
    const/4 v2, 0x0

    .line 1335
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1336
    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_4

    .line 1338
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v5

    if-nez p3, :cond_2

    const/4 v3, -0x1

    :goto_0
    add-int v1, v5, v3

    .line 1341
    .local v1, "page":I
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1343
    if-ltz v1, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1345
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 1346
    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1f5

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 1347
    :cond_1
    const/4 v3, 0x0

    .line 1360
    .end local v1    # "page":I
    :goto_1
    return v3

    :cond_2
    move v3, v4

    .line 1338
    goto :goto_0

    .line 1350
    .restart local v1    # "page":I
    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    .line 1351
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1352
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1356
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    .line 1357
    const/4 v2, 0x1

    .end local v0    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "page":I
    :cond_4
    move v3, v2

    .line 1360
    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    .prologue
    .line 1365
    const/4 v1, 0x0

    .line 1366
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v2, :cond_0

    .line 1367
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    .line 1368
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 1369
    .local v0, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1370
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 1372
    const/4 v1, 0x1

    .line 1373
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    .line 1375
    .end local v0    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    return v1
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
    .line 1723
    .local p1, "extraDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    if-eqz p1, :cond_1

    .line 1724
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

    .line 1725
    .local v0, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    .line 1726
    .local v2, "sourceView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1727
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1728
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1732
    .end local v0    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "sourceView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
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
    .local p2, "succeedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    .local p3, "failedDragObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/drag/DropTarget$DragObject;>;"
    const/4 v3, 0x0

    .line 1737
    if-eqz p2, :cond_1

    .line 1738
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/home/Workspace;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/home/Hotseat;

    if-nez v0, :cond_1

    .line 1740
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 1741
    .local v9, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    if-eqz v9, :cond_0

    iget-object v1, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1742
    iget-object v1, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v11

    .line 1743
    .local v11, "sourceView":Landroid/view/View;
    iget-object v10, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1744
    .local v10, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, v10, v11}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0

    .line 1748
    .end local v9    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v10    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v11    # "sourceView":Landroid/view/View;
    :cond_1
    if-eqz p3, :cond_2

    .line 1749
    if-eqz p2, :cond_3

    .line 1750
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    .line 1751
    .local v7, "fullCnt":I
    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x1

    instance-of v8, p1, Lcom/android/launcher3/home/Hotseat;

    move-object v0, p0

    move-object v1, p3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZIZ)V

    .line 1753
    .end local v7    # "fullCnt":I
    :cond_2
    return-void

    .line 1750
    :cond_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    goto :goto_1
.end method

.method public onFlingToMove(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 24
    .param p1, "d"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 1119
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1123
    .local v20, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 1139
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

    .line 1126
    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1127
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v21

    .line 1128
    .local v21, "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v2, v21

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v23

    .line 1142
    .local v23, "view":Landroid/view/View;
    :goto_1
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 1143
    move-object/from16 v3, v21

    .line 1146
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 1148
    const-wide/16 v18, -0x64

    .line 1149
    .local v18, "container":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v6

    .line 1151
    .local v6, "screenId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v22

    .line 1153
    .local v22, "snapScreen":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 1156
    .end local v22    # "snapScreen":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v4, -0x64

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    const/4 v10, -0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 1157
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v3, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_1

    .line 1158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v5, Ljava/util/ArrayList;

    move-object v2, v3

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_1

    move-object v2, v3

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object v2, v3

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    .line 1164
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v10, -0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    aget v14, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v15, v2, v4

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    iget v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v9, v23

    move-wide v12, v6

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 1168
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1169
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnLastItem(Ljava/util/ArrayList;Z)V

    .line 1171
    :cond_2
    return-void

    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "screenId":J
    .end local v18    # "container":J
    .end local v21    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v23    # "view":Landroid/view/View;
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_3
    move-object/from16 v21, v20

    .line 1127
    goto/16 :goto_0

    .line 1132
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    .line 1133
    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v21

    .line 1134
    .restart local v21    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v23

    .line 1137
    .restart local v23    # "view":Landroid/view/View;
    goto/16 :goto_1

    .end local v21    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v23    # "view":Landroid/view/View;
    :cond_4
    move-object/from16 v21, v20

    .line 1133
    goto :goto_3

    .restart local v21    # "localInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v23    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v3, v20

    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto/16 :goto_2

    .line 1123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1304
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 1306
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1308
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->scrollLeft()V

    .line 1310
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 1311
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_1

    .line 1312
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 1315
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1319
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 1321
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1322
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1323
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->scrollRight()V

    .line 1325
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    .line 1326
    .local v0, "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    if-eqz v0, :cond_1

    .line 1327
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    .line 1330
    .end local v0    # "openFolder":Lcom/android/launcher3/folder/view/FolderView;
    :cond_1
    return-void
.end method

.method public setDragMode(I)V
    .locals 3
    .param p1, "dragMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1385
    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 1386
    if-nez p1, :cond_2

    .line 1389
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    .line 1390
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 1402
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    .line 1404
    :cond_1
    return-void

    .line 1391
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1392
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    goto :goto_0

    .line 1393
    :cond_3
    if-ne p1, v2, :cond_4

    .line 1394
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    goto :goto_0

    .line 1395
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 1396
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    .line 1397
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    .line 1399
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    .line 1400
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/home/HomeController;)V
    .locals 2
    .param p1, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;
    .param p2, "dragLayer"    # Lcom/android/launcher3/common/view/DragLayer;
    .param p3, "homeController"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    .line 135
    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 136
    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 138
    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/WorkspaceReorderController;-><init>(Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    .line 139
    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    .line 140
    return-void
.end method

.method startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z
    .locals 4
    .param p1, "cellInfo"    # Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
    .param p2, "isSource"    # Z
    .param p3, "fromEmptyCell"    # Z

    .prologue
    const/4 v3, 0x1

    .line 143
    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 145
    .local v0, "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    .line 147
    if-eqz p2, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 149
    .local v1, "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->prepareChildForDrag(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    .line 152
    .end local v1    # "layout":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_0
    if-nez p3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    .line 154
    return v3

    .line 152
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
