.class public abstract Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;
.source "ArrayRecyclerAdapter.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter",
        "<TV;>;",
        "Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private columnSize:I

.field private mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

.field protected mCheckedList:Landroid/util/SparseBooleanArray;

.field private mContext:Landroid/content/Context;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation
.end field

.field private mPreviousSelectCount:I

.field private mPrimaryColor:I

.field protected mSelectMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->columnSize:I

    .line 31
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    .line 33
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mSelectMode:Z

    .line 35
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    .line 37
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPreviousSelectCount:I

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPrimaryColor:I

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 43
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110103

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPrimaryColor:I

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->columnSize:I

    .line 31
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    .line 33
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mSelectMode:Z

    .line 35
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    .line 37
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPreviousSelectCount:I

    .line 356
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPrimaryColor:I

    .line 50
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->addAll(Ljava/util/List;)V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 52
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110103

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPrimaryColor:I

    .line 56
    :cond_0
    return-void
.end method

.method private createTabViewRipple(Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 360
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPrimaryColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 361
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPrimaryColor:I

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    .line 366
    .local v0, "ripple":Landroid/graphics/drawable/RippleDrawable;
    :goto_0
    return-object v0

    .line 363
    .end local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    :cond_0
    const v1, 0x7f110234

    const/4 v2, 0x0

    .line 364
    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 363
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v0

    .restart local v0    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    goto :goto_0
.end method


# virtual methods
.method protected addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->addAll(Ljava/util/List;Z)V

    .line 88
    return-void
.end method

.method public addAll(Ljava/util/List;Z)V
    .locals 1
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;Z)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    :cond_0
    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_1
    return-void
.end method

.method public addItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "item":Ljava/lang/Object;, "TItem;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method

.method protected clear(Z)V
    .locals 1
    .param p1, "notify"    # Z

    .prologue
    .line 150
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 154
    :cond_0
    return-void
.end method

.method public deselectAll()V
    .locals 3

    .prologue
    .line 253
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isSelectedAll()Z

    move-result v1

    .line 254
    .local v1, "previous":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isSelectedAll()Z

    move-result v0

    .line 256
    .local v0, "after":Z
    if-eq v1, v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isSelectedAll()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->dispatchSelectAllModeChanged(Z)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->dispatchSelectCountChanged(I)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method

.method protected dispatchSelectAllModeChanged(Z)V
    .locals 1
    .param p1, "isSelectAll"    # Z

    .prologue
    .line 323
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;->onSelectAllModeChanged(Z)V

    .line 326
    :cond_0
    return-void
.end method

.method protected dispatchSelectCountChanged(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 308
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;->onSelectCountChanged(I)V

    .line 311
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPreviousSelectCount:I

    if-eq v1, p1, :cond_1

    .line 312
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPreviousSelectCount:I

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->columnSize:I

    sub-int v0, v1, v2

    .line 316
    .local v0, "pos":I
    if-lez v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyItemRangeChanged(II)V

    .line 320
    .end local v0    # "pos":I
    :cond_1
    return-void
.end method

.method protected dispatchSelectModeChanged(Z)V
    .locals 1
    .param p1, "isSelectMode"    # Z

    .prologue
    .line 329
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;->onSelectModeChanged(Z)V

    .line 332
    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 375
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method protected getPrimaryColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 379
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPrimaryColor:I

    return v0
.end method

.method public getRealItemCount()I
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectableItemCount()I
    .locals 3

    .prologue
    .line 182
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    const/4 v0, 0x0

    .line 183
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 184
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isSelectable(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 186
    :cond_1
    return v0
.end method

.method public getSelectedIds()[I
    .locals 3

    .prologue
    .line 341
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 342
    .local v1, "selectedIds":[I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    aput v2, v1, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    return-object v1
.end method

.method public getSelectedItemCount()I
    .locals 1

    .prologue
    .line 336
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TItem;>;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 192
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isSelected(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    return-object v1
.end method

.method public isLongClickable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 171
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isClickable(I)Z

    move-result v0

    return v0
.end method

.method public isSelectMode()Z
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mSelectMode:Z

    return v0
.end method

.method public isSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 275
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isSelectedAll()Z
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getSelectableItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getSelectableItemCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TV;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ClickableAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 71
    return-void
.end method

.method public abstract onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TV;"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public removeItem(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 127
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "item":Ljava/lang/Object;, "TItem;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->removeItem(Ljava/lang/Object;Z)V

    .line 129
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyItemRemoved(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public removeItem(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "item":Ljava/lang/Object;, "TItem;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->removeItem(Ljava/lang/Object;Z)V

    .line 112
    return-void
.end method

.method public removeItem(Ljava/lang/Object;Z)V
    .locals 1
    .param p2, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;Z)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "item":Ljava/lang/Object;, "TItem;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 121
    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 124
    :cond_0
    return-void
.end method

.method public removeItem([I)V
    .locals 5
    .param p1, "positions"    # [I

    .prologue
    .line 135
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, p1, v3

    .line 137
    .local v2, "position":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "item":Ljava/lang/Object;, "TItem;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "item":Ljava/lang/Object;, "TItem;"
    .end local v2    # "position":I
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 141
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->removeItems(Ljava/util/List;)V

    .line 143
    :cond_1
    return-void
.end method

.method public removeItemNotifyPosition(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "item":Ljava/lang/Object;, "TItem;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 106
    .local v0, "position":I
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyItemRemoved(I)V

    .line 108
    return-void
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method

.method public selectAll()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 245
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 246
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v4

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->selectItem(IZZZ)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 246
    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 249
    return-void
.end method

.method public selectItem(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "checked"    # Z

    .prologue
    .line 280
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->selectItem(IZZ)V

    .line 281
    return-void
.end method

.method public selectItem(IZZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "checked"    # Z
    .param p3, "notify"    # Z

    .prologue
    .line 285
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->selectItem(IZZZ)V

    .line 286
    return-void
.end method

.method public selectItem(IZZZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "checked"    # Z
    .param p3, "notifyDataChange"    # Z
    .param p4, "notifyCheckChange"    # Z

    .prologue
    .line 290
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    if-nez p2, :cond_4

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 298
    :cond_0
    :goto_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_2

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->dispatchSelectCountChanged(I)V

    .line 302
    :cond_2
    if-eqz p3, :cond_3

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 305
    :cond_3
    return-void

    .line 293
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isSelectable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method public setColumnSize(I)V
    .locals 0
    .param p1, "columnSize"    # I

    .prologue
    .line 146
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->columnSize:I

    .line 147
    return-void
.end method

.method public setRippleColor(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 350
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 352
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->createTabViewRipple(Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setSelectMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 215
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelectMode : select mode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prev - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mSelectMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mSelectMode:Z

    if-eq v0, p1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->shouldClearSelectedItemWhileModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->dispatchSelectModeChanged(Z)V

    .line 222
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mSelectMode:Z

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 224
    return-void
.end method

.method public setSelectableCallback(Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    .prologue
    .line 201
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mCallback:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    .line 202
    return-void
.end method

.method protected shouldClearSelectedItemWhileModeChange()Z
    .locals 1

    .prologue
    .line 210
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public swapArray(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->clear(Z)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->addAll(Ljava/util/List;)V

    .line 78
    :cond_0
    return-void
.end method

.method public toggleItem(ILandroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 2
    .param p1, "position"    # I
    .param p3, "notify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;, "TV;"
    const/4 v1, 0x1

    .line 270
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isSelected(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, p3, v1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->selectItem(IZZZ)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleItem(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "notify"    # Z

    .prologue
    .line 265
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isSelected(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->selectItem(IZZ)V

    .line 266
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleSelectAll()V
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->isSelectedAll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->deselectAll()V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->selectAll()V

    goto :goto_0
.end method

.method public updateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 84
    return-void
.end method

.method public updatePrimaryColor(I)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 370
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter<TItem;TV;>;"
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->mPrimaryColor:I

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 372
    return-void
.end method
