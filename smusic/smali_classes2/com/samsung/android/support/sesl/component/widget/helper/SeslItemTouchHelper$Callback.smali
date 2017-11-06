.class public abstract Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "SeslItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final sUICallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1483
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$Lollipop;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtilImpl$Lollipop;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sUICallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;

    .line 1490
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1497
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback$2;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1510
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .locals 4
    .param p0, "flags"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    const v3, 0xc0c0c

    .line 1570
    and-int v0, p0, v3

    .line 1571
    .local v0, "masked":I
    if-nez v0, :cond_0

    .line 1585
    :goto_0
    return p0

    .line 1574
    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr p0, v1

    .line 1575
    if-nez p1, :cond_1

    .line 1577
    shl-int/lit8 v1, v0, 0x2

    or-int/2addr p0, v1

    .line 1578
    goto :goto_0

    .line 1581
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    const v2, -0xc0c0d

    and-int/2addr v1, v2

    or-int/2addr p0, v1

    .line 1583
    shl-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr p0, v1

    .line 1585
    goto :goto_0
.end method

.method public static getDefaultUIUtil()Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;
    .locals 1

    .prologue
    .line 1555
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sUICallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 1986
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1987
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1990
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return v0
.end method

.method public static makeFlag(II)I
    .locals 1
    .param p0, "actionState"    # I
    .param p1, "directions"    # I

    .prologue
    .line 1616
    mul-int/lit8 v0, p0, 0x8

    shl-int v0, p1, v0

    return v0
.end method

.method public static makeMovementFlags(II)I
    .locals 2
    .param p0, "dragFlags"    # I
    .param p1, "swipeFlags"    # I

    .prologue
    .line 1600
    const/4 v0, 0x0

    or-int v1, p1, p0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    const/4 v1, 0x1

    .line 1601
    invoke-static {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->makeFlag(II)I

    move-result v1

    or-int/2addr v0, v1

    .line 1600
    return v0
.end method


# virtual methods
.method public canDropOver(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "current"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p3, "target"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 1711
    const/4 v0, 0x1

    return v0
.end method

.method public chooseDropTarget(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;II)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .locals 13
    .param p1, "selected"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p3, "curX"    # I
    .param p4, "curY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;II)",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;"
        }
    .end annotation

    .prologue
    .line 1888
    .local p2, "dropTargets":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    iget-object v11, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int v5, p3, v11

    .line 1889
    .local v5, "right":I
    iget-object v11, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int v0, p4, v11

    .line 1890
    .local v0, "bottom":I
    const/4 v9, 0x0

    .line 1891
    .local v9, "winner":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    const/4 v10, -0x1

    .line 1892
    .local v10, "winnerScore":I
    iget-object v11, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v2, p3, v11

    .line 1893
    .local v2, "dx":I
    iget-object v11, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v3, p4, v11

    .line 1894
    .local v3, "dy":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    .line 1895
    .local v8, "targetsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_4

    .line 1896
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 1897
    .local v7, "target":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-lez v2, :cond_0

    .line 1898
    iget-object v11, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    sub-int v1, v11, v5

    .line 1899
    .local v1, "diff":I
    if-gez v1, :cond_0

    iget-object v11, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    iget-object v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v11, v12, :cond_0

    .line 1900
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1901
    .local v6, "score":I
    if-le v6, v10, :cond_0

    .line 1902
    move v10, v6

    .line 1903
    move-object v9, v7

    .line 1907
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_0
    if-gez v2, :cond_1

    .line 1908
    iget-object v11, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int v1, v11, p3

    .line 1909
    .restart local v1    # "diff":I
    if-lez v1, :cond_1

    iget-object v11, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    iget-object v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 1910
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1911
    .restart local v6    # "score":I
    if-le v6, v10, :cond_1

    .line 1912
    move v10, v6

    .line 1913
    move-object v9, v7

    .line 1917
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_1
    if-gez v3, :cond_2

    .line 1918
    iget-object v11, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int v1, v11, p4

    .line 1919
    .restart local v1    # "diff":I
    if-lez v1, :cond_2

    iget-object v11, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    iget-object v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 1920
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1921
    .restart local v6    # "score":I
    if-le v6, v10, :cond_2

    .line 1922
    move v10, v6

    .line 1923
    move-object v9, v7

    .line 1928
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_2
    if-lez v3, :cond_3

    .line 1929
    iget-object v11, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    sub-int v1, v11, v0

    .line 1930
    .restart local v1    # "diff":I
    if-gez v1, :cond_3

    iget-object v11, v7, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    iget-object v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    if-le v11, v12, :cond_3

    .line 1931
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 1932
    .restart local v6    # "score":I
    if-le v6, v10, :cond_3

    .line 1933
    move v10, v6

    .line 1934
    move-object v9, v7

    .line 1895
    .end local v1    # "diff":I
    .end local v6    # "score":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1939
    .end local v7    # "target":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_4
    return-object v9
.end method

.method public clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 2127
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sUICallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;

    iget-object v1, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;->clearView(Landroid/view/View;)V

    .line 2128
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .locals 5
    .param p1, "flags"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    const v4, 0x303030

    .line 1659
    and-int v1, p1, v4

    .line 1660
    .local v1, "masked":I
    if-nez v1, :cond_0

    move v0, p1

    .line 1674
    .end local p1    # "flags":I
    .local v0, "flags":I
    :goto_0
    return v0

    .line 1663
    .end local v0    # "flags":I
    .restart local p1    # "flags":I
    :cond_0
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr p1, v2

    .line 1664
    if-nez p2, :cond_1

    .line 1666
    shr-int/lit8 v2, v1, 0x2

    or-int/2addr p1, v2

    move v0, p1

    .line 1667
    .end local p1    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_0

    .line 1670
    .end local v0    # "flags":I
    .restart local p1    # "flags":I
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr p1, v2

    .line 1672
    shr-int/lit8 v2, v1, 0x1

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr p1, v2

    move v0, p1

    .line 1674
    .end local p1    # "flags":I
    .restart local v0    # "flags":I
    goto :goto_0
.end method

.method final getAbsoluteMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 1679
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v0

    .line 1680
    .local v0, "flags":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v1

    return v1
.end method

.method public getAnimationDuration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IFF)J
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "animationType"    # I
    .param p3, "animateDx"    # F
    .param p4, "animateDy"    # F

    .prologue
    const/16 v1, 0x8

    .line 2223
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getItemAnimator()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;

    move-result-object v0

    .line 2224
    .local v0, "itemAnimator":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;
    if-nez v0, :cond_1

    .line 2225
    if-ne p2, v1, :cond_0

    const-wide/16 v2, 0xc8

    .line 2228
    :goto_0
    return-wide v2

    .line 2225
    :cond_0
    const-wide/16 v2, 0xfa

    goto :goto_0

    .line 2228
    :cond_1
    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v2

    goto :goto_0

    .line 2229
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getBoundingBoxMargin()I
    .locals 1

    .prologue
    .line 1778
    const/4 v0, 0x0

    return v0
.end method

.method public getMoveThreshold(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 1806
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public abstract getMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I
.end method

.method public getSwipeEscapeVelocity(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .prologue
    .line 1832
    return p1
.end method

.method public getSwipeThreshold(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)F
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 1793
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public getSwipeVelocityThreshold(F)F
    .locals 0
    .param p1, "defaultValue"    # F

    .prologue
    .line 1857
    return p1
.end method

.method hasDragFlag(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 1684
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v0

    .line 1685
    .local v0, "flags":I
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasSwipeFlag(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 1690
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getAbsoluteMovementFlags(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)I

    move-result v0

    .line 1691
    .local v0, "flags":I
    const v1, 0xff00

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public interpolateOutOfBoundsScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;IIIJ)I
    .locals 13
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewSize"    # I
    .param p3, "viewSizeOutOfBounds"    # I
    .param p4, "totalSize"    # I
    .param p5, "msSinceStartScroll"    # J

    .prologue
    .line 2256
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->getMaxDragScroll(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v5

    .line 2257
    .local v5, "maxScroll":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2258
    .local v2, "absOutOfBounds":I
    move/from16 v0, p3

    int-to-float v9, v0

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    float-to-int v4, v9

    .line 2260
    .local v4, "direction":I
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    int-to-float v11, v2

    mul-float/2addr v10, v11

    int-to-float v11, p2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2261
    .local v6, "outOfBoundsRatio":F
    mul-int v9, v4, v5

    int-to-float v9, v9

    sget-object v10, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 2262
    invoke-interface {v10, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v3, v9

    .line 2264
    .local v3, "cappedScroll":I
    const-wide/16 v10, 0x7d0

    cmp-long v9, p5, v10

    if-lez v9, :cond_0

    .line 2265
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2269
    .local v7, "timeRatio":F
    :goto_0
    int-to-float v9, v3

    sget-object v10, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 2270
    invoke-interface {v10, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 2271
    .local v8, "value":I
    if-nez v8, :cond_2

    .line 2272
    if-lez p3, :cond_1

    const/4 v9, 0x1

    .line 2274
    :goto_1
    return v9

    .line 2267
    .end local v7    # "timeRatio":F
    .end local v8    # "value":I
    :cond_0
    move-wide/from16 v0, p5

    long-to-float v9, v0

    const/high16 v10, 0x44fa0000    # 2000.0f

    div-float v7, v9, v10

    .restart local v7    # "timeRatio":F
    goto :goto_0

    .line 2272
    .restart local v8    # "value":I
    :cond_1
    const/4 v9, -0x1

    goto :goto_1

    :cond_2
    move v9, v8

    .line 2274
    goto :goto_1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 1766
    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 1750
    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 2161
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sUICallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;

    iget-object v3, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;FFIZ)V

    .line 2163
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;FFIZ)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 2196
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sUICallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;

    iget-object v3, p3, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;FFIZ)V

    .line 2198
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "selected"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 2065
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v12

    .line 2066
    .local v12, "recoverAnimSize":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 2067
    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    .line 2068
    .local v9, "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->update()V

    .line 2069
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 2070
    .local v10, "count":I
    iget-object v4, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget v5, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mY:F

    iget v7, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;FFIZ)V

    .line 2072
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2066
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2074
    .end local v9    # "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    .end local v10    # "count":I
    :cond_0
    if-eqz p3, :cond_1

    .line 2075
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 2076
    .restart local v10    # "count":I
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;FFIZ)V

    .line 2077
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2079
    .end local v10    # "count":I
    :cond_1
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "selected"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p5, "actionState"    # I
    .param p6, "dX"    # F
    .param p7, "dY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    .prologue
    .line 2084
    .local p4, "recoverAnimationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    .line 2085
    .local v13, "recoverAnimSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 2086
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    .line 2087
    .local v9, "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 2088
    .local v10, "count":I
    iget-object v4, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget v5, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mY:F

    iget v7, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;FFIZ)V

    .line 2090
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2085
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2092
    .end local v9    # "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    .end local v10    # "count":I
    :cond_0
    if-eqz p3, :cond_1

    .line 2093
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 2094
    .restart local v10    # "count":I
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;FFIZ)V

    .line 2095
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2097
    .end local v10    # "count":I
    :cond_1
    const/4 v11, 0x0

    .line 2098
    .local v11, "hasRunningAnimation":Z
    add-int/lit8 v12, v13, -0x1

    :goto_1
    if-ltz v12, :cond_4

    .line 2099
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    .line 2100
    .restart local v9    # "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    iget-boolean v1, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v1, :cond_3

    .line 2101
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2098
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 2102
    :cond_3
    iget-boolean v1, v9, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v1, :cond_2

    .line 2103
    const/4 v11, 0x1

    goto :goto_2

    .line 2106
    .end local v9    # "anim":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    :cond_4
    if-eqz v11, :cond_5

    .line 2107
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    .line 2109
    :cond_5
    return-void
.end method

.method public abstract onMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;III)V
    .locals 7
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p3, "fromPos"    # I
    .param p4, "target"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p5, "toPos"    # I
    .param p6, "x"    # I
    .param p7, "y"    # I

    .prologue
    .line 2031
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 2032
    .local v0, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    instance-of v5, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ViewDropHandler;

    if-eqz v5, :cond_1

    .line 2033
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ViewDropHandler;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    iget-object v5, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v5, v6, p6, p7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2039
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2040
    iget-object v5, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v3

    .line 2041
    .local v3, "minLeft":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingLeft()I

    move-result v5

    if-gt v3, v5, :cond_2

    .line 2042
    invoke-virtual {p1, p5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 2044
    :cond_2
    iget-object v5, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 2045
    .local v2, "maxRight":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v2, v5, :cond_3

    .line 2046
    invoke-virtual {p1, p5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 2050
    .end local v2    # "maxRight":I
    .end local v3    # "minLeft":I
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2051
    iget-object v5, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    .line 2052
    .local v4, "minTop":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingTop()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 2053
    invoke-virtual {p1, p5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 2055
    :cond_4
    iget-object v5, p4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    .line 2056
    .local v1, "maxBottom":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v1, v5, :cond_0

    .line 2057
    invoke-virtual {p1, p5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollToPosition(I)V

    goto :goto_0
.end method

.method public onSelectedChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 1980
    if-eqz p1, :cond_0

    .line 1981
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->sUICallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchUIUtil;->onSelected(Landroid/view/View;I)V

    .line 1983
    :cond_0
    return-void
.end method

.method public abstract onSwiped(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
.end method
