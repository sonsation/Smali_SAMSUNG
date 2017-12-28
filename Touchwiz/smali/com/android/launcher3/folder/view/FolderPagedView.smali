.class public Lcom/android/launcher3/folder/view/FolderPagedView;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "FolderPagedView.java"


# static fields
.field private static final PAGE_ACTIVE_RANGE:I = 0x3

.field private static final PAGE_INDICATOR_ANIMATION_DURATION:I = 0x190

.field private static final PAGE_INDICATOR_ANIMATION_STAGGERED_DELAY:I = 0x96

.field private static final PAGE_INDICATOR_ANIMATION_START_DELAY:I = 0x12c

.field private static final PAGE_INDICATOR_OVERSHOOT_TENSION:F = 4.9f

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final SCROLL_HINT_FRACTION:F = 0.07f

.field private static final START_VIEW_REORDER_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FolderPagedView"

.field private static final VIEW_REORDER_DELAY_FACTOR:F = 0.9f

.field private static final sTempPosArray:[I


# instance fields
.field private mAddButton:Landroid/view/View;

.field private mAllocatedContentSize:I

.field private mBorderHidden:Z

.field private mFolder:Lcom/android/launcher3/folder/view/FolderView;

.field private mGridCountX:I

.field private mGridCountY:I

.field private final mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private final mIconViewStubMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            "Lcom/android/launcher3/common/view/IconViewStub;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mKeyListener:Lcom/android/launcher3/folder/controller/FolderFocusListener;

.field private mMaxCountX:I

.field private mMaxCountY:I

.field private mMaxItemsPerPage:I

.field private mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

.field private final mPendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    .line 117
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 119
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 120
    .local v1, "profile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v2, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    .line 121
    iget-object v2, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    .line 123
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    .line 125
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 126
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/view/FolderPagedView;)Lcom/android/launcher3/common/view/PageIndicator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderPagedView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/view/FolderPagedView;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderPagedView;
    .param p1, "x1"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "x2"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderPagedView;->applyIconViewInfo(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/folder/view/FolderPagedView;)Lcom/android/launcher3/folder/view/FolderView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderPagedView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/folder/view/FolderPagedView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderPagedView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/view/FolderPagedView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderPagedView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/view/FolderPagedView;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/view/FolderPagedView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;I)V

    return-void
.end method

.method private addViewForRank(Landroid/view/View;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rank"    # I

    .prologue
    const/4 v2, 0x1

    .line 320
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v9, p2, v1

    .line 321
    .local v9, "pagePos":I
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v8, p2, v1

    .line 323
    .local v8, "pageNo":I
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v6, v9, v1

    .line 324
    .local v6, "cellX":I
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v7, v9, v1

    .line 326
    .local v7, "cellY":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 328
    .local v3, "viewId":I
    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 329
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_1

    .line 330
    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-direct {v4, v6, v7, v2, v2}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    .line 331
    .local v4, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    .line 335
    .end local v4    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :goto_1
    return-void

    .line 326
    .end local v0    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "viewId":I
    :cond_0
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v3

    goto :goto_0

    .line 333
    .restart local v0    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v3    # "viewId":I
    :cond_1
    const-string v1, "FolderPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addViewForRank : can\'t get "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " page"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private allocateRankForAddButton()I
    .locals 4

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getItemCount()I

    move-result v0

    .line 1172
    .local v0, "rank":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1173
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1174
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 1175
    return v0
.end method

.method private applyIconViewInfo(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 5
    .param p1, "iconView"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 368
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    .line 371
    invoke-virtual {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    .line 376
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mKeyListener:Lcom/android/launcher3/folder/controller/FolderFocusListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 379
    new-instance v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v3, p2, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    iget v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    :cond_0
    return-void

    .line 373
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setIconDisplay(I)V

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_0
.end method

.method private arrangeChildren(Ljava/util/ArrayList;IZ)V
    .locals 24
    .param p2, "itemCount"    # I
    .param p3, "saveChanges"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setPageIndicatorAnimation(Z)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 p2, p2, 0x1

    .line 507
    :cond_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v19, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v2

    if-ge v13, v2, :cond_1

    .line 509
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 510
    .local v17, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/view/CellLayout;->removeAllViews()V

    .line 511
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 513
    .end local v17    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->setupContentDimensions(I)V

    .line 515
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 516
    .local v18, "pageItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/common/base/view/CellLayout;>;"
    const/4 v11, 0x0

    .line 518
    .local v11, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    const/16 v20, 0x0

    .line 521
    .local v20, "position":I
    const/16 v21, 0x0

    .line 522
    .local v21, "rank":I
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v13, v0, :cond_f

    .line 523
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v13, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v23, v2

    .line 524
    .local v23, "v":Landroid/view/View;
    :goto_2
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    move/from16 v0, v20

    if-lt v0, v2, :cond_3

    .line 526
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 527
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    check-cast v11, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 531
    .restart local v11    # "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    :goto_3
    const/16 v20, 0x0

    .line 534
    :cond_3
    if-eqz v23, :cond_7

    .line 535
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 537
    const-string v2, "FolderPagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arrangeChildren : child view has wrong parent view. (child="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", parent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 541
    :cond_4
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 542
    .local v14, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v15, v20, v2

    .line 543
    .local v15, "newX":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v16, v20, v2

    .line 544
    .local v16, "newY":I
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v2, :cond_c

    .line 545
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 546
    .local v3, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v2, v15, :cond_5

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_5

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v0, v21

    if-eq v2, v0, :cond_6

    .line 547
    :cond_5
    iput v15, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 548
    move/from16 v0, v16

    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 549
    move/from16 v0, v21

    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 550
    if-eqz p3, :cond_6

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->hidden:I

    if-nez v2, :cond_6

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->isAppsAlphabeticViewType()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-interface/range {v2 .. v10}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    .line 553
    iput v15, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 554
    move/from16 v0, v16

    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 555
    move/from16 v0, v21

    iput v0, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 556
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 563
    :cond_6
    :goto_4
    if-nez v14, :cond_b

    .line 564
    new-instance v8, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {v8, v2, v4, v5, v6}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    .line 569
    .end local v14    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .local v8, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :goto_5
    const/4 v6, -0x1

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v7

    const/4 v9, 0x1

    move-object v4, v11

    move-object/from16 v5, v23

    .line 569
    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    .line 582
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_6
    const/16 v2, 0x9

    move/from16 v0, v21

    if-ge v0, v2, :cond_7

    move-object/from16 v0, v23

    instance-of v2, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_7

    .line 583
    check-cast v23, Lcom/android/launcher3/common/view/IconView;

    .end local v23    # "v":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/view/IconView;->verifyHighRes()V

    .line 587
    .end local v8    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v15    # "newX":I
    .end local v16    # "newY":I
    :cond_7
    add-int/lit8 v21, v21, 0x1

    .line 588
    add-int/lit8 v20, v20, 0x1

    .line 522
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 523
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 529
    .restart local v23    # "v":Landroid/view/View;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v11

    goto/16 :goto_3

    .line 558
    .restart local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v14    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .restart local v15    # "newX":I
    .restart local v16    # "newY":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    .line 559
    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const-wide/16 v6, 0x0

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 558
    invoke-interface/range {v2 .. v10}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_4

    .line 566
    :cond_b
    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 567
    iget v2, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object v8, v14

    .end local v14    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .restart local v8    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    goto :goto_5

    .line 572
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v8    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .restart local v14    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_c
    if-nez v14, :cond_d

    .line 573
    new-instance v8, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-direct {v8, v15, v0, v2, v4}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    .line 578
    .end local v14    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .restart local v8    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :goto_7
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v2

    if-lez v2, :cond_e

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getId()I

    move-result v7

    .line 579
    .local v7, "viewId":I
    :goto_8
    const/4 v6, -0x1

    const/4 v9, 0x0

    move-object v4, v11

    move-object/from16 v5, v23

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    goto :goto_6

    .line 575
    .end local v7    # "viewId":I
    .end local v8    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .restart local v14    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :cond_d
    iput v15, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 576
    move/from16 v0, v16

    iput v0, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object v8, v14

    .end local v14    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .restart local v8    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    goto :goto_7

    .line 578
    :cond_e
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v7

    goto :goto_8

    .line 592
    .end local v8    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v15    # "newX":I
    .end local v16    # "newY":I
    .end local v23    # "v":Landroid/view/View;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v12

    .line 593
    .local v12, "currentPageIndex":I
    const/16 v22, 0x0

    .line 594
    .local v22, "removed":Z
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_10

    .line 595
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->removeView(Landroid/view/View;)V

    .line 596
    const/16 v22, 0x1

    goto :goto_9

    .line 598
    :cond_10
    if-eqz v22, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v12, v2, :cond_11

    .line 599
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setCurrentPage(I)V

    .line 605
    :cond_11
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setPageIndicatorAnimation(Z)V

    .line 606
    return-void
.end method

.method private backgroundAlphaThreshold(F)F
    .locals 4
    .param p1, "r"    # F

    .prologue
    .line 905
    const/4 v0, 0x0

    .line 906
    .local v0, "pivotA":F
    const v1, 0x3da3d70a    # 0.08f

    .line 907
    .local v1, "pivotB":F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 908
    const/4 v2, 0x0

    .line 912
    :goto_0
    return v2

    .line 909
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 910
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 912
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private createAndAddNewPage()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 3

    .prologue
    .line 454
    new-instance v0, Lcom/android/launcher3/folder/view/FolderCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/view/FolderCellLayout;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, "page":Lcom/android/launcher3/folder/view/FolderCellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    .line 456
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setImportantForAccessibility(I)V

    .line 457
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setGridSize(II)V

    .line 459
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/PagedView$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 460
    return-object v0
.end method

.method private handleIconViewStubs()V
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    new-instance v0, Lcom/android/launcher3/folder/view/FolderPagedView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/view/FolderPagedView$2;-><init>(Lcom/android/launcher3/folder/view/FolderPagedView;)V

    .line 233
    .local v0, "launcherBindingListener":Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherModel;->registerOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V

    goto :goto_0

    .line 235
    .end local v0    # "launcherBindingListener":Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->inflateAllIconViewStubsInBackground()V

    goto :goto_0
.end method

.method private setupContentDimensions(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAllocatedContentSize:I

    .line 149
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    .line 150
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    iput v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountY:I

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setGridSize(II)V

    .line 153
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method private updateBorderAlphaValues(I)V
    .locals 8
    .param p1, "screenCenter"    # I

    .prologue
    const/4 v7, 0x0

    .line 860
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v2

    .line 861
    .local v2, "folderState":I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    .line 862
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    .line 863
    .local v1, "currentPage":I
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 864
    .local v0, "child":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_3

    .line 865
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 866
    .local v4, "scrollProgress":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->backgroundAlphaThreshold(F)F

    move-result v6

    sub-float v3, v5, v6

    .line 867
    .local v3, "reverseAlpha":F
    if-nez v1, :cond_0

    cmpg-float v5, v4, v7

    if-lez v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_4

    cmpl-float v5, v4, v7

    if-ltz v5, :cond_4

    .line 868
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 869
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mBorderHidden:Z

    .line 879
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/view/FolderView;->setBorderAlpha(F)V

    .line 883
    .end local v0    # "child":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "currentPage":I
    .end local v3    # "reverseAlpha":F
    .end local v4    # "scrollProgress":F
    :cond_3
    return-void

    .line 870
    .restart local v0    # "child":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v1    # "currentPage":I
    .restart local v3    # "reverseAlpha":F
    .restart local v4    # "scrollProgress":F
    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mBorderHidden:Z

    if-eqz v5, :cond_5

    .line 871
    iget v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mTouchState:I

    if-eqz v5, :cond_2

    .line 872
    const/4 v3, 0x0

    goto :goto_0

    .line 875
    :cond_5
    cmpl-float v5, v3, v7

    if-nez v5, :cond_2

    .line 876
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mBorderHidden:Z

    goto :goto_0
.end method

.method private updateDragPageAlphaValues(III)V
    .locals 6
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 893
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-gt v2, p3, :cond_1

    .line 894
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/view/FolderCellLayout;

    .line 895
    .local v1, "child":Lcom/android/launcher3/folder/view/FolderCellLayout;
    if-eqz v1, :cond_0

    .line 896
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 897
    .local v3, "scrollProgress":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 898
    .local v0, "alpha":F
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setBackgroundAlpha(F)V

    .line 899
    sub-float v4, v5, v0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setPartialBackgroundAlpha(F)V

    .line 893
    .end local v0    # "alpha":F
    .end local v3    # "scrollProgress":F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 902
    .end local v1    # "child":Lcom/android/launcher3/folder/view/FolderCellLayout;
    :cond_1
    return-void
.end method

.method private updatePageAlphaValues(III)V
    .locals 2
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 886
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    .line 887
    .local v0, "folderState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 888
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateDragPageAlphaValues(III)V

    .line 890
    :cond_1
    return-void
.end method


# virtual methods
.method public addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p3, "rank"    # I

    .prologue
    .line 300
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v7, p3, v1

    .line 301
    .local v7, "pagePos":I
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v6, p3, v1

    .line 303
    .local v6, "pageNo":I
    iput p3, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 304
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v1, v7, v1

    iput v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    .line 305
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v1, v7, v1

    iput v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    .line 307
    invoke-virtual {p0, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 308
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 310
    .local v4, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    iget v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iput v1, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    .line 311
    iget v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iput v1, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    .line 312
    const/4 v2, -0x1

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v3

    const/4 v5, 0x1

    move-object v1, p1

    .line 312
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    .line 317
    .end local v4    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    :goto_0
    return-void

    .line 315
    :cond_0
    const-string v1, "FolderPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addViewForRank : can\'t get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public allocateRankForNewItem(Z)I
    .locals 5
    .param p1, "isNeedToMove"    # Z

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getItemCount()I

    move-result v0

    .line 276
    .local v0, "rank":I
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 277
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 278
    const-string v2, "FolderPagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allocateRankForNewItem : number of items is not matched. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 281
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 282
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 283
    if-eqz p1, :cond_1

    .line 284
    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, v0, v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setCurrentPage(I)V

    .line 286
    :cond_1
    return v0
.end method

.method public animateMarkers()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1155
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v0

    .line 1156
    .local v0, "count":I
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const v3, 0x409ccccd    # 4.9f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 1157
    .local v2, "interpolator":Landroid/view/animation/Interpolator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1158
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 1159
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x190

    .line 1160
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    mul-int/lit16 v4, v1, 0x96

    add-int/lit16 v4, v4, 0x12c

    int-to-long v4, v4

    .line 1161
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 1157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1164
    :cond_0
    return-void
.end method

.method public arrangeChildren(Ljava/util/ArrayList;I)V
    .locals 1
    .param p2, "itemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 494
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v1, "icons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v0, "extra":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const/16 v3, 0x9

    .line 167
    .local v3, "numberOfFirstBindItems":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 169
    .local v2, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v6, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 170
    iput-boolean v11, v2, Lcom/android/launcher3/common/base/item/IconInfo;->ignoreCheckItemInfo:Z

    .line 175
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x9

    if-lt v6, v7, :cond_1

    iget v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v6, :cond_1

    .line 177
    invoke-virtual {p0, v2, v10}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/view/IconViewStub;

    .line 178
    .local v4, "stub":Lcom/android/launcher3/common/view/IconViewStub;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v4    # "stub":Lcom/android/launcher3/common/view/IconViewStub;
    :cond_1
    invoke-virtual {p0, v2, v11}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v1, v5, v10}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 184
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->handleIconViewStubs()V

    .line 185
    return-object v0
.end method

.method public callRefreshLiveIcon()V
    .locals 8

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v5

    .line 1366
    .local v5, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 1367
    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1368
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 1369
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 1370
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 1371
    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1372
    .local v6, "v":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_0

    .line 1373
    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    .end local v6    # "v":Landroid/view/View;
    invoke-virtual {v6}, Lcom/android/launcher3/common/view/IconView;->onLiveIconRefresh()V

    .line 1370
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1366
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1377
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v4    # "j":I
    :cond_2
    return-void
.end method

.method public clearScrollHint()V
    .locals 2

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->snapToPage(I)V

    .line 782
    :cond_0
    return-void
.end method

.method public completePendingPageChanges()V
    .locals 4

    .prologue
    .line 788
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 789
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 790
    .local v1, "pendingViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Runnable;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 791
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Runnable;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 792
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 795
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Runnable;>;"
    .end local v1    # "pendingViews":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/View;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method public createAndAddViewForRank(Lcom/android/launcher3/common/base/item/IconInfo;I)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "rank"    # I

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "icon":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    .line 292
    return-object v0
.end method

.method public createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;
    .locals 1
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public createNewView(Lcom/android/launcher3/common/base/item/IconInfo;Z)Landroid/view/View;
    .locals 9
    .param p1, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "realView"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const v7, 0x7f04002f

    .line 386
    const v1, 0x7f04002f

    .line 388
    .local v1, "iconViewLayoutResId":I
    if-eqz p2, :cond_0

    .line 389
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    .line 390
    .local v0, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->applyIconViewInfo(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    .line 391
    move-object v2, v0

    .line 427
    .end local v0    # "iconView":Lcom/android/launcher3/common/view/IconView;
    .local v2, "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 393
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    new-instance v3, Lcom/android/launcher3/common/view/IconViewStub;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Lcom/android/launcher3/common/view/IconViewStub;-><init>(Landroid/content/Context;I)V

    .line 394
    .local v3, "viewStub":Lcom/android/launcher3/common/view/IconViewStub;
    new-instance v4, Lcom/android/launcher3/folder/view/FolderPagedView$3;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView$3;-><init>(Lcom/android/launcher3/folder/view/FolderPagedView;Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/IconViewStub;->addOnInflateListener(Lcom/android/launcher3/common/view/OnInflateListener;)V

    .line 418
    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v5, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v6, p1, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/view/IconViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/view/IconViewStub;->setTag(Ljava/lang/Object;)V

    .line 421
    move-object v2, v3

    .line 423
    .restart local v2    # "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    monitor-enter v5

    .line 424
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr p2, v0

    .end local p2    # "touchSlopScale":F
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method public findNearestArea(II)I
    .locals 7
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I

    .prologue
    const/4 v3, 0x1

    .line 646
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v6

    .line 647
    .local v6, "pageIndex":I
    invoke-virtual {p0, v6}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 648
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    sget-object v5, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    .line 649
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getAllocatedContentSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v2, v6

    sget-object v4, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    aget v3, v4, v3

    iget v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllocatedContentSize()I
    .locals 2

    .prologue
    .line 917
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAllocatedContentSize:I

    .line 918
    .local v0, "availableContentSize":I
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 919
    add-int/lit8 v0, v0, -0x1

    .line 921
    :cond_0
    return v0
.end method

.method public getCellLayoutChildrenHeight()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 625
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredHeight()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method

.method public getCellLayoutChildrenWidth()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 620
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredWidth()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method

.method protected getChildGap()I
    .locals 2

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 615
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 609
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 610
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getFirstItem()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 669
    const/4 v2, 0x0

    .line 680
    :goto_0
    return-object v2

    .line 672
    :cond_0
    const/4 v2, 0x0

    .line 673
    .local v2, "firstItemView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 674
    .local v0, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 676
    .local v1, "firstContainer":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1, v5, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 677
    goto :goto_0

    .line 678
    .end local v1    # "firstContainer":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    :cond_1
    const-string v3, "FolderPagedView"

    const-string v4, "getFirstItem : can\'t get current page"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 4

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 630
    .local v1, "lastPageIndex":I
    if-gez v1, :cond_1

    .line 632
    const/4 v0, 0x0

    .line 639
    :cond_0
    :goto_0
    return v0

    .line 634
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v3, v1

    add-int v0, v2, v3

    .line 636
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 637
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getLastItem()Landroid/view/View;
    .locals 6

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 685
    const/4 v2, 0x0

    .line 704
    :goto_0
    return-object v2

    .line 688
    :cond_0
    const/4 v2, 0x0

    .line 689
    .local v2, "lastItemView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 690
    .local v0, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_3

    .line 691
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    .line 692
    .local v1, "lastContainer":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 693
    .local v3, "lastRank":I
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 694
    add-int/lit8 v3, v3, -0x1

    .line 696
    :cond_1
    iget v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    if-lez v4, :cond_2

    .line 697
    iget v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v4, v3, v4

    iget v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v5, v3, v5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 699
    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 702
    .end local v1    # "lastContainer":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v3    # "lastRank":I
    :cond_3
    const-string v4, "FolderPagedView"

    const-string v5, "getLastItem : can\'t get current page"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 436
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method public getPageDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    .line 655
    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->DEFAULT:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    return-object v0
.end method

.method public hideAddButton()V
    .locals 2

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    :cond_0
    return-void
.end method

.method public inflateAllIconViewStubsInBackground()V
    .locals 6

    .prologue
    .line 240
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    monitor-enter v3

    .line 241
    :try_start_0
    const-string v2, "FolderPagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflateAllIconViewStubsInBackground : stubs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/view/IconViewStub;

    .line 243
    .local v1, "stub":Lcom/android/launcher3/common/view/IconViewStub;
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconViewStub;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 244
    .local v0, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/view/IconViewStub;->inflateInBackground(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 246
    .end local v0    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v1    # "stub":Lcom/android/launcher3/common/view/IconViewStub;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    return-void
.end method

.method public inflateIconViewStubPerPage(I)V
    .locals 8
    .param p1, "pageIndex"    # I

    .prologue
    .line 250
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v7

    if-ge p1, v7, :cond_3

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    .line 252
    .local v4, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v1

    .line 253
    .local v1, "itemCountX":I
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v2

    .line 254
    .local v2, "itemCountY":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 256
    invoke-virtual {v4, v0, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    .line 257
    .local v6, "v":Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher3/common/view/IconViewStub;

    if-eqz v7, :cond_0

    move-object v5, v6

    .line 258
    check-cast v5, Lcom/android/launcher3/common/view/IconViewStub;

    .line 259
    .local v5, "stub":Lcom/android/launcher3/common/view/IconViewStub;
    if-nez p1, :cond_1

    .line 260
    invoke-virtual {v5}, Lcom/android/launcher3/common/view/IconViewStub;->inflateImmediately()Landroid/view/View;

    .line 255
    .end local v5    # "stub":Lcom/android/launcher3/common/view/IconViewStub;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    .restart local v5    # "stub":Lcom/android/launcher3/common/view/IconViewStub;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/view/IconViewStub;->inflateInBackgroundUrgent(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_2

    .line 254
    .end local v5    # "stub":Lcom/android/launcher3/common/view/IconViewStub;
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    .end local v1    # "itemCountX":I
    .end local v2    # "itemCountY":I
    .end local v3    # "j":I
    .end local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    return-void
.end method

.method public insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p3, "rank"    # I

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;II)V

    .line 339
    return-void
.end method

.method public insertViewBeforeArrangeChildren(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;II)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p3, "rankToInsert"    # I
    .param p4, "rankToKeep"    # I

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    .line 343
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p3, v2, :cond_0

    .line 344
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 345
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 347
    :cond_0
    iget v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    if-le p4, v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p4, v2, :cond_1

    .line 348
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 349
    .local v0, "dropTargetView":Landroid/view/View;
    invoke-virtual {v1, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 350
    invoke-virtual {v1, p4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 354
    .end local v0    # "dropTargetView":Landroid/view/View;
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {v1, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isAllIconViewInflated()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mIconViewStubMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isAppsFolder()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public isInActiveRange(I)Z
    .locals 6
    .param p1, "rank"    # I

    .prologue
    const/4 v3, 0x0

    .line 357
    iget v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v2, p1, v4

    .line 358
    .local v2, "pageIndex":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 359
    .local v0, "maxBound":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 360
    .local v1, "minBound":I
    if-lt v2, v1, :cond_0

    if-gt v2, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public itemsPerPage()I
    .locals 1

    .prologue
    .line 1167
    iget v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    return v0
.end method

.method public iterateOverItems(Lcom/android/launcher3/common/base/item/ItemOperator;)Landroid/view/View;
    .locals 17
    .param p1, "op"    # Lcom/android/launcher3/common/base/item/ItemOperator;

    .prologue
    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v10

    .line 713
    .local v10, "pageCount":I
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    if-ge v8, v10, :cond_4

    .line 714
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    .line 715
    .local v9, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v4, 0x0

    .line 716
    .local v4, "itemCount":I
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 717
    .local v2, "childCount":I
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v5

    .line 718
    .local v5, "itemCountX":I
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v6

    .line 719
    .local v6, "itemCountY":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_2

    .line 720
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 721
    invoke-virtual {v9, v3, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    .line 722
    .local v11, "v":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 723
    add-int/lit8 v4, v4, 0x1

    .line 724
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v12, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v12, v11, v1}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 734
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "itemCount":I
    .end local v5    # "itemCountX":I
    .end local v6    # "itemCountY":I
    .end local v7    # "j":I
    .end local v9    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v11    # "v":Landroid/view/View;
    :goto_3
    return-object v11

    .line 720
    .restart local v2    # "childCount":I
    .restart local v3    # "i":I
    .restart local v4    # "itemCount":I
    .restart local v5    # "itemCountX":I
    .restart local v6    # "itemCountY":I
    .restart local v7    # "j":I
    .restart local v9    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v11    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 719
    .end local v11    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 730
    .end local v3    # "i":I
    :cond_2
    if-eq v4, v2, :cond_3

    .line 731
    const-string v12, "FolderPagedView"

    const-string v13, "iterateOverItems : items are not matched in %d page (itemCount=%d, childCount=%d)"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 734
    .end local v2    # "childCount":I
    .end local v4    # "itemCount":I
    .end local v5    # "itemCountX":I
    .end local v6    # "itemCountY":I
    .end local v7    # "j":I
    .end local v9    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_4
    const/4 v11, 0x0

    goto :goto_3
.end method

.method protected notifyPageChange(III)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "scrollX"    # I
    .param p3, "pageCount"    # I

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1322
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    .line 1324
    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "scrollX"    # I
    .param p5, "pageCount"    # I

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1315
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    .line 1317
    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 1

    .prologue
    .line 756
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    .line 757
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->updateContentFocus()V

    .line 760
    :cond_0
    return-void
.end method

.method public onChangeFolderIconTextColor()V
    .locals 10

    .prologue
    .line 1264
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderView;->isWhiteBg()Z

    move-result v4

    .line 1265
    .local v4, "isWhiteBg":Z
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v6

    .line 1266
    .local v6, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 1267
    invoke-virtual {p0, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1268
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 1269
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 1270
    .local v0, "childCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 1271
    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1272
    .local v7, "v":Landroid/view/View;
    instance-of v8, v7, Lcom/android/launcher3/common/view/IconView;

    if-eqz v8, :cond_0

    .line 1273
    iget-object v8, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v8}, Lcom/android/launcher3/folder/view/FolderView;->getBaseController()Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/allapps/controller/AppsController;

    if-eqz v8, :cond_1

    move-object v8, v7

    .line 1274
    check-cast v8, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1275
    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    .end local v7    # "v":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    .line 1270
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .restart local v7    # "v":Landroid/view/View;
    :cond_1
    move-object v8, v7

    .line 1277
    check-cast v8, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1278
    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {v7, v4}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    goto :goto_2

    .line 1266
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1283
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v5    # "j":I
    :cond_3
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateCellDimensions()V

    .line 1361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFirstLayout:Z

    .line 1362
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 804
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    .line 806
    iput-boolean v2, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mBorderHidden:Z

    .line 807
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->setAccessibilityFocusChange(Z)V

    .line 808
    sget-object v1, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getVisiblePages([I)V

    .line 809
    sget-object v1, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    aget v0, v1, v2

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher3/folder/view/FolderPagedView;->sTempPosArray:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-gt v0, v1, :cond_0

    .line 810
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 812
    :cond_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 816
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    .line 817
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setAccessibilityFocusChange(Z)V

    .line 818
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->isAllIconViewInflated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->inflateIconViewStubPerPage(I)V

    .line 821
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->stopBounceAnimation()V

    .line 1298
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public rankOnCurrentPage(I)Z
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 798
    iget v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v0, p1, v1

    .line 799
    .local v0, "p":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public realTimeReorder(IIZ)V
    .locals 36
    .param p1, "empty"    # I
    .param p2, "target"    # I
    .param p3, "immediately"    # Z

    .prologue
    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->completePendingPageChanges()V

    .line 929
    const/4 v9, 0x0

    .line 930
    .local v9, "delay":I
    const/high16 v13, 0x41f00000    # 30.0f

    .line 933
    .local v13, "delayAmount":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v30

    .line 935
    .local v30, "pageToAnimate":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v29, p2, v6

    .line 936
    .local v29, "pageT":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v28, p2, v6

    .line 938
    .local v28, "pagePosT":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v27, p1, v6

    .line 939
    .local v27, "pagePosE":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v25, p1, v6

    .line 950
    .local v25, "pageE":I
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 1142
    :cond_0
    return-void

    .line 953
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_9

    .line 955
    const/4 v14, 0x1

    .line 958
    .local v14, "direction":I
    if-eqz p3, :cond_4

    .line 959
    move/from16 v20, p1

    .line 960
    .local v20, "moveStart":I
    move/from16 v19, p2

    .line 961
    .local v19, "moveEnd":I
    move/from16 v16, v27

    .local v16, "endPos":I
    move/from16 v32, v27

    .line 1033
    .local v32, "startPos":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 1034
    add-int v31, v20, v14

    .line 1035
    .local v31, "rankToMove":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    div-int v24, v31, v6

    .line 1036
    .local v24, "p":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    rem-int v26, v31, v6

    .line 1037
    .local v26, "pagePos":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v34, v26, v6

    .line 1038
    .local v34, "x":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v35, v26, v6

    .line 1040
    .local v35, "y":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    .line 1041
    .local v4, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v4, :cond_14

    .line 1042
    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 1043
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_13

    .line 1044
    const/16 v33, 0x0

    .line 1045
    .local v33, "title":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_2

    .line 1046
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    .line 1049
    :cond_2
    move/from16 v0, v30

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_10

    .line 1050
    :cond_3
    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 1051
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v6, :cond_f

    .line 1052
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/common/base/item/IconInfo;I)V

    .line 1100
    .end local v5    # "v":Landroid/view/View;
    .end local v33    # "title":Ljava/lang/CharSequence;
    :goto_1
    move/from16 v20, v31

    .line 1101
    goto :goto_0

    .line 962
    .end local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v24    # "p":I
    .end local v26    # "pagePos":I
    .end local v31    # "rankToMove":I
    .end local v32    # "startPos":I
    .end local v34    # "x":I
    .end local v35    # "y":I
    :cond_4
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    .line 963
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 964
    move/from16 v20, p1

    .line 965
    .restart local v20    # "moveStart":I
    move/from16 v19, p2

    .line 966
    .restart local v19    # "moveEnd":I
    move/from16 v16, v28

    .restart local v16    # "endPos":I
    move/from16 v32, v28

    .restart local v32    # "startPos":I
    goto :goto_0

    .line 968
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_5
    move/from16 v20, p1

    .line 970
    .restart local v20    # "moveStart":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int v19, v30, v6

    .line 973
    .restart local v19    # "moveEnd":I
    const/16 v32, 0x0

    .line 974
    .restart local v32    # "startPos":I
    move/from16 v16, v28

    .restart local v16    # "endPos":I
    goto/16 :goto_0

    .line 976
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_6
    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 977
    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_7

    .line 978
    add-int/lit8 v6, v30, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v6, v7

    add-int/lit8 v20, v6, -0x1

    .line 979
    .restart local v20    # "moveStart":I
    move/from16 v19, p2

    .line 980
    .restart local v19    # "moveEnd":I
    move/from16 v32, v27

    .line 981
    .restart local v32    # "startPos":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    add-int/lit8 v16, v6, -0x1

    .restart local v16    # "endPos":I
    goto/16 :goto_0

    .line 983
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_7
    const/16 v19, -0x1

    .restart local v19    # "moveEnd":I
    move/from16 v20, v19

    .line 984
    .restart local v20    # "moveStart":I
    move/from16 v32, v27

    .line 985
    .restart local v32    # "startPos":I
    move/from16 v16, v28

    .restart local v16    # "endPos":I
    goto/16 :goto_0

    .line 988
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_8
    move/from16 v20, p1

    .line 989
    .restart local v20    # "moveStart":I
    move/from16 v19, p2

    .line 990
    .restart local v19    # "moveEnd":I
    move/from16 v16, v27

    .restart local v16    # "endPos":I
    move/from16 v32, v27

    .restart local v32    # "startPos":I
    goto/16 :goto_0

    .line 994
    .end local v14    # "direction":I
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_9
    const/4 v14, -0x1

    .line 996
    .restart local v14    # "direction":I
    if-eqz p3, :cond_a

    .line 997
    move/from16 v20, p1

    .line 998
    .restart local v20    # "moveStart":I
    move/from16 v19, p2

    .line 999
    .restart local v19    # "moveEnd":I
    move/from16 v16, v27

    .restart local v16    # "endPos":I
    move/from16 v32, v27

    .restart local v32    # "startPos":I
    goto/16 :goto_0

    .line 1000
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_a
    move/from16 v0, v25

    move/from16 v1, v30

    if-le v0, v1, :cond_c

    .line 1001
    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_b

    .line 1002
    move/from16 v20, p1

    .line 1003
    .restart local v20    # "moveStart":I
    move/from16 v19, p2

    .line 1004
    .restart local v19    # "moveEnd":I
    move/from16 v16, v28

    .restart local v16    # "endPos":I
    move/from16 v32, v28

    .restart local v32    # "startPos":I
    goto/16 :goto_0

    .line 1006
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_b
    move/from16 v20, p1

    .line 1008
    .restart local v20    # "moveStart":I
    add-int/lit8 v6, v30, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int/2addr v6, v7

    add-int/lit8 v19, v6, -0x1

    .line 1011
    .restart local v19    # "moveEnd":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    add-int/lit8 v32, v6, -0x1

    .line 1012
    .restart local v32    # "startPos":I
    move/from16 v16, v28

    .restart local v16    # "endPos":I
    goto/16 :goto_0

    .line 1014
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_c
    move/from16 v0, v25

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 1015
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    .line 1016
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    mul-int v20, v30, v6

    .line 1017
    .restart local v20    # "moveStart":I
    move/from16 v19, p2

    .line 1018
    .restart local v19    # "moveEnd":I
    move/from16 v32, v27

    .line 1019
    .restart local v32    # "startPos":I
    const/16 v16, 0x0

    .restart local v16    # "endPos":I
    goto/16 :goto_0

    .line 1021
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_d
    const/16 v19, -0x1

    .restart local v19    # "moveEnd":I
    move/from16 v20, v19

    .line 1022
    .restart local v20    # "moveStart":I
    move/from16 v32, v27

    .line 1023
    .restart local v32    # "startPos":I
    move/from16 v16, v28

    .restart local v16    # "endPos":I
    goto/16 :goto_0

    .line 1026
    .end local v16    # "endPos":I
    .end local v19    # "moveEnd":I
    .end local v20    # "moveStart":I
    .end local v32    # "startPos":I
    :cond_e
    move/from16 v20, p1

    .line 1027
    .restart local v20    # "moveStart":I
    move/from16 v19, p2

    .line 1028
    .restart local v19    # "moveEnd":I
    move/from16 v16, v27

    .restart local v16    # "endPos":I
    move/from16 v32, v27

    .restart local v32    # "startPos":I
    goto/16 :goto_0

    .line 1054
    .restart local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v5    # "v":Landroid/view/View;
    .restart local v24    # "p":I
    .restart local v26    # "pagePos":I
    .restart local v31    # "rankToMove":I
    .restart local v33    # "title":Ljava/lang/CharSequence;
    .restart local v34    # "x":I
    .restart local v35    # "y":I
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 1062
    :cond_10
    move/from16 v21, v20

    .line 1063
    .local v21, "newRank":I
    invoke-virtual {v5}, Landroid/view/View;->getTranslationX()F

    move-result v23

    .line 1065
    .local v23, "oldTranslateX":F
    new-instance v15, Lcom/android/launcher3/folder/view/FolderPagedView$4;

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v15, v0, v5, v1, v2}, Lcom/android/launcher3/folder/view/FolderPagedView$4;-><init>(Lcom/android/launcher3/folder/view/FolderPagedView;Landroid/view/View;FI)V

    .line 1083
    .local v15, "endAction":Ljava/lang/Runnable;
    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    if-lez v14, :cond_11

    const/4 v6, 0x1

    :goto_2
    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    xor-int/2addr v6, v8

    if-eqz v6, :cond_12

    .line 1084
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    :goto_3
    invoke-virtual {v7, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v10, 0xe6

    .line 1085
    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v10, 0x0

    .line 1086
    invoke-virtual {v6, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 1087
    invoke-virtual {v6, v15}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 1088
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1083
    :cond_11
    const/4 v6, 0x0

    goto :goto_2

    .line 1084
    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    goto :goto_3

    .line 1095
    .end local v15    # "endAction":Ljava/lang/Runnable;
    .end local v21    # "newRank":I
    .end local v23    # "oldTranslateX":F
    .end local v33    # "title":Ljava/lang/CharSequence;
    :cond_13
    const-string v6, "FolderPagedView"

    const-string v7, "realTimeReorder : can\'t find x%d,y%d item in %d page (from=%d, to=%d)"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x3

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1098
    .end local v5    # "v":Landroid/view/View;
    :cond_14
    const-string v6, "FolderPagedView"

    const-string v7, "realTimeReorder : can\'t get %d page (from=%d, to=%d)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1103
    .end local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v24    # "p":I
    .end local v26    # "pagePos":I
    .end local v31    # "rankToMove":I
    .end local v34    # "x":I
    .end local v35    # "y":I
    :cond_15
    sub-int v6, v16, v32

    mul-int/2addr v6, v14

    if-lez v6, :cond_0

    .line 1112
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    .line 1113
    .restart local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    move/from16 v17, v32

    .local v17, "i":I
    :goto_4
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_0

    .line 1114
    add-int v22, v17, v14

    .line 1115
    .local v22, "nextPos":I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v6, v22, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v7, v22, v7

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 1116
    .restart local v5    # "v":Landroid/view/View;
    if-eqz v5, :cond_18

    .line 1118
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 1119
    .local v18, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    const/4 v6, 0x1

    move-object/from16 v0, v18

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1120
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setupLp(Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;)V

    .line 1121
    const/4 v6, 0x0

    move-object/from16 v0, v18

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1123
    const/16 v33, 0x0

    .line 1124
    .restart local v33    # "title":Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v6, :cond_16

    .line 1125
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v7, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    sub-int/2addr v7, v14

    iput v7, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 1126
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v33, v0

    .line 1133
    :cond_16
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    rem-int v6, v17, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/folder/view/FolderPagedView;->mGridCountX:I

    div-int v7, v17, v7

    const/16 v8, 0xe6

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    check-cast v12, [[Z

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1135
    int-to-float v6, v9

    add-float/2addr v6, v13

    float-to-int v9, v6

    .line 1136
    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v13, v6

    .line 1113
    .end local v18    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v33    # "title":Ljava/lang/CharSequence;
    :cond_17
    :goto_5
    add-int v17, v17, v14

    goto :goto_4

    .line 1139
    :cond_18
    const-string v6, "FolderPagedView"

    const-string v7, "realTimeReorder : can\'t find %dth item in %d page (from=%d, to=%d)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public rebindItems(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    iget-object v7, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    .line 190
    .local v4, "oldViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Landroid/util/LongSparseArray;

    invoke-direct {v6}, Landroid/util/LongSparseArray;-><init>()V

    .line 191
    .local v6, "viewArray":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 192
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 193
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v1, :cond_0

    .line 194
    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual {v6, v8, v9, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 198
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v3, "newViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 200
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 201
    .local v2, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-wide v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 202
    .restart local v5    # "view":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 203
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->createNewView(Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 209
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {p0, v3, v7, v8}, Lcom/android/launcher3/folder/view/FolderPagedView;->arrangeChildren(Ljava/util/ArrayList;IZ)V

    .line 210
    return-void
.end method

.method public removeCellLayoutView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 440
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 443
    :cond_0
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 477
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 480
    :cond_0
    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 848
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    .line 850
    :cond_0
    return-void
.end method

.method protected screenScrolled(III)V
    .locals 0
    .param p1, "screenCenter"    # I
    .param p2, "leftScreen"    # I
    .param p3, "rightScreen"    # I

    .prologue
    .line 854
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateBorderAlphaValues(I)V

    .line 855
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/folder/view/FolderPagedView;->updatePageAlphaValues(III)V

    .line 856
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_1

    .line 1336
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getMaxScrollX()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 1337
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    .line 1339
    :cond_1
    return-void
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderCellLayout;

    .line 840
    .local v0, "layout":Lcom/android/launcher3/folder/view/FolderCellLayout;
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/view/FolderCellLayout;->setAccessibilityEnabled(Z)V

    .line 843
    :cond_0
    return-void
.end method

.method public setAddButton(Landroid/view/View;)V
    .locals 2
    .param p1, "addButton"    # Landroid/view/View;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1183
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    .line 1186
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    .line 1187
    return-void
.end method

.method public setFixedSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 471
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->setFixedSize(II)V

    .line 471
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 474
    :cond_0
    return-void
.end method

.method public setFocusOnFirstChild()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 746
    .local v0, "currentPage":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 748
    .local v1, "firstChild":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 749
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 752
    .end local v1    # "firstChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setFolder(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 1
    .param p1, "folder"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    .line 131
    new-instance v0, Lcom/android/launcher3/folder/controller/FolderFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/folder/controller/FolderFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mKeyListener:Lcom/android/launcher3/folder/controller/FolderFocusListener;

    .line 132
    const v0, 0x7f11007f

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/view/FolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicator;

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    .line 134
    new-instance v0, Lcom/android/launcher3/folder/view/FolderPagedView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/view/FolderPagedView$1;-><init>(Lcom/android/launcher3/folder/view/FolderPagedView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method public setHintPageWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 1217
    iput p1, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mHintPageWidth:I

    .line 1218
    return-void
.end method

.method public setMarkerScale(F)V
    .locals 4
    .param p1, "scale"    # F

    .prologue
    .line 1145
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/PageIndicator;->getChildCount()I

    move-result v0

    .line 1146
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1147
    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mPageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/common/view/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1148
    .local v2, "marker":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1149
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1150
    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    .end local v2    # "marker":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public showAddButton()V
    .locals 6

    .prologue
    .line 1190
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 1191
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1192
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1194
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->allocateRankForAddButton()I

    move-result v3

    .line 1195
    .local v3, "rank":I
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    invoke-direct {p0, v4, v3}, Lcom/android/launcher3/folder/view/FolderPagedView;->addViewForRank(Landroid/view/View;I)V

    .line 1197
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 1198
    .local v0, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    const v5, 0x7f110092

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1199
    .local v1, "icon":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1200
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    .line 1201
    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1202
    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1204
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mAddButton:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1208
    .end local v0    # "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .end local v1    # "icon":Landroid/view/View;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "rank":I
    :cond_2
    return-void
.end method

.method public showScrollHint(I)V
    .locals 9
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 766
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    const v6, -0x4270a3d7    # -0.07f

    .line 768
    .local v6, "fraction":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v7, v0

    .line 769
    .local v7, "hint":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollForPage(I)I

    move-result v0

    add-int v8, v0, v7

    .line 770
    .local v8, "scroll":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    .line 771
    .local v3, "delta":I
    if-eqz v3, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/PageScroller;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 773
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mScroller:Lcom/android/launcher3/common/base/PageScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getScrollX()I

    move-result v1

    const/16 v5, 0x1f4

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/PageScroller;->startScroll(IIIII)V

    .line 774
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->invalidate()V

    .line 776
    :cond_0
    return-void

    .end local v3    # "delta":I
    .end local v6    # "fraction":F
    .end local v7    # "hint":I
    .end local v8    # "scroll":I
    :cond_1
    move v0, v2

    .line 766
    goto :goto_0

    :cond_2
    const v6, 0x3d8f5c29    # 0.07f

    goto :goto_1
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8
    .param p1, "isPageIndicator"    # Z

    .prologue
    .line 1343
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1344
    .local v1, "method":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1347
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1348
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0901ad

    .line 1349
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1350
    .local v3, "screenID":Ljava/lang/String;
    :goto_1
    const v4, 0x7f09013f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, "eventID":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    int-to-long v6, v1

    invoke-virtual {v4, v3, v0, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1357
    return-void

    .line 1343
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v1    # "method":I
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "screenID":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1349
    .restart local v1    # "method":I
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    const v4, 0x7f0901b9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1352
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->isContainApps()Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0901ab

    .line 1353
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1354
    .restart local v3    # "screenID":Ljava/lang/String;
    :goto_3
    const v4, 0x7f090136

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "eventID":Ljava/lang/String;
    goto :goto_2

    .line 1353
    .end local v0    # "eventID":Ljava/lang/String;
    .end local v3    # "screenID":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0901b7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public supportWhiteBg()Z
    .locals 1

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->isAppsFolder()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateCellDimensions()V
    .locals 3

    .prologue
    .line 1286
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v2

    .line 1287
    .local v2, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1288
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/view/FolderCellLayout;

    .line 1289
    .local v0, "cl":Lcom/android/launcher3/folder/view/FolderCellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderCellLayout;->updateCellDimensionsIfNeeded()V

    .line 1287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1291
    .end local v0    # "cl":Lcom/android/launcher3/folder/view/FolderCellLayout;
    :cond_0
    return-void
.end method

.method public updateCheckBox(Z)Ljava/util/ArrayList;
    .locals 9
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1222
    .local v3, "folderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v6

    .line 1223
    .local v6, "pageCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 1224
    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1225
    .local v1, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 1226
    .local v2, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 1227
    .local v0, "childCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 1228
    invoke-virtual {v2, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1229
    .local v7, "v":Landroid/view/View;
    instance-of v8, v7, Lcom/android/launcher3/common/view/IconView;

    if-eqz v8, :cond_0

    .line 1230
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {v7, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    .line 1227
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1223
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1236
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v5    # "j":I
    :cond_2
    return-object v3
.end method

.method public updateFolderGrid()V
    .locals 12

    .prologue
    .line 1240
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 1241
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v8

    .line 1242
    .local v8, "profile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    iget-object v4, v8, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 1244
    .local v4, "folderGrid":Lcom/android/launcher3/common/deviceprofile/GridInfo;
    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v10

    iput v10, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    .line 1245
    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v10

    iput v10, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    .line 1246
    iget v10, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountX:I

    iget v11, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxCountY:I

    mul-int/2addr v10, v11

    iput v10, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mMaxItemsPerPage:I

    .line 1248
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageCount()I

    move-result v7

    .line 1249
    .local v7, "pageCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_2

    .line 1250
    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 1251
    .local v2, "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    .line 1252
    .local v3, "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 1253
    .local v1, "childCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 1254
    invoke-virtual {v3, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1255
    .local v9, "v":Landroid/view/View;
    instance-of v10, v9, Lcom/android/launcher3/common/view/IconView;

    if-eqz v10, :cond_0

    move-object v10, v9

    .line 1256
    check-cast v10, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v10}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    move-object v10, v9

    .line 1257
    check-cast v10, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 1253
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1249
    .end local v9    # "v":Landroid/view/View;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1261
    .end local v1    # "childCount":I
    .end local v2    # "cl":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v3    # "clc":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    .end local v6    # "j":I
    :cond_2
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 2
    .param p1, "page"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "screenCenter"    # I

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->getFolderState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1329
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    .line 1331
    :cond_0
    return-void
.end method

.method public verifyVisibleHighResIcons(I)V
    .locals 4
    .param p1, "pageNo"    # I

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/view/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 828
    .local v1, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v1, :cond_1

    .line 829
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    .line 830
    .local v2, "parent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 831
    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_0

    .line 832
    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v3}, Lcom/android/launcher3/common/view/IconView;->verifyHighRes()V

    .line 830
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 836
    .end local v0    # "i":I
    .end local v2    # "parent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    :cond_1
    return-void
.end method
