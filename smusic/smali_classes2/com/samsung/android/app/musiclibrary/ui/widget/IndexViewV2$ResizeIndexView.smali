.class Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;
.super Ljava/lang/Object;
.source "IndexViewV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizeIndexView"
.end annotation


# instance fields
.field private mFirstIndexPosition:I

.field private final mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

.field private mIsResizeEnabled:Z

.field private mMarginRight:I

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;)V
    .locals 2
    .param p1, "indexScrollView"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIsResizeEnabled:Z

    .line 244
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mFirstIndexPosition:I

    .line 252
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 285
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$1;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->setList(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;
    .param p1, "x1"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->setFirstIndexPosition(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->updateIndexViewHeight()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    .prologue
    .line 240
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mMarginRight:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;
    .param p1, "x1"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIsResizeEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    .prologue
    .line 240
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mFirstIndexPosition:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->getFirstVisiblePosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->calculateIndexTop(II)I

    move-result v0

    return v0
.end method

.method private calculateIndexTop(II)I
    .locals 5
    .param p1, "firstVisibleItem"    # I
    .param p2, "topPosition"    # I

    .prologue
    .line 302
    const/4 v1, -0x1

    .line 303
    .local v1, "top":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    sub-int v4, p2, p1

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 304
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 305
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 306
    .local v0, "position":I
    if-ne v0, p2, :cond_0

    .line 307
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 310
    .end local v0    # "position":I
    :cond_0
    return v1
.end method

.method private getFirstVisiblePosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 341
    const/4 v1, 0x0

    .line 342
    .local v1, "position":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 343
    .local v0, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v3, :cond_1

    .line 344
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 356
    :cond_0
    :goto_0
    return v1

    .line 345
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-eqz v3, :cond_2

    .line 346
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    goto :goto_0

    .line 347
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_2
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v3

    new-array v2, v3, [I

    .line 349
    .local v2, "positions":[I
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .line 350
    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 351
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 352
    if-gez v1, :cond_0

    .line 353
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLastVisiblePosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "position":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 362
    .local v0, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v3, :cond_1

    .line 363
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 364
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-eqz v3, :cond_2

    .line 365
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    goto :goto_0

    .line 366
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_2
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v3, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v3

    new-array v2, v3, [I

    .line 368
    .local v2, "positions":[I
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .line 369
    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 370
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 371
    if-gez v1, :cond_0

    .line 372
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setFirstIndexPosition(I)V
    .locals 0
    .param p1, "firstIndexPosition"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mFirstIndexPosition:I

    .line 299
    return-void
.end method

.method private setList(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x18f9d

    if-lt v0, v2, :cond_0

    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_fluid_index_view_margin_right:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mMarginRight:I

    .line 295
    return-void

    .line 291
    :cond_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_index_view_margin_right:I

    goto :goto_0
.end method

.method private updateIndexViewHeight()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 314
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mFirstIndexPosition:I

    if-gt v2, v4, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->getLastVisiblePosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mFirstIndexPosition:I

    if-ge v2, v3, :cond_2

    .line 318
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->setVisibility(I)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    invoke-interface {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    invoke-interface {v2, v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->setVisibility(I)V

    .line 325
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->getFirstVisiblePosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v0

    .line 326
    .local v0, "firstVisibleItem":I
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mFirstIndexPosition:I

    if-lt v0, v2, :cond_4

    .line 327
    const/4 v1, 0x0

    .line 331
    .local v1, "top":I
    :goto_1
    if-eq v1, v4, :cond_0

    .line 332
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIsResizeEnabled:Z

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    invoke-interface {v2, v1, v5}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->setIndexScrollMargin(II)V

    .line 334
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    invoke-interface {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->forceMeasure()V

    .line 335
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    invoke-interface {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->invalidate()V

    goto :goto_0

    .line 329
    .end local v1    # "top":I
    :cond_4
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->mFirstIndexPosition:I

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->calculateIndexTop(II)I

    move-result v1

    .restart local v1    # "top":I
    goto :goto_1
.end method
