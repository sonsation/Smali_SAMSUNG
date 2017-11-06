.class public Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;
.source "IndexViewV2.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;
    }
.end annotation


# static fields
.field private static final INDEX_VIEW_TAG:Ljava/lang/String; = "index"


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private final mContext:Landroid/content/Context;

.field private mFirstIndexPosition:I

.field private final mFragment:Landroid/app/Fragment;

.field private mIndexCharArray:[Ljava/lang/String;

.field private final mIndexContainer:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;

.field private final mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

.field private mIndexViewEnabled:Z

.field private final mIndexable:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;

.field private mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

.field private mOnIndexVisibleStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;

.field private mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private final mResizeIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;Z)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "indexable"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;
    .param p3, "isBlurUiEnabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;-><init>()V

    .line 57
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mFirstIndexPosition:I

    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexViewEnabled:Z

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mFragment:Landroid/app/Fragment;

    .line 65
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    if-eqz p3, :cond_0

    .line 67
    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$style;->Theme_BlurDefault_Light:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mContext:Landroid/content/Context;

    .line 71
    :goto_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->makeIndexScrollView(Z)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->setOnIndexChangedListener(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView$OnIndexChangedListener;)V

    .line 73
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexable:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;

    .line 74
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexContainer:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexContainer:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    invoke-interface {v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->getIndexScrollView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;->addView(Landroid/view/View;)V

    .line 76
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mResizeIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    .line 77
    return-void

    .line 69
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getFirstVisiblePosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 4
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, "position":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    .line 220
    .local v0, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v3, :cond_1

    .line 221
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 222
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-eqz v3, :cond_2

    .line 223
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    goto :goto_0

    .line 224
    .restart local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_2
    instance-of v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v3

    new-array v2, v3, [I

    .line 226
    .local v2, "positions":[I
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .line 227
    .end local v0    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 228
    const/4 v3, 0x0

    aget v1, v2, v3

    .line 229
    if-gez v1, :cond_0

    .line 230
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeIndexScrollView(Z)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;
    .locals 9
    .param p1, "blurUiEnabled"    # Z

    .prologue
    const/4 v8, 0x0

    .line 125
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 126
    .local v7, "res":Landroid/content/res/Resources;
    sget v6, Lcom/samsung/android/app/musiclibrary/R$drawable;->fluid_index_scroll_background:I

    .line 127
    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    .local v1, "bgIndexRectDrawable":Landroid/graphics/drawable/Drawable;
    sget v6, Lcom/samsung/android/app/musiclibrary/R$color;->fluid_index_scroll_text_color_dimmed:I

    .line 129
    invoke-static {v7, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 130
    .local v2, "textColorDimmed":I
    sget v6, Lcom/samsung/android/app/musiclibrary/R$color;->fluid_index_scroll_small_text_color:I

    .line 131
    invoke-static {v7, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 132
    .local v3, "smallTextColor":I
    sget v6, Lcom/samsung/android/app/musiclibrary/R$color;->fluid_index_scroll_big_text_color:I

    .line 133
    invoke-static {v7, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 134
    .local v4, "bigTextColor":I
    sget v6, Lcom/samsung/android/app/musiclibrary/R$color;->fluid_index_scroll_effect_color:I

    .line 135
    invoke-static {v7, v6, v8}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 136
    .local v5, "effectColor":I
    new-instance v0, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;

    if-nez p1, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;-><init>(Landroid/graphics/drawable/Drawable;IIIIZ)V

    .line 139
    .local v0, "indexScrollThemeSet":Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat;->create(Landroid/app/Activity;Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    move-result-object v6

    return-object v6

    .line 136
    .end local v0    # "indexScrollThemeSet":Lcom/samsung/android/app/music/support/android/widget/IndexScrollViewCompat$IndexScrollThemeSet;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private unregisterOldIndexer()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    invoke-interface {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;->getDataSetObserver()Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method public getIndexContainer()Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexContainer:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexContainer;

    return-object v0
.end method

.method public onIndexChanged(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    .line 182
    .local v1, "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mFirstIndexPosition:I

    add-int/2addr p1, v2

    .line 183
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 184
    .local v0, "itemCount":I
    if-lt p1, v0, :cond_0

    if-lez v0, :cond_0

    .line 185
    add-int/lit8 p1, v0, -0x1

    .line 187
    :cond_0
    instance-of v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    if-eqz v2, :cond_3

    .line 188
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    .end local v1    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 195
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mResizeIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)V

    .line 197
    .end local v0    # "itemCount":I
    :cond_2
    return-void

    .line 189
    .restart local v0    # "itemCount":I
    .restart local v1    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_3
    instance-of v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-eqz v2, :cond_4

    .line 190
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    .end local v1    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 191
    .restart local v1    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    :cond_4
    instance-of v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    if-eqz v2, :cond_1

    .line 192
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;

    .line 193
    .end local v1    # "layoutManager":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslStaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V

    .line 202
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexViewEnabled:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 205
    :cond_0
    return-void
.end method

.method public onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V
    .locals 5
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnScrollListener;->onScrolled(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;II)V

    .line 210
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexViewEnabled:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mResizeIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->getFirstVisiblePosition(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v2

    .line 213
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    .line 212
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 215
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "a"    # Landroid/widget/Adapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mAdapter:Landroid/widget/Adapter;

    if-eq v0, p1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->unregisterOldIndexer()V

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mAdapter:Landroid/widget/Adapter;

    .line 119
    return-void
.end method

.method public setIndexViewEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexViewEnabled:Z

    .line 169
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexViewEnabled:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 170
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mOnIndexVisibleStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mOnIndexVisibleStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexViewEnabled:Z

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;->onIndexVisibleStateChanged(Z)V

    .line 174
    :cond_0
    return-void

    .line 169
    .end local v0    # "visibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setIndexer(Landroid/database/Cursor;I)V
    .locals 3
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "firstIndexPosition"    # I

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->unregisterOldIndexer()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexCharArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$array;->index_string_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexCharArray:[Ljava/lang/String;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexable:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;

    .line 154
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$Indexable;->onSetIndexCol()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexCharArray:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/support/android/widget/CursorIndexerCompat;->create(Landroid/database/Cursor;I[Ljava/lang/String;I)Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    invoke-interface {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;->getDataSetObserver()Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexer:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->setIndexer(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/CursorIndexer;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mIndexScrollView:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/IndexScrollView;->invalidate()V

    .line 162
    :cond_2
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mFirstIndexPosition:I

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mResizeIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mFirstIndexPosition:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$200(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;I)V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->updateIndexView()V

    .line 165
    return-void
.end method

.method public setList(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->clearOnScrollListeners()V

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mResizeIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    .line 105
    return-void
.end method

.method public setOnIndexVisibleStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mOnIndexVisibleStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexVisibleStateChangedListener;

    .line 81
    return-void
.end method

.method public updateIndexView()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->mResizeIndexView:Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;->access$300(Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2$ResizeIndexView;)V

    .line 238
    return-void
.end method
