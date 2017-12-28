.class public Lcom/android/launcher3/allapps/controller/AppsReorderController;
.super Ljava/lang/Object;
.source "AppsReorderController.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AppsReorderListener;


# static fields
.field private static final INVALID_DIRECTION:I = -0x64

.field public static final REMOVE_ANIMATION_DURATION:I = 0x96

.field public static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_DEFAULT_DELAY_AMOUNT:I = 0x1e

.field public static final REORDER_LEFT_DIRECTION:I = 0x1

.field private static final REORDER_RIGHT_DIRECTION:I = -0x1

.field public static final REORDER_TIMEOUT:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "AppsReorderController"


# instance fields
.field private final mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mCountX:I

.field private mCountY:I

.field private mDeleteAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOverLastItemMoved:Z

.field private mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

.field private mOverLastItemFirstPage:I

.field private mOverLastItemLastPage:I

.field mTmpOccupied:[[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pagedView"    # Lcom/android/launcher3/allapps/view/AppsPagedView;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemFirstPage:I

    .line 59
    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemLastPage:I

    .line 60
    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mIsOverLastItemMoved:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    .line 65
    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/allapps/DragAppIcon;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .param p1, "x1"    # Lcom/android/launcher3/allapps/DragAppIcon;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->doRealTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsReorderController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/controller/AppsReorderController;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cancelDeleteAnimator()V
    .locals 5

    .prologue
    .line 556
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 558
    .local v1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet;>;"
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 559
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 560
    .local v0, "animator":Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .line 562
    .end local v0    # "animator":Landroid/animation/AnimatorSet;
    :cond_0
    const-string v2, "AppsReorderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel deleteAnimation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v1    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet;>;"
    :cond_1
    return-void
.end method

.method private doRealTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;III)V
    .locals 8
    .param p1, "currentEmpty"    # Lcom/android/launcher3/allapps/DragAppIcon;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "pageE"    # I

    .prologue
    .line 359
    const/high16 v2, 0x41f00000    # 30.0f

    .line 360
    .local v2, "delayAmount":F
    const/4 v5, 0x1

    .line 361
    .local v5, "direction":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 365
    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    int-to-long v6, p4

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-le v0, p2, :cond_1

    iget v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-ge v0, p3, :cond_1

    .line 366
    iget v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 368
    :cond_1
    return-void
.end method

.method private getNumScreenNeededChangeForMakeEmptyCellAndReorder(I)I
    .locals 5
    .param p1, "startScreen"    # I

    .prologue
    .line 474
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    .line 475
    .local v2, "maxItemCount":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    .line 476
    .local v3, "pageCount":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 477
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    .line 478
    .local v1, "itemCountPageAt":I
    if-ge v1, v2, :cond_0

    .line 482
    .end local v0    # "i":I
    .end local v1    # "itemCountPageAt":I
    :goto_1
    return v0

    .line 476
    .restart local v0    # "i":I
    .restart local v1    # "itemCountPageAt":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v1    # "itemCountPageAt":I
    :cond_1
    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method

.method private getOverLastItemFirstPage()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemFirstPage:I

    return v0
.end method

.method private getOverLastItemLastPage()I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemLastPage:I

    return v0
.end method

.method private overLastItemNextScreenForMakeEmptyCellAndReorder(IFI)V
    .locals 6
    .param p1, "delay"    # I
    .param p2, "delayAmount"    # F
    .param p3, "movePage"    # I

    .prologue
    .line 486
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt p3, v2, :cond_1

    .line 487
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 488
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 489
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 491
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 492
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    .line 498
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    .line 501
    .end local v0    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void

    .line 494
    .restart local v0    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v1    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v2, p3, 0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 495
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    goto :goto_0
.end method

.method private startDeleteAnimation(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7
    .param p1, "page"    # Lcom/android/launcher3/common/base/view/CellLayout;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 450
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 451
    .local v0, "deleteAnimator":Landroid/animation/AnimatorSet;
    instance-of v1, p2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/android/launcher3/common/view/Removable;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 452
    check-cast v1, Lcom/android/launcher3/common/view/Removable;

    invoke-interface {v1, v4}, Lcom/android/launcher3/common/view/Removable;->markToRemove(Z)V

    .line 454
    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 455
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [F

    aput v6, v3, v5

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 456
    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [F

    aput v6, v3, v5

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 457
    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [F

    aput v6, v4, v5

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    .line 454
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 458
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 459
    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 470
    return-object v0
.end method

.method private undoOverLastItemNextScreen(IFI)V
    .locals 6
    .param p1, "delay"    # I
    .param p2, "delayAmount"    # F
    .param p3, "movePage"    # I

    .prologue
    const/4 v3, 0x0

    .line 535
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 537
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 538
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 539
    const-string v3, "AppsReorderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undoOverLastItemNextScreen : movePage = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " v = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 542
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    .line 545
    .end local v0    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public getExistOverLastItemMoved()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mIsOverLastItemMoved:Z

    return v0
.end method

.method public getNumScreenNeededChange(I)I
    .locals 5
    .param p1, "startScreen"    # I

    .prologue
    .line 506
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    .line 507
    .local v2, "maxItemCount":I
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    .line 508
    .local v3, "pageCount":I
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 509
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    .line 510
    .local v1, "itemCountPageAt":I
    if-ge v1, v2, :cond_0

    .line 514
    .end local v0    # "i":I
    .end local v1    # "itemCountPageAt":I
    :goto_1
    return v0

    .line 508
    .restart local v0    # "i":I
    .restart local v1    # "itemCountPageAt":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v1    # "itemCountPageAt":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public makeEmptyCellAndReorder(II)V
    .locals 11
    .param p1, "screenId"    # I
    .param p2, "rank"    # I

    .prologue
    .line 160
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 161
    :cond_0
    const-string v0, "AppsReorderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rank position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is wrong"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    .line 168
    .local v3, "startPos":I
    if-gt v3, p2, :cond_3

    .line 169
    const-string v0, "AppsReorderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startPos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rank = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", startPos <= rank"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_3
    move v4, p2

    .line 173
    .local v4, "endPos":I
    move v6, p1

    .line 174
    .local v6, "movePage":I
    const/4 v5, -0x1

    .line 175
    .local v5, "direction":I
    const/4 v1, 0x0

    .line 176
    .local v1, "delay":I
    const/high16 v2, 0x41f00000    # 30.0f

    .line 178
    .local v2, "delayAmount":F
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChangeForMakeEmptyCellAndReorder(I)I

    move-result v8

    .line 180
    .local v8, "pageNum":I
    move v7, v8

    .local v7, "i":I
    :goto_1
    if-lt v7, p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v9

    if-ne v0, v9, :cond_4

    .line 182
    invoke-direct {p0, v1, v2, v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->overLastItemNextScreenForMakeEmptyCellAndReorder(IFI)V

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    .line 185
    if-ne p1, v7, :cond_5

    .line 186
    move v4, p2

    .line 190
    :goto_2
    move v6, v7

    move-object v0, p0

    .line 191
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 180
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 188
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public overLastItemNextScreen(IFI)V
    .locals 6
    .param p1, "delay"    # I
    .param p2, "delayAmount"    # F
    .param p3, "movePage"    # I

    .prologue
    .line 518
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    .line 520
    .local v0, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 521
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 522
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 523
    add-int/lit8 v2, p3, 0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 524
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    .line 526
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    .line 527
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setExistOverLastItemMoved(Z)V

    .line 528
    const-string v2, "AppsReorderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overLastItemNextScreen to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local v0    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public realTimeReorder(IFIIII)V
    .locals 15
    .param p1, "delay"    # I
    .param p2, "delayAmount"    # F
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I
    .param p5, "direction"    # I
    .param p6, "movePage"    # I

    .prologue
    .line 220
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    if-gtz v3, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->cancelDeleteAnimator()V

    .line 226
    const-string v3, "AppsReorderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / endPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / direction : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / movePage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v10

    .line 230
    .local v10, "countX":I
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v11

    .line 231
    .local v11, "countY":I
    sub-int v3, p4, p3

    if-lez v3, :cond_2

    if-gtz p5, :cond_3

    :cond_2
    sub-int v3, p4, p3

    if-gez v3, :cond_6

    if-gez p5, :cond_6

    .line 232
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    .line 233
    .local v1, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    move/from16 v12, p3

    .local v12, "i":I
    :goto_1
    move/from16 v0, p4

    if-eq v12, v0, :cond_0

    .line 234
    const/4 v14, -0x1

    .line 235
    .local v14, "rank":I
    add-int v13, v12, p5

    .line 236
    .local v13, "nextPos":I
    rem-int v3, v13, v10

    div-int v4, v13, v10

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 237
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 238
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 239
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    sub-int v4, v14, p5

    iput v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 240
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 241
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 244
    :cond_4
    div-int v3, v12, v10

    if-ge v3, v11, :cond_5

    rem-int v3, v12, v10

    div-int v4, v12, v10

    const/16 v5, 0x96

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mTmpOccupied:[[Z

    move/from16 v6, p1

    .line 245
    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 246
    move/from16 v0, p1

    int-to-float v3, v0

    add-float v3, v3, p2

    float-to-int v0, v3

    move/from16 p1, v0

    .line 247
    const v3, 0x3f666666    # 0.9f

    mul-float p2, p2, v3

    .line 233
    :cond_5
    add-int v12, v12, p5

    goto :goto_1

    .line 251
    .end local v1    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v2    # "v":Landroid/view/View;
    .end local v12    # "i":I
    .end local v13    # "nextPos":I
    .end local v14    # "rank":I
    :cond_6
    const-string v3, "AppsReorderController"

    const-string v4, "direction is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public realTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 15
    .param p1, "empty"    # Lcom/android/launcher3/allapps/DragAppIcon;
    .param p2, "target"    # Lcom/android/launcher3/allapps/DragAppIcon;

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "delay":I
    const/high16 v3, 0x41f00000    # 30.0f

    .line 92
    .local v3, "delayAmount":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/allapps/DragAppIcon;->getScreenId()I

    move-result v11

    .line 93
    .local v11, "pageT":I
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 95
    .local v13, "rankT":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/allapps/DragAppIcon;->getScreenId()I

    move-result v9

    .line 96
    .local v9, "pageE":I
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 98
    .local v12, "rankE":I
    const/4 v4, 0x0

    .local v4, "startPos":I
    const/4 v5, 0x0

    .line 99
    .local v5, "endPos":I
    const/16 v6, -0x64

    .line 100
    .local v6, "direction":I
    move v7, v9

    .line 102
    .local v7, "movePage":I
    if-ne v9, v11, :cond_2

    .line 103
    move v4, v12

    .line 104
    move v5, v13

    .line 106
    if-le v13, v12, :cond_1

    .line 107
    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    .line 113
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 155
    :cond_0
    return-void

    .line 108
    :cond_1
    if-ge v13, v12, :cond_0

    .line 109
    const/4 v6, -0x1

    goto :goto_0

    .line 116
    :cond_2
    move v4, v12

    .line 118
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v5

    .line 119
    move v7, v9

    .line 121
    const/4 v6, 0x1

    move-object v1, p0

    .line 124
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 126
    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChange(I)I

    move-result v10

    .line 128
    .local v10, "pageNum":I
    iput v10, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemLastPage:I

    .line 129
    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemFirstPage:I

    .line 131
    move v8, v10

    .local v8, "i":I
    :goto_1
    if-lt v8, v11, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    iget-object v14, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v14

    if-lt v1, v14, :cond_3

    .line 133
    invoke-virtual {p0, v2, v3, v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->overLastItemNextScreen(IFI)V

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    .line 139
    if-ne v11, v8, :cond_5

    .line 140
    move v5, v13

    .line 145
    :goto_2
    move v7, v8

    .line 146
    const/4 v6, 0x1

    .line 147
    if-le v4, v5, :cond_4

    .line 149
    const/4 v6, -0x1

    :cond_4
    move-object v1, p0

    .line 152
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 131
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 142
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 10
    .param p1, "empty"    # Lcom/android/launcher3/allapps/DragAppIcon;

    .prologue
    .line 267
    const/high16 v2, 0x41f00000    # 30.0f

    .line 270
    .local v2, "delayAmount":F
    const/4 v5, 0x1

    .line 272
    .local v5, "direction":I
    iget v8, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 273
    .local v8, "rankE":I
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/DragAppIcon;->getScreenId()I

    move-result v6

    .line 275
    .local v6, "pageE":I
    move v3, v8

    .line 276
    .local v3, "startPos":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    .line 278
    .local v4, "endPos":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v7

    .line 279
    .local v7, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v7, :cond_0

    .line 280
    const-string v0, "AppsReorderController"

    const-string v1, "This was removed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    rem-int v0, v3, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v1

    div-int v1, v3, v1

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 284
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_1

    .line 285
    const-string v0, "AppsReorderController"

    const-string v1, "This cell is not empty cell!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    :cond_1
    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    goto :goto_0
.end method

.method public removeEmptyCellAtPage(IIIZ)V
    .locals 18
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "pageIndex"    # I
    .param p4, "animate"    # Z

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    .line 420
    .local v2, "countX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    .line 421
    .local v14, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v14, :cond_0

    .line 422
    const-string v3, "AppsReorderController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "page is not exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->clearOccupiedCells()V

    .line 427
    const/4 v5, 0x0

    .line 428
    .local v5, "pageRank":I
    const/4 v15, 0x0

    .line 429
    .local v15, "startDelay":I
    const/high16 v12, 0x41f00000    # 30.0f

    .line 431
    .local v12, "delayAmount":F
    move/from16 v13, p1

    .local v13, "i":I
    :goto_1
    move/from16 v0, p2

    if-gt v13, v0, :cond_6

    .line 432
    rem-int v3, v13, v2

    div-int v6, v13, v2

    invoke-virtual {v14, v3, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v17

    .line 433
    .local v17, "v":Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/launcher3/common/view/Removable;

    if-eqz v3, :cond_3

    move-object/from16 v3, v17

    check-cast v3, Lcom/android/launcher3/common/view/Removable;

    invoke-interface {v3}, Lcom/android/launcher3/common/view/Removable;->isMarkToRemove()Z

    move-result v16

    .line 434
    .local v16, "tobRemove":Z
    :goto_2
    if-eqz v17, :cond_2

    if-nez v16, :cond_2

    .line 435
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 436
    .local v4, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eq v13, v5, :cond_1

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p3

    int-to-long v6, v0

    if-eqz p4, :cond_4

    int-to-float v8, v15

    add-float/2addr v8, v12

    float-to-int v15, v8

    int-to-long v8, v15

    :goto_3
    if-eqz p4, :cond_5

    const/4 v10, -0x1

    :goto_4
    const/4 v11, 0x0

    check-cast v11, [[Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V

    .line 439
    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v12, v3

    .line 440
    int-to-float v3, v15

    add-float/2addr v3, v12

    float-to-int v15, v3

    .line 441
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 443
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 431
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 433
    .end local v16    # "tobRemove":Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 437
    .restart local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v16    # "tobRemove":Z
    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    .line 446
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v16    # "tobRemove":Z
    .end local v17    # "v":Landroid/view/View;
    :cond_6
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForAllChild()V

    goto :goto_0
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V

    .line 372
    return-void
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/DragAppIcon;Z)V
    .locals 17
    .param p2, "currentEmpty"    # Lcom/android/launcher3/allapps/DragAppIcon;
    .param p3, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/DragAppIcon;",
            ">;",
            "Lcom/android/launcher3/allapps/DragAppIcon;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "listToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/allapps/DragAppIcon;>;"
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsReorderController$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v10

    .line 305
    .local v10, "countX":I
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v12

    .line 307
    .local v12, "removeViewAnimSet":Landroid/animation/AnimatorSet;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/allapps/DragAppIcon;

    .line 308
    .local v11, "empty":Lcom/android/launcher3/allapps/DragAppIcon;
    iget v7, v11, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    .line 310
    .local v7, "startPos":I
    invoke-virtual {v11}, Lcom/android/launcher3/allapps/DragAppIcon;->getScreenId()I

    move-result v9

    .line 312
    .local v9, "pageE":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    .line 313
    .local v4, "page":Lcom/android/launcher3/common/base/view/CellLayout;
    if-nez v4, :cond_2

    .line 314
    const-string v2, "AppsReorderController"

    const-string v3, "This was removed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .end local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v7    # "startPos":I
    .end local v9    # "pageE":I
    .end local v11    # "empty":Lcom/android/launcher3/allapps/DragAppIcon;
    :cond_1
    :goto_1
    return-void

    .line 317
    .restart local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .restart local v7    # "startPos":I
    .restart local v9    # "pageE":I
    .restart local v11    # "empty":Lcom/android/launcher3/allapps/DragAppIcon;
    :cond_2
    if-gez v7, :cond_3

    .line 318
    const-string v2, "AppsReorderController"

    const-string v3, "startPos is invalid!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v8

    .line 323
    .local v8, "endPos":I
    rem-int v2, v7, v10

    div-int v3, v7, v10

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 324
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 325
    if-nez p3, :cond_4

    .line 326
    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    .line 349
    :goto_2
    if-nez p3, :cond_0

    .line 350
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->doRealTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;III)V

    goto :goto_0

    .line 328
    :cond_4
    instance-of v2, v5, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v2, :cond_5

    instance-of v2, v5, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_5

    move-object v2, v5

    .line 329
    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/IconView;->markToRemove(Z)V

    .line 331
    :cond_5
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 332
    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v5, v6, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 333
    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v5, v6, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x2

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 334
    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v5, v6, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    .line 331
    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 335
    const-wide/16 v2, 0x96

    invoke-virtual {v12, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 336
    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Lcom/android/launcher3/allapps/DragAppIcon;III)V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .line 346
    :cond_6
    const-string v2, "AppsReorderController"

    const-string v3, "This cell is already removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 353
    .end local v4    # "page":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v5    # "v":Landroid/view/View;
    .end local v7    # "startPos":I
    .end local v8    # "endPos":I
    .end local v9    # "pageE":I
    .end local v11    # "empty":Lcom/android/launcher3/allapps/DragAppIcon;
    :cond_7
    if-eqz p3, :cond_1

    .line 354
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V
    .locals 18
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "removeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v5, "dirtyScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 379
    .local v4, "deleteAnimators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 380
    .local v7, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-wide v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-interface {v13, v14, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v9

    .line 381
    .local v9, "v":Landroid/view/View;
    if-eqz v9, :cond_2

    .line 382
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 383
    .local v8, "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v8, :cond_4

    .line 384
    if-eqz p2, :cond_3

    .line 385
    if-nez v4, :cond_1

    .line 386
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "deleteAnimators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .restart local v4    # "deleteAnimators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/AnimatorSet;>;"
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->startDeleteAnimation(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v2

    .line 389
    .local v2, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v2    # "anim":Landroid/animation/AnimatorSet;
    .end local v8    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_2
    :goto_1
    iget-wide v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 398
    iget-wide v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    .restart local v8    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    :cond_3
    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 394
    :cond_4
    const-string v13, "AppsReorderController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "celllayout is not exist : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    .end local v7    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v8    # "parent":Lcom/android/launcher3/common/base/view/CellLayout;
    .end local v9    # "v":Landroid/view/View;
    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 403
    const-string v12, "AppsReorderController"

    const-string v13, "start deleteAnimators"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    .line 405
    .local v3, "animator":Landroid/animation/AnimatorSet;
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 407
    .end local v3    # "animator":Landroid/animation/AnimatorSet;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 410
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v12

    if-nez v12, :cond_8

    .line 411
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 412
    .local v10, "screen":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v14

    mul-int/2addr v12, v14

    add-int/lit8 v6, v12, -0x1

    .line 413
    .local v6, "endPos":I
    const/4 v12, 0x0

    long-to-int v14, v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v6, v14, v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellAtPage(IIIZ)V

    goto :goto_3

    .line 416
    .end local v6    # "endPos":I
    .end local v10    # "screen":J
    :cond_8
    return-void
.end method

.method public setExistOverLastItemMoved(Z)V
    .locals 0
    .param p1, "moved"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mIsOverLastItemMoved:Z

    .line 263
    return-void
.end method

.method public setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    .line 70
    return-void
.end method

.method public setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountX:I

    .line 76
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountY:I

    .line 77
    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mTmpOccupied:[[Z

    .line 79
    :cond_0
    return-void
.end method

.method public undoOverLastItems()V
    .locals 11

    .prologue
    const/16 v1, 0x1e

    const/4 v2, 0x0

    .line 197
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getOverLastItemFirstPage()I

    move-result v7

    .line 198
    .local v7, "firstPage":I
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getOverLastItemLastPage()I

    move-result v8

    .line 200
    .local v8, "lastPage":I
    move v6, v7

    .local v6, "movePage":I
    :goto_0
    if-gt v6, v8, :cond_2

    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "startPos":I
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    .line 203
    .local v4, "endPos":I
    const/4 v5, 0x1

    .line 204
    .local v5, "direction":I
    const-string v0, "AppsReorderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "movePage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "endPos : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eq v6, v7, :cond_0

    move-object v0, p0

    .line 208
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    .line 211
    :cond_0
    if-eq v6, v8, :cond_1

    .line 212
    add-int/lit8 v0, v6, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItemNextScreen(IFI)V

    .line 200
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 215
    .end local v3    # "startPos":I
    .end local v4    # "endPos":I
    .end local v5    # "direction":I
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setExistOverLastItemMoved(Z)V

    .line 216
    return-void
.end method
