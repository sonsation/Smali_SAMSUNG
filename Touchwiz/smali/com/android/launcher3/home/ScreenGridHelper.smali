.class Lcom/android/launcher3/home/ScreenGridHelper;
.super Ljava/lang/Object;
.source "ScreenGridHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenGridHelper"


# instance fields
.field private mChangeGridState:Z

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalCellX:I

.field private mOriginalCellY:I

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "homeController"    # Lcom/android/launcher3/home/HomeController;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mChangeGridState:Z

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    iput v1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    .line 51
    iput v1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    .line 54
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 55
    iput-object p2, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 56
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/ScreenGridHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridHelper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/ScreenGridHelper;)Lcom/android/launcher3/home/Workspace;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridHelper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/ScreenGridHelper;Lcom/android/launcher3/home/WorkspaceCellLayout;ZII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridHelper;
    .param p1, "x1"    # Lcom/android/launcher3/home/WorkspaceCellLayout;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/ScreenGridHelper;->doChangeWorkspace(Lcom/android/launcher3/home/WorkspaceCellLayout;ZII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/ScreenGridHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridHelper;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/launcher3/home/ScreenGridHelper;->addNewPageOnChangingGrid()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/ScreenGridHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mChangeGridState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/ScreenGridHelper;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridHelper;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method private addNewPageOnChangingGrid()V
    .locals 5

    .prologue
    .line 345
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 346
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 347
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getAdditionPageCount()I

    move-result v0

    .line 348
    .local v0, "additionalPage":I
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    add-int v1, v4, v0

    .line 349
    .local v1, "currentIndex":I
    add-int/lit8 v3, v1, 0x1

    .line 351
    .local v3, "targetIndex":I
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, v1, v3}, Lcom/android/launcher3/home/Workspace;->insertPageAndMoveItems(II)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v0    # "additionalPage":I
    .end local v1    # "currentIndex":I
    .end local v2    # "i":I
    .end local v3    # "targetIndex":I
    :cond_0
    return-void
.end method

.method private addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V
    .locals 1
    .param p1, "cellLayout"    # Lcom/android/launcher3/home/WorkspaceCellLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/home/WorkspaceCellLayout;",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p2, "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 339
    iget-object v0, p1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_0
    return-void
.end method

.method private doChangeWorkspace(Lcom/android/launcher3/home/WorkspaceCellLayout;ZII)Z
    .locals 49
    .param p1, "cellLayout"    # Lcom/android/launcher3/home/WorkspaceCellLayout;
    .param p2, "animated"    # Z
    .param p3, "diffX"    # I
    .param p4, "diffY"    # I

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v34

    .line 160
    .local v34, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v30

    .line 161
    .local v30, "cellWidth":I
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v29

    .line 162
    .local v29, "cellHeight":I
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v28

    .line 163
    .local v28, "cellGap":I
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v5

    .line 164
    .local v5, "cellCountX":I
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    .line 166
    .local v6, "cellCountY":I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 167
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 171
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 170
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v4, v5, v6, v0, v1}, Lcom/android/launcher3/util/ScreenGridUtilities;->getOutSidePosition(Ljava/util/List;IIII)I

    move-result v8

    .line 174
    .local v8, "position":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCellDimensions()V

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 175
    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setGridSizeForScreenGrid(IIZIII)V

    .line 177
    if-lez p3, :cond_8

    const/16 v31, 0x2

    .line 178
    .local v31, "defaultX":I
    :goto_0
    if-lez p4, :cond_9

    const/16 v32, 0x2

    .line 181
    .local v32, "defaultY":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v4

    add-int/lit8 v36, v4, -0x1

    .local v36, "i":I
    :goto_2
    const/4 v4, -0x1

    move/from16 v0, v36

    if-le v0, v4, :cond_19

    .line 182
    const/16 v33, 0x0

    .line 183
    .local v33, "dirty":Z
    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 184
    .local v11, "childView":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 185
    .local v38, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v38, :cond_1

    .line 186
    const-string v4, "ScreenGridHelper"

    const-string v7, "HomeView: doChangeWorkspace() item is Null"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1
    if-eqz v38, :cond_7

    .line 190
    move-object/from16 v0, v38

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 191
    .local v13, "x":I
    move-object/from16 v0, v38

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 193
    .local v14, "y":I
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-le v4, v5, :cond_3

    .line 194
    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 196
    const/4 v4, 0x1

    if-eq v8, v4, :cond_2

    const/4 v4, 0x3

    if-ne v8, v4, :cond_3

    .line 198
    :cond_2
    add-int v13, v13, v31

    .line 201
    :cond_3
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-le v4, v6, :cond_5

    .line 202
    move-object/from16 v0, v38

    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 204
    const/4 v4, 0x2

    if-eq v8, v4, :cond_4

    const/4 v4, 0x3

    if-ne v8, v4, :cond_5

    .line 206
    :cond_4
    add-int v14, v14, v32

    .line 210
    :cond_5
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v44, v0

    .line 211
    .local v44, "spanX":I
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v45, v0

    .line 213
    .local v45, "spanY":I
    move-object/from16 v0, v38

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v41

    .line 215
    .local v41, "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    if-nez v8, :cond_a

    .line 216
    add-int v4, v13, v44

    if-gt v4, v5, :cond_6

    add-int v4, v14, v45

    if-le v4, v6, :cond_d

    .line 217
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V

    .line 181
    .end local v13    # "x":I
    .end local v14    # "y":I
    .end local v41    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .end local v44    # "spanX":I
    .end local v45    # "spanY":I
    :cond_7
    :goto_3
    add-int/lit8 v36, v36, -0x1

    goto :goto_2

    .line 177
    .end local v11    # "childView":Landroid/view/View;
    .end local v31    # "defaultX":I
    .end local v32    # "defaultY":I
    .end local v33    # "dirty":Z
    .end local v36    # "i":I
    .end local v38    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    const/16 v31, 0x1

    goto :goto_0

    .line 178
    .restart local v31    # "defaultX":I
    :cond_9
    const/16 v32, 0x1

    goto :goto_1

    .line 220
    .restart local v11    # "childView":Landroid/view/View;
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    .restart local v32    # "defaultY":I
    .restart local v33    # "dirty":Z
    .restart local v36    # "i":I
    .restart local v38    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v41    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .restart local v44    # "spanX":I
    .restart local v45    # "spanY":I
    :cond_a
    const/4 v4, 0x1

    if-ne v8, v4, :cond_11

    .line 221
    move/from16 v0, p3

    if-le v13, v0, :cond_b

    add-int v4, v14, v45

    if-le v4, v6, :cond_c

    .line 222
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V

    goto :goto_3

    .line 225
    :cond_c
    sub-int v13, v13, v31

    .line 244
    :cond_d
    :goto_4
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v4, v13, :cond_e

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v4, v14, :cond_f

    .line 245
    :cond_e
    const/16 v33, 0x1

    .line 248
    :cond_f
    instance-of v4, v11, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_10

    move-object/from16 v48, v38

    .line 249
    check-cast v48, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    .line 250
    .local v48, "widgetItem":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_10

    .line 251
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    mul-int v7, v4, v30

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    const/4 v9, 0x2

    if-lt v4, v9, :cond_17

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, v28

    :goto_5
    add-int v47, v7, v4

    .line 253
    .local v47, "targetWidth":I
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    mul-int v7, v4, v29

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v9, 0x2

    if-lt v4, v9, :cond_18

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, v28

    :goto_6
    add-int v46, v7, v4

    .line 255
    .local v46, "targetHeight":I
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 256
    move/from16 v0, v47

    move/from16 v1, v46

    invoke-static {v4, v7, v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v43

    .line 259
    .local v43, "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 260
    .local v35, "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setResizeScaleResult(Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v48

    iget-object v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v38

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-static {v4, v7, v9, v10}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    .line 262
    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->invalidate()V

    .line 266
    .end local v35    # "hostView":Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .end local v43    # "result":Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .end local v46    # "targetHeight":I
    .end local v47    # "targetWidth":I
    .end local v48    # "widgetItem":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_10
    if-eqz v33, :cond_7

    .line 267
    move-object/from16 v0, v38

    iput v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 268
    move-object/from16 v0, v38

    iput v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 269
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v38

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v38

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .end local v14    # "y":I
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_3

    .line 227
    .restart local v14    # "y":I
    :cond_11
    const/4 v4, 0x2

    if-ne v8, v4, :cond_14

    .line 228
    add-int v4, v13, v44

    if-gt v4, v5, :cond_12

    move/from16 v0, p4

    if-gt v14, v0, :cond_13

    .line 229
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V

    goto/16 :goto_3

    .line 232
    :cond_13
    sub-int v14, v14, v32

    goto/16 :goto_4

    .line 234
    :cond_14
    const/4 v4, 0x3

    if-ne v8, v4, :cond_d

    .line 235
    move/from16 v0, p3

    if-le v13, v0, :cond_15

    move/from16 v0, p4

    if-gt v14, v0, :cond_16

    .line 236
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V

    goto/16 :goto_3

    .line 239
    :cond_16
    sub-int v13, v13, v31

    .line 240
    sub-int v14, v14, v32

    goto/16 :goto_4

    .line 251
    .restart local v48    # "widgetItem":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 253
    .restart local v47    # "targetWidth":I
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 278
    .end local v11    # "childView":Landroid/view/View;
    .end local v13    # "x":I
    .end local v14    # "y":I
    .end local v33    # "dirty":Z
    .end local v38    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v41    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    .end local v44    # "spanX":I
    .end local v45    # "spanY":I
    .end local v47    # "targetWidth":I
    .end local v48    # "widgetItem":Lcom/android/launcher3/home/LauncherAppWidgetInfo;
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getOutSideItems(I)Ljava/util/List;

    move-result-object v39

    .line 279
    .local v39, "moveItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v42, "removeFromOutSideItems":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;>;"
    if-eqz v39, :cond_1e

    .line 282
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1a
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/util/Pair;

    .line 283
    .restart local v41    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 284
    .restart local v38    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v17, v0

    .line 286
    .local v17, "tmpXY":[I
    move-object/from16 v0, v38

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 287
    .restart local v13    # "x":I
    move-object/from16 v0, v38

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 289
    .restart local v14    # "y":I
    add-int/lit8 v4, v5, -0x1

    if-le v13, v4, :cond_1b

    .line 290
    sub-int v13, v13, v31

    .line 293
    :cond_1b
    add-int/lit8 v4, v6, -0x1

    if-le v14, v4, :cond_1c

    .line 294
    sub-int v14, v14, v32

    .line 297
    :cond_1c
    move-object/from16 v0, v38

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findNearestVacantAreaWithCell(IIII[IZ)V

    .line 299
    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_1a

    const/4 v4, 0x1

    aget v4, v17, v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_1a

    .line 300
    const/4 v4, 0x0

    aget v4, v17, v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 301
    const/4 v4, 0x1

    aget v4, v17, v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 303
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 305
    move-object/from16 v0, v38

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v4, :cond_1d

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v18, v0

    move-object/from16 v4, v38

    check-cast v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v0, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v25, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v26, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v27, v0

    invoke-virtual/range {v18 .. v27}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 313
    :goto_8
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v38

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v38

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForGrid(IIII)V

    .line 315
    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 310
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v18, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/View;

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v25, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v26, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v27, v0

    invoke-virtual/range {v18 .. v27}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_8

    .line 320
    .end local v13    # "x":I
    .end local v14    # "y":I
    .end local v17    # "tmpXY":[I
    .end local v38    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v41    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    :cond_1e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v4, :cond_1f

    .line 321
    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/util/Pair;

    .line 322
    .local v37, "it":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    move-object/from16 v0, v37

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 326
    .end local v37    # "it":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    :cond_1f
    const/16 v40, 0x0

    .line 328
    .local v40, "needNewPage":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v4, :cond_20

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 329
    const/16 v40, 0x1

    .line 331
    :cond_20
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    .line 333
    return v40
.end method

.method private restorePage(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 18
    .param p1, "restoreCell"    # Lcom/android/launcher3/home/WorkspaceCellLayout;

    .prologue
    .line 357
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    if-nez v2, :cond_1

    .line 401
    :cond_0
    return-void

    .line 360
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->restoreGridSize(II)V

    .line 361
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 363
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v14, v2, :cond_0

    .line 364
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v14}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 365
    .local v16, "id":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/home/BackupItem;

    .line 366
    .local v12, "backupItem":Lcom/android/launcher3/home/BackupItem;
    if-eqz v12, :cond_0

    .line 368
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getItem()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v13

    .line 371
    .local v13, "homeItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getCellX()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getCellY()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 372
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getScreen()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getSpanX()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 373
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getSpanY()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 375
    :cond_2
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getCellX()I

    move-result v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 376
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getCellY()I

    move-result v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 377
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getSpanX()I

    move-result v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 378
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getSpanY()I

    move-result v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 379
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getScreen()J

    move-result-wide v2

    iput-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 381
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 384
    .local v15, "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 385
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 387
    instance-of v2, v13, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v2, :cond_4

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object v3, v13

    check-cast v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v3, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v10, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v11, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    .line 363
    .end local v15    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 392
    .restart local v15    # "pairItem":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v3, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v10, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v11, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1

    .line 397
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/launcher3/home/WorkspaceCellLayout;->updateItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1
.end method


# virtual methods
.method applyGridChange(I)V
    .locals 22
    .param p1, "delay"    # I

    .prologue
    .line 408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v18

    .line 410
    .local v18, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 411
    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v8

    .line 410
    invoke-static {v3, v4, v6, v8}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    invoke-static {v3, v4, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeCurrentScreenGridSetting(Landroid/content/Context;II)V

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeChangeGridValue(Landroid/content/Context;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 417
    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "currentGrid":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "HSGR"

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v21

    .line 423
    .local v21, "screenCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 425
    .local v16, "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    .line 427
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 428
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v17

    .line 429
    .local v17, "childView":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 431
    .local v7, "homeItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-nez v7, :cond_1

    .line 427
    :cond_0
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 434
    :cond_1
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    iget-wide v8, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v3, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/BackupItem;

    .line 436
    .local v2, "backupItem":Lcom/android/launcher3/home/BackupItem;
    if-eqz v2, :cond_2

    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 437
    invoke-virtual {v2}, Lcom/android/launcher3/home/BackupItem;->getCellX()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 438
    invoke-virtual {v2}, Lcom/android/launcher3/home/BackupItem;->getCellY()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 439
    invoke-virtual {v2}, Lcom/android/launcher3/home/BackupItem;->getSpanX()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    .line 440
    invoke-virtual {v2}, Lcom/android/launcher3/home/BackupItem;->getSpanY()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 441
    :cond_2
    const-string v3, "ScreenGridHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "db update item = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    .line 445
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x64

    iget-wide v10, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v12, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v13, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v15, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    .line 451
    :cond_3
    instance-of v3, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_0

    .line 452
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher3/home/ScreenGridHelper$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/android/launcher3/home/ScreenGridHelper$2;-><init>(Lcom/android/launcher3/home/ScreenGridHelper;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move/from16 v0, p1

    int-to-long v8, v0

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 466
    .end local v2    # "backupItem":Lcom/android/launcher3/home/BackupItem;
    .end local v7    # "homeItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v17    # "childView":Landroid/view/View;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/home/WorkspaceCellLayout;->updateOccupied()V

    .line 423
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 469
    .end local v16    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    .end local v20    # "j":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 470
    return-void
.end method

.method backupOriginalData()V
    .locals 12

    .prologue
    .line 473
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    .line 475
    .local v3, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v8, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    .line 476
    iget-object v8, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    .line 478
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    .line 479
    .local v7, "screenCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_2

    .line 480
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 482
    .local v1, "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    iget-object v8, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    if-eqz v8, :cond_1

    .line 483
    iget-object v8, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->clear()V

    .line 485
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 486
    new-instance v0, Lcom/android/launcher3/home/BackupItem;

    invoke-direct {v0}, Lcom/android/launcher3/home/BackupItem;-><init>()V

    .line 487
    .local v0, "backup":Lcom/android/launcher3/home/BackupItem;
    invoke-virtual {v1, v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 488
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 489
    .local v5, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v5, :cond_0

    .line 490
    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/BackupItem;->setItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 491
    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/BackupItem;->setView(Landroid/view/View;)V

    .line 492
    iget-object v8, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    iget-wide v10, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v8, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 485
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 479
    .end local v0    # "backup":Lcom/android/launcher3/home/BackupItem;
    .end local v2    # "childView":Landroid/view/View;
    .end local v5    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 497
    .end local v1    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_2
    return-void
.end method

.method changeGrid(IIZ)V
    .locals 12
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 64
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v5

    .line 66
    .local v5, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v7, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v7

    if-ne v7, p1, :cond_1

    iget-object v7, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v7

    if-ne v7, p2, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    sub-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 72
    .local v3, "diffX":I
    iget v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    sub-int/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 74
    .local v4, "diffY":I
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mChangeGridState:Z

    .line 77
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v7, :cond_0

    .line 81
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_4

    .line 82
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 85
    .local v0, "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    iget-boolean v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    if-eqz v7, :cond_3

    .line 90
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeAllViews()V

    .line 92
    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    if-eqz v7, :cond_2

    .line 93
    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->clear()V

    .line 96
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v0}, Lcom/android/launcher3/home/Workspace;->removeTempPage(Lcom/android/launcher3/common/base/view/CellLayout;)V

    .line 81
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 99
    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    .line 102
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/ScreenGridHelper;->restorePage(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    goto :goto_2

    .line 105
    .end local v0    # "cellLayout":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_4
    invoke-virtual {v5, p1, p2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    .line 107
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_5

    .line 108
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 111
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    .line 113
    .local v1, "currentIndex":I
    add-int/lit8 v6, v1, -0x1

    :goto_3
    add-int/lit8 v7, v1, 0x1

    if-gt v6, v7, :cond_7

    .line 114
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    .line 116
    .local v2, "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_6

    if-eqz v2, :cond_6

    .line 117
    invoke-direct {p0, v2, p3, v3, v4}, Lcom/android/launcher3/home/ScreenGridHelper;->doChangeWorkspace(Lcom/android/launcher3/home/WorkspaceCellLayout;ZII)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 118
    const-string v7, "ScreenGridHelper"

    const-string v8, "Change Grid Visible pages"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 122
    .end local v2    # "currentPage":Lcom/android/launcher3/home/WorkspaceCellLayout;
    :cond_7
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->resetAdditionalPageCount()V

    .line 123
    invoke-direct {p0}, Lcom/android/launcher3/home/ScreenGridHelper;->addNewPageOnChangingGrid()V

    .line 125
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/launcher3/home/ScreenGridHelper$1;

    invoke-direct {v8, p0, v3, v4}, Lcom/android/launcher3/home/ScreenGridHelper$1;-><init>(Lcom/android/launcher3/home/ScreenGridHelper;II)V

    const-wide/16 v10, 0x14d

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method isChangeGridState()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mChangeGridState:Z

    return v0
.end method

.method restoreGridLayout()V
    .locals 3

    .prologue
    .line 404
    iget v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    iget v1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->changeGrid(IIZ)V

    .line 405
    return-void
.end method
