.class public abstract Lcom/android/launcher3/widget/view/WidgetPagedView;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "WidgetPagedView.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/LauncherTransitionable;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;,
        Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;,
        Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;
    }
.end annotation


# static fields
.field private static final PAGE_CACHE_SIZE:I = 0x3

.field public static final PAGE_MINIMIZE:I = 0x0

.field public static final PAGE_NORMALIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"


# instance fields
.field private mChildrenLayersEnabled:Z

.field private mDisplayWidgetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInProgress:Z

.field public mDragOnSearchState:Z

.field private mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

.field private mFilterString:Ljava/lang/String;

.field private mItemKeyEventListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

.field private mItemOnKeyListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

.field private final mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

.field private mNumWidgetPages:I

.field private mPageCacheSize:I

.field private mWidgetItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDragOnSearchState:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDragInProgress:Z

    .line 89
    iput v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    .line 90
    iput-boolean v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    .line 581
    new-instance v0, Lcom/android/launcher3/widget/view/WidgetPagedView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/view/WidgetPagedView$2;-><init>(Lcom/android/launcher3/widget/view/WidgetPagedView;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemKeyEventListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 149
    new-instance v0, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;-><init>(Lcom/android/launcher3/widget/view/WidgetPagedView;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    .line 150
    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemKeyEventListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;-><init>(Lcom/android/launcher3/widget/controller/WidgetFocusHelper$ItemKeyEventListener;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemOnKeyListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

    .line 151
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setSaveEnabled(Z)V

    .line 152
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/widget/view/WidgetPagedView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetPagedView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFirstLayout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/view/WidgetPagedView;)Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetPagedView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    return-object v0
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 506
    iget-boolean v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    if-eqz v8, :cond_3

    .line 507
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v5

    .line 508
    .local v5, "screenCount":I
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v8}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getVisiblePages([I)V

    .line 509
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mTempVisiblePagesRange:[I

    aget v3, v8, v7

    .line 510
    .local v3, "leftScreen":I
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mTempVisiblePagesRange:[I

    aget v4, v8, v6

    .line 511
    .local v4, "rightScreen":I
    if-ne v3, v4, :cond_0

    .line 513
    add-int/lit8 v8, v5, -0x1

    if-ge v4, v8, :cond_1

    .line 514
    add-int/lit8 v4, v4, 0x1

    .line 520
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 521
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 523
    .local v2, "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    if-gt v3, v1, :cond_2

    if-gt v1, v4, :cond_2

    move v0, v6

    .line 524
    .local v0, "enableLayer":Z
    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->enableHardwareLayers(Z)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 515
    .end local v0    # "enableLayer":Z
    .end local v1    # "i":I
    .end local v2    # "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    :cond_1
    if-lez v3, :cond_0

    .line 516
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v2    # "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    :cond_2
    move v0, v7

    .line 523
    goto :goto_2

    .line 527
    .end local v1    # "i":I
    .end local v2    # "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .end local v3    # "leftScreen":I
    .end local v4    # "rightScreen":I
    .end local v5    # "screenCount":I
    :cond_3
    return-void
.end method

.method private runFilter()V
    .locals 2

    .prologue
    .line 227
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter(IZ)V

    .line 228
    return-void
.end method

.method private runFilter(IZ)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "force"    # Z

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 232
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;->filterWidgets(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 237
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v1, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onSearchResult(Z)V

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updatePageCounts()V

    .line 241
    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    move v0, p1

    .line 242
    .local v0, "pos":I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidatePageData(I)V

    .line 243
    return-void

    .line 235
    .end local v0    # "pos":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 238
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v0

    goto :goto_2
.end method

.method private syncWidgetPageItems(IZ)V
    .locals 11
    .param p1, "pageIndex"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getRowCount()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getColumnCount()I

    move-result v9

    mul-int v4, v8, v9

    .line 275
    .local v4, "numItemsPerPage":I
    const/4 v5, 0x0

    .local v5, "offset":I
    const/4 v0, 0x0

    .line 276
    .local v0, "end":I
    const/4 v3, 0x0

    .line 277
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    mul-int v5, p1, v4

    .line 278
    add-int v8, v5, v4

    iget-object v9, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 279
    if-le v5, v0, :cond_1

    .line 298
    :cond_0
    return-void

    .line 281
    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v8, v5, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 283
    const-string v8, "WidgetPagedView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncWidgetPageItems Page: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " immediate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subListOffsets "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 287
    .local v6, "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    invoke-virtual {v6}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->removeAllViews()V

    .line 288
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilterString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v9

    invoke-virtual {v6, v3, v8, v9}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->bindItems(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 290
    invoke-virtual {v6}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v7

    .line 291
    .local v7, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 292
    invoke-virtual {v6, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    .line 293
    .local v2, "itemView":Lcom/android/launcher3/widget/view/WidgetItemView;
    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->supportLongClick()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 295
    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 291
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getRowCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getColumnCount()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 174
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mNumWidgetPages:I

    .line 176
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 0
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    .line 367
    return-void
.end method

.method public applySearchResult(Ljava/lang/String;)V
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 438
    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter(IZ)V

    .line 439
    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 5
    .param p1, "whiteBg"    # Z

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v0

    .line 402
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 403
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 404
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v4, :cond_0

    .line 405
    check-cast v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v3, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->changeColorForBg(Z)V

    .line 402
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v2

    .line 409
    .local v2, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    if-eqz v2, :cond_2

    .line 410
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/view/PageIndicator;->changeColorForBg(Z)V

    .line 412
    :cond_2
    return-void
.end method

.method public clearAccessibilityFocus()V
    .locals 7

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 376
    const-string v4, "WidgetPagedView"

    const-string v5, "Try to clear accessibility focus in widgets"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v0

    .line 378
    .local v0, "current":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 379
    .local v2, "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    if-eqz v2, :cond_1

    .line 380
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 381
    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 382
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 383
    const/16 v4, 0x80

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 380
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "current":I
    .end local v1    # "i":I
    .end local v2    # "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public findItemView(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Lcom/android/launcher3/widget/view/WidgetItemView;
    .locals 12
    .param p1, "findInfo"    # Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .prologue
    const/4 v9, 0x0

    .line 551
    if-nez p1, :cond_1

    .line 552
    const-string v10, "WidgetPagedView"

    const-string v11, "findInfo is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 555
    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 556
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v8

    .line 557
    .local v8, "userHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v6

    .line 558
    .local v6, "pageCount":I
    const/4 v7, 0x0

    .local v7, "pageIndex":I
    :goto_1
    if-ge v7, v6, :cond_4

    .line 559
    invoke-virtual {p0, v7}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 560
    .local v5, "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    instance-of v10, v5, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v10, :cond_3

    .line 561
    invoke-virtual {v5}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v3

    .line 562
    .local v3, "itemCount":I
    const/4 v4, 0x0

    .local v4, "itemIndex":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 563
    invoke-virtual {v5, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetItemView;

    .line 564
    .local v0, "child":Lcom/android/launcher3/widget/view/WidgetItemView;
    instance-of v10, v0, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v10, :cond_2

    .line 565
    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getWidgets()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 566
    .local v2, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    if-eqz v2, :cond_2

    .line 567
    iget-object v10, v2, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 568
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 562
    .end local v2    # "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 558
    .end local v0    # "child":Lcom/android/launcher3/widget/view/WidgetItemView;
    .end local v3    # "itemCount":I
    .end local v4    # "itemIndex":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 577
    .end local v5    # "page":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    :cond_4
    const-string v10, "WidgetPagedView"

    const-string v11, "can not find the anchorview"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 578
    goto :goto_0
.end method

.method public abstract getColumnCount()I
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 309
    const v0, 0x7f090033

    .line 310
    .local v0, "stringId":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getNextPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mNumWidgetPages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 537
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayItemCount()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDisplayWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageCacheSize()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    return v0
.end method

.method public abstract getRowCount()I
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    goto :goto_0
.end method

.method public abstract getWidgetItemFolderViewId()I
.end method

.method public abstract getWidgetItemSingleViewId()I
.end method

.method public abstract getWidgetPageLayoutId()I
.end method

.method public handleKeyEvent(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateWigetItems()V
    .locals 4

    .prologue
    .line 204
    iget-boolean v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mDragInProgress:Z

    if-eqz v2, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v1

    .line 208
    .local v1, "pageIndicator":Lcom/android/launcher3/common/view/PageIndicator;
    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 210
    .local v0, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v2, p0, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    if-eqz v2, :cond_4

    .line 211
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 215
    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->disableLayoutTransitions()V

    .line 217
    .end local v0    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter()V

    .line 219
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->enableLayoutTransitions()V

    .line 221
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->requestLayout()V

    goto :goto_0

    .line 213
    .restart local v0    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method protected isContentsRefreshable()Z
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x1

    return v0
.end method

.method public notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Lcom/android/launcher3/widget/controller/WidgetState$State;)V
    .locals 5
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "fromState"    # Lcom/android/launcher3/widget/controller/WidgetState$State;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v2

    .line 391
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v0

    .line 392
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 393
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 394
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v4, :cond_0

    .line 395
    check-cast v3, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .end local v3    # "view":Landroid/view/View;
    if-ne v2, v1, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, p1, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    .line 392
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 398
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onWidgetItemClick(Landroid/view/View;)V

    .line 252
    :cond_0
    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidateWigetItems()V

    .line 543
    new-instance v0, Lcom/android/launcher3/widget/view/WidgetPagedView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/view/WidgetPagedView$1;-><init>(Lcom/android/launcher3/widget/view/WidgetPagedView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->post(Ljava/lang/Runnable;)Z

    .line 548
    return-void
.end method

.method protected onDataReady(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updatePageCounts()V

    .line 181
    const-string v1, "WidgetPagedView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReady done, mWidgetItems = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 182
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->runFilter(IZ)V

    .line 185
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onPagedViewTouchIntercepted()V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 461
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 451
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 456
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 471
    instance-of v0, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->onWidgetItemLongClick(Landroid/view/View;)Z

    move-result v0

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 190
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 191
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 193
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setDataReady()V

    .line 196
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setMeasuredDimension(II)V

    .line 197
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onDataReady(II)V

    .line 200
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onMeasure(II)V

    .line 201
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updateChildrenLayersEnabled(Z)V

    .line 316
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 317
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setAccessibilityFocusChange(Z)V

    .line 318
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    .line 319
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updateChildrenLayersEnabled(Z)V

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setAccessibilityFocusChange(Z)V

    .line 305
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 360
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    return-void
.end method

.method public prepareInOut(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "invalidate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 335
    iget v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    .line 336
    .local v0, "cacheSize":I
    if-ne p1, v2, :cond_0

    .line 337
    if-eqz p2, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->invalidateWigetItems()V

    .line 341
    :cond_0
    if-ne p1, v2, :cond_2

    const/4 v1, 0x3

    :goto_0
    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    .line 342
    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    if-eq v0, v1, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->loadAssociatedPages(I)V

    .line 344
    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mPageCacheSize:I

    if-ne v1, v2, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;->clear()V

    .line 348
    :cond_1
    const-string v1, "WidgetPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareInOut items : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    return-void

    :cond_2
    move v1, v2

    .line 341
    goto :goto_0
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 353
    .local v0, "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setAccessibilityEnabled(Z)V

    .line 355
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    .line 162
    return-void
.end method

.method public setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilter:Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;

    .line 435
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mFilterString:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setWidgetItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mWidgetItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8
    .param p1, "isPageIndicator"    # Z

    .prologue
    .line 649
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 650
    .local v0, "method":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 651
    .local v1, "res":Landroid/content/res/Resources;
    instance-of v2, p0, Lcom/android/launcher3/widget/view/WidgetFolderPagedView;

    if-eqz v2, :cond_1

    .line 652
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901c3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09012a

    .line 653
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 652
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 659
    :goto_1
    return-void

    .line 649
    .end local v0    # "method":I
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 655
    .restart local v0    # "method":I
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901c4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090129

    .line 656
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    .line 655
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/view/WidgetPagedView;->syncWidgetPageItems(IZ)V

    .line 271
    return-void
.end method

.method protected syncPages()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->removeAllViews()V

    .line 258
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mListener:Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;

    invoke-interface {v4}, Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;->isWhiteWallpaper()Z

    move-result v2

    .line 259
    .local v2, "whiteWallpaper":Z
    :goto_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mNumWidgetPages:I

    if-ge v0, v4, :cond_1

    .line 260
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getWidgetPageLayoutId()I

    move-result v5

    invoke-virtual {v4, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 261
    .local v1, "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemViewPool:Lcom/android/launcher3/widget/view/WidgetPagedView$ItemViewPool;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setViewRecycler(Lcom/android/launcher3/widget/view/ViewRecycler;)V

    .line 262
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mItemOnKeyListener:Lcom/android/launcher3/widget/controller/WidgetFocusHelper$WidgetItemKeyListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setItemOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 263
    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->changeColorForBg(Z)V

    .line 264
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->addView(Landroid/view/View;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "j":I
    .end local v1    # "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    .end local v2    # "whiteWallpaper":Z
    :cond_0
    move v2, v3

    .line 258
    goto :goto_0

    .line 266
    .restart local v0    # "j":I
    .restart local v2    # "whiteWallpaper":Z
    :cond_1
    return-void
.end method

.method public updateCellSpan()V
    .locals 4

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildCount()I

    move-result v0

    .line 416
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 417
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 418
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    if-eqz v3, :cond_0

    .line 419
    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->updateCellSpan()V

    .line 416
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 422
    :cond_1
    return-void
.end method

.method public updateChildrenLayersEnabled(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 490
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->isPageMoving()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 492
    .local v0, "enableChildrenLayers":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    if-eq v0, v4, :cond_1

    .line 493
    iput-boolean v0, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    .line 494
    iget-boolean v4, p0, Lcom/android/launcher3/widget/view/WidgetPagedView;->mChildrenLayersEnabled:Z

    if-eqz v4, :cond_3

    .line 495
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->enableHwLayersOnVisiblePages()V

    .line 503
    :cond_1
    return-void

    .end local v0    # "enableChildrenLayers":Z
    :cond_2
    move v0, v3

    .line 490
    goto :goto_0

    .line 497
    .restart local v0    # "enableChildrenLayers":Z
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 498
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .line 499
    .local v2, "layout":Lcom/android/launcher3/widget/view/WidgetPageLayout;
    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->enableHardwareLayers(Z)V

    .line 497
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
