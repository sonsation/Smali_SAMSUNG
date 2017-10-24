.class public Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.super Landroid/support/v4/view/ViewPager;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;,
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;,
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;,
        Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v4/view/PagerAdapter;

.field protected mCellHeight:I

.field protected mCellMargin:I

.field private mCellMarginTop:I

.field protected mColumns:I

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDecorGroup:Landroid/view/View;

.field private final mDistribute:Ljava/lang/Runnable;

.field protected mDividerHeight:I

.field private mDragListener:Landroid/view/View$OnDragListener;

.field private mElevation:F

.field private mPageBackground:Landroid/graphics/drawable/Drawable;

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mRows:I

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pageBackgroundResourceId:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageListener:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$PageListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    .line 433
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    .line 549
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$2;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateResources()Z

    .line 65
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(I)V

    .line 61
    return-void
.end method

.method private addPage()V
    .locals 5

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400fb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    .line 173
    .local v1, "page":Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    .line 174
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    .line 175
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->pageBackgroundResourceId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackgroundResource(I)V

    .line 176
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setElevation(F)V

    .line 180
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 182
    .local v0, "cur":I
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 184
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 185
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 171
    return-void
.end method

.method private distributeTiles()V
    .locals 13

    .prologue
    const v9, 0x7f0400fb

    const/4 v12, 0x0

    .line 377
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 378
    .local v0, "NP":I
    const/4 v3, 0x0

    .line 379
    .local v3, "index":I
    const/4 v5, 0x0

    .line 380
    .local v5, "tag":I
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 381
    .local v1, "NT":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v7, "tilesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;>;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    .line 384
    if-nez v0, :cond_1

    .line 385
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v9, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    .line 386
    .local v4, "page":Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;
    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    .line 387
    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->pageBackgroundResourceId:I

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackgroundResource(I)V

    .line 388
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_0
    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setElevation(F)V

    .line 392
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v4    # "page":Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 396
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 397
    .local v6, "tile":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 398
    add-int/lit8 v3, v3, 0x1

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v3, v8, :cond_3

    .line 399
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v9, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    .line 400
    .restart local v4    # "page":Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;
    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    .line 401
    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->pageBackgroundResourceId:I

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackgroundResource(I)V

    .line 402
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 403
    :cond_2
    iget v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    invoke-virtual {v4, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setElevation(F)V

    .line 406
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .end local v4    # "page":Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v8, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 410
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 413
    .end local v6    # "tile":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v9, v3, 0x1

    if-eq v8, v9, :cond_6

    .line 414
    :goto_1
    add-int/lit8 v8, v3, 0x1

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 415
    const-string/jumbo v8, "CSTMPagedTileLayout"

    const-string/jumbo v9, "mPages.remove"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 418
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 419
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 420
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 421
    invoke-virtual {p0, v12, v12}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    .line 424
    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 425
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    iget v10, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget-object v11, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addBackgroundBox(IILandroid/view/View$OnDragListener;)V

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 427
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v9, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 428
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 429
    iget-object v8, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 430
    invoke-virtual {p0, v12, v12}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    .line 375
    return-void
.end method

.method private movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 12
    .param p1, "msg"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xcc

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v2

    .line 274
    .local v2, "cur":I
    iget v7, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    .line 276
    .local v7, "animationType":I
    if-ne v7, v10, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_1

    return-void

    .line 279
    :cond_0
    if-nez v2, :cond_1

    return-void

    .line 282
    :cond_1
    if-ne v7, v10, :cond_2

    const/4 v3, 0x1

    .line 283
    .local v3, "pageOffset":I
    :goto_0
    if-ne v7, v10, :cond_3

    const/4 v9, 0x0

    .line 284
    .local v9, "removePos":I
    :goto_1
    if-ne v7, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    add-int/lit8 v6, v0, -0x1

    .line 285
    .local v6, "curAddPos":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    add-int/lit8 v8, v0, -0x1

    .line 288
    .local v8, "longClickedAddPos":I
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v9}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v5

    .line 289
    .local v5, "removeTileInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    if-nez v5, :cond_5

    return-void

    .line 282
    .end local v3    # "pageOffset":I
    .end local v5    # "removeTileInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .end local v6    # "curAddPos":I
    .end local v8    # "longClickedAddPos":I
    .end local v9    # "removePos":I
    :cond_2
    const/4 v3, -0x1

    .restart local v3    # "pageOffset":I
    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getColumnCount()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x1

    .restart local v9    # "removePos":I
    goto :goto_1

    .line 284
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "curAddPos":I
    goto :goto_2

    .line 290
    .restart local v5    # "removeTileInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .restart local v8    # "longClickedAddPos":I
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v5, v11}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 293
    iget-object v4, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 294
    .local v4, "addInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v4, v8, v11}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$4;-><init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;IILcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    invoke-virtual {v10, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 269
    return-void
.end method

.method private postDistributeTiles()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void
.end method

.method private removePage()V
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 191
    .local v0, "cur":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getTotalPages()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 193
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 189
    return-void

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    goto :goto_0
.end method

.method private updateTilesInfo()V
    .locals 5

    .prologue
    .line 338
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 339
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 340
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v3

    .line 341
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "customInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 342
    .local v0, "customInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 339
    .end local v0    # "customInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    .end local v1    # "customInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V
    .locals 7
    .param p1, "tile"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 219
    .local v0, "cur":I
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 221
    .local v3, "total":I
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 222
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->isFull()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->addPage()V

    .line 225
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v2

    .line 226
    .local v2, "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4, v2, v6, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 227
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4, v2, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 221
    .end local v2    # "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getLastCustomTileInfo()Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v2

    .line 230
    .restart local v2    # "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4, v2, v6, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 231
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4, v2, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    goto :goto_1

    .line 235
    .end local v2    # "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, p2, v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;IZ)V

    .line 237
    iget-object v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 216
    return-void
.end method

.method public addTiles(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "tiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;>;"
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->postDistributeTiles()V

    .line 203
    return-void
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 509
    return v1

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v0, v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->mColumns:I

    return v0
.end method

.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 112
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getRtlPosition(I)I

    move-result v1

    return v1
.end method

.method public getMinimumTileNum()I
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v0

    return v0

    .line 351
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected getRtlPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0

    .line 119
    :cond_0
    return p1
.end method

.method public getSpec()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v4, "newSpecs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 327
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCustomTileInfo()Ljava/util/ArrayList;

    move-result-object v3

    .line 328
    .local v3, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "customInfo$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 329
    .local v0, "customInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget-object v5, v0, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;->spec:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 326
    .end local v0    # "customInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "customInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;>;"
    :cond_1
    const-string/jumbo v5, "CSTMPagedTileLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "newspecs =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-object v4
.end method

.method public getTotalPages()I
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "totalPages":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 139
    :cond_0
    return v0
.end method

.method public handleAnimate(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V
    .locals 5
    .param p1, "msg"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 601
    .local v0, "currentPage":I
    iget-object v1, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 602
    .local v1, "tileInfo":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    iget v2, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->touchedPos:I

    .line 605
    .local v2, "touchedPos":I
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xca

    if-ne v3, v4, :cond_1

    .line 606
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->moveTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_2

    .line 608
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->dropTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_0

    .line 609
    :cond_2
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xcb

    if-eq v3, v4, :cond_3

    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_4

    .line 610
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->movePage(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    goto :goto_0

    .line 611
    :cond_4
    iget v3, p1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;->animationType:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 612
    iget-object v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->selectTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    .line 158
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 489
    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_0

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 492
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d027f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 493
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCurrentOrientation:I

    .line 486
    .end local v0    # "changed":Z
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, "CSTMPagedTileLayout"

    const-string/jumbo v1, "onFinishInflate "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onFinishInflate()V

    .line 151
    const v0, 0x7f13025f

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 152
    const v0, 0x7f13030e

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 148
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 501
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 502
    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMarginTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int v0, v1, v2

    .line 503
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDividerHeight:I

    iget v4, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setMeasuredDimension(II)V

    .line 500
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onRtlPropertiesChanged(I)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setCurrentItem(IZ)V

    .line 94
    return-void
.end method

.method public removeAllPage()V
    .locals 2

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 362
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 357
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 358
    iget-object v2, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeAllViews()V

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V
    .locals 8
    .param p1, "tile"    # Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .prologue
    const/4 v7, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->getCurrentItem()I

    move-result v0

    .line 244
    .local v0, "cur":I
    const/4 v3, 0x1

    .line 245
    .local v3, "pageOffset":I
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 247
    .local v4, "total":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_2

    .line 248
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getInfo(I)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v2

    .line 249
    .local v2, "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    if-nez v2, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->addTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 251
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5, v2, v7}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 253
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    .line 247
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "info":Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->removeTile(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;Z)V

    .line 259
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->getCount()I

    move-result v5

    if-nez v5, :cond_3

    .line 261
    if-eqz v0, :cond_3

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removePage()V

    .line 242
    :cond_3
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPageBackground:Landroid/graphics/drawable/Drawable;

    .line 444
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 441
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->pageBackgroundResourceId:I

    .line 440
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 105
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 101
    return-void
.end method

.method public setDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnDragListener;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDragListener:Landroid/view/View$OnDragListener;

    .line 319
    return-void
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 449
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mElevation:F

    .line 448
    return-void
.end method

.method public setPageMaxRows(I)V
    .locals 3
    .param p1, "maxRows"    # I

    .prologue
    .line 123
    const-string/jumbo v0, "CSTMPagedTileLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageMaxRows = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    .line 122
    return-void
.end method

.method public updateResources()Z
    .locals 8

    .prologue
    .line 454
    const-string/jumbo v5, "CSTMPagedTileLayout"

    const-string/jumbo v6, "updateResources"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 456
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 457
    .local v0, "changed":Z
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v3, v5, Landroid/content/res/Configuration;->orientation:I

    .line 458
    .local v3, "orientation":I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    const/4 v2, 0x1

    .line 460
    .local v2, "isLandscape":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0207

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellHeight:I

    .line 461
    const v5, 0x7f0d0208

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMargin:I

    .line 462
    const v5, 0x7f0d0219

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mCellMarginTop:I

    .line 463
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d022d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mDividerHeight:I

    .line 464
    if-eqz v2, :cond_0

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v5, :cond_2

    .line 465
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v5

    const-string/jumbo v6, "qs_tile_column"

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v5

    .line 464
    :goto_1
    iput v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mColumns:I

    .line 472
    const/4 v1, 0x0

    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 473
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mRows:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->setMaxRows(I)V

    .line 474
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$CustomizerTilePage;->updateResources()Z

    move-result v5

    or-int/2addr v0, v5

    .line 472
    .local v0, "changed":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 458
    .end local v1    # "i":I
    .end local v2    # "isLandscape":Z
    .local v0, "changed":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isLandscape":Z
    goto :goto_0

    .line 464
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v5

    const-string/jumbo v6, "qs_tile_column_landscape"

    const/4 v7, 0x6

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 476
    .end local v0    # "changed":Z
    .restart local v1    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->updateTilesInfo()V

    .line 478
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeAllViews()V

    .line 479
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->distributeTiles()V

    .line 482
    :cond_4
    const/4 v5, 0x1

    return v5
.end method
