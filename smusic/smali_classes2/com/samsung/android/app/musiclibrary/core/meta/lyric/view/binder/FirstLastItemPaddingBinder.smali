.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;
.super Ljava/lang/Object;
.source "FirstLastItemPaddingBinder.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder",
        "<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private mFirstItemPosition:I

.field private final mOriginTopBottomPadding:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lyrics-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mOriginTopBottomPadding:Landroid/util/SparseArray;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mFirstItemPosition:I

    .line 31
    return-void
.end method

.method private applyDynamicPaddingInternal(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;I)V
    .locals 7
    .param p1, "itemPosition"    # I
    .param p2, "parentView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "itemView"    # Landroid/view/View;
    .param p4, "viewType"    # I

    .prologue
    .line 58
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v5

    if-nez v5, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mOriginTopBottomPadding:Landroid/util/SparseArray;

    invoke-virtual {v5, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 63
    .local v4, "topBottomPadding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v4, :cond_2

    .line 64
    new-instance v4, Landroid/util/Pair;

    .end local v4    # "topBottomPadding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .restart local v4    # "topBottomPadding":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mOriginTopBottomPadding:Landroid/util/SparseArray;

    invoke-virtual {v5, p4, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 68
    .local v2, "paddingStart":I
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 69
    .local v3, "paddingTop":I
    invoke-virtual {p3}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    .line 70
    .local v1, "paddingEnd":I
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    .local v0, "paddingBottom":I
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mFirstItemPosition:I

    if-ne p1, v5, :cond_4

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->calculateFirstItemTopPaddingInternal(Landroid/view/View;Landroid/view/View;)I

    move-result v3

    .line 77
    :cond_3
    :goto_1
    invoke-virtual {p3, v2, v3, v1, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->getItemCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_3

    .line 75
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->calculateLastItemBottomPaddingInternal(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    goto :goto_1
.end method

.method private calculateFirstItemTopPaddingInternal(Landroid/view/View;Landroid/view/View;)I
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-virtual {p2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 83
    .local v2, "parentHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int v0, v3, v4

    .line 84
    .local v0, "itemViewHeight":I
    sub-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int v1, v3, v4

    .line 85
    .local v1, "newPaddingTop":I
    if-gez v1, :cond_0

    .line 86
    const/4 v1, 0x0

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculate first item padding top, parent height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", item view height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", calculated padding top : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return v1
.end method

.method private calculateLastItemBottomPaddingInternal(Landroid/view/View;Landroid/view/View;)I
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-virtual {p2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 97
    .local v2, "parentHeight":I
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 98
    .local v0, "itemViewHeight":I
    sub-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 99
    .local v1, "newPaddingBottom":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculate last item padding bottom, parent height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", item view height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", calculated padding bottom : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return v1
.end method


# virtual methods
.method public getChild()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder",
            "<+",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "byUser"    # Z

    .prologue
    .line 35
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 36
    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 3
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .param p2, "holder"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;
    .param p3, "position"    # I

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 52
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->getItemViewType()I

    move-result v2

    .line 51
    invoke-direct {p0, p3, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->applyDynamicPaddingInternal(ILcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/View;I)V

    .line 54
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onDetached(Landroid/view/ViewGroup;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapterView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "byUser"    # Z

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;->mAdapterView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 41
    return-void
.end method
