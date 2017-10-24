.class public Lcom/android/systemui/qs/PagedTileLayout;
.super Landroid/support/v4/view/ViewPager;
.source "PagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PagedTileLayout$1;,
        Lcom/android/systemui/qs/PagedTileLayout$2;,
        Lcom/android/systemui/qs/PagedTileLayout$PageListener;,
        Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mContext:Landroid/content/Context;

.field private mDecorGroup:Landroid/view/View;

.field private final mDistribute:Ljava/lang/Runnable;

.field private mListening:Z

.field private mNumPages:I

.field private mOffPage:Z

.field private mOldMobileKeyboardCovered:I

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/PagedTileLayout$TilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/PagedTileLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/PagedTileLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/PagedTileLayout;IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "offPage"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentPage(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    .line 283
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$1;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    .line 343
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 53
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 80
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(I)V

    .line 81
    invoke-static {p1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "qs_tile_row"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "qs_tile_column"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "qs_tile_column_landscape"

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private distributeTiles()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 221
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 222
    .local v0, "NP":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 223
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v6}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->removeAllViews()V

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const/4 v3, 0x0

    .line 226
    .local v3, "index":I
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 227
    .local v1, "NT":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 228
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 229
    .local v4, "tile":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v6}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->isFull()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 233
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 234
    const v7, 0x7f04010e

    .line 233
    invoke-virtual {v6, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 235
    .local v5, "tilePage":Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v5    # "tilePage":Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v6, v4}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    .end local v4    # "tile":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_2
    iget v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    add-int/lit8 v7, v3, 0x1

    if-eq v6, v7, :cond_4

    .line 243
    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    .line 244
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    if-le v6, v7, :cond_3

    .line 245
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 248
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget v7, p0, Lcom/android/systemui/qs/PagedTileLayout;->mNumPages:I

    invoke-virtual {v6, v7}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 249
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 250
    iget-object v6, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 251
    invoke-virtual {p0, v8, v8}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 219
    :cond_4
    return-void
.end method

.method private postDistributeTiles()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistribute:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method private setCurrentPage(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "offPage"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-ne v0, p2, :cond_0

    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-eqz v0, :cond_2

    .line 133
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    if-eq v0, p1, :cond_3

    .line 135
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-eqz v0, :cond_1

    .line 137
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 140
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 141
    if-eqz p2, :cond_2

    .line 142
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    .line 150
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    .line 151
    iput-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    .line 130
    return-void

    .line 144
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-eq v0, p2, :cond_2

    .line 146
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListening(IZ)V

    goto :goto_0
.end method

.method private setPageListening(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "listening"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setListening(Z)V

    .line 154
    return-void
.end method


# virtual methods
.method public addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postDistributeTiles()V

    .line 184
    return-void
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    iget v0, v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    return v0
.end method

.method public getOffsetTop(Lcom/android/systemui/qs/QSPanel$TileRecord;)I
    .locals 3
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 178
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileBaseView;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileBaseView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 179
    .local v0, "parent":Landroid/view/ViewGroup;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 180
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 201
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOldMobileKeyboardCovered:I

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v1, v2, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateResources()Z

    .line 207
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOldMobileKeyboardCovered:I

    .line 198
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 88
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onFinishInflate()V

    .line 167
    const v1, 0x7f13025f

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PageIndicator;

    iput-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 168
    const v1, 0x7f13030e

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/PagedTileLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 171
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 172
    const v2, 0x7f04010e

    const/4 v3, 0x0

    .line 171
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 173
    .local v0, "tilePage":Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 272
    const/4 v3, 0x0

    .line 273
    .local v3, "maxHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getChildCount()I

    move-result v0

    .line 274
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 276
    .local v1, "height":I
    if-le v1, v3, :cond_0

    .line 277
    move v3, v1

    .line 274
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "height":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDecorGroup:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/PagedTileLayout;->setMeasuredDimension(II)V

    .line 268
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
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/PagedTileLayout;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 97
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 94
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateResources()Z

    .line 375
    return-void
.end method

.method public removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/systemui/qs/QSPanel$TileRecord;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->postDistributeTiles()V

    .line 190
    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

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

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 110
    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 111
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    .line 112
    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setListening(Z)V

    .line 114
    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOffPage:Z

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setListening(Z)V

    .line 109
    :cond_1
    return-void

    .line 119
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->setListening(Z)V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    .line 210
    return-void
.end method

.method public updateResources()Z
    .locals 3

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "changed":Z
    const/4 v1, 0x0

    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v2}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    move-result v2

    or-int/2addr v0, v2

    .line 258
    .local v0, "changed":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v0    # "changed":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    .line 264
    :cond_1
    return v0
.end method
