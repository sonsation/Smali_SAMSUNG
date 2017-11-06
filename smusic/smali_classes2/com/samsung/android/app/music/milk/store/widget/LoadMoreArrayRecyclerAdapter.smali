.class public abstract Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;
.source "LoadMoreArrayRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$LoadingViewHolder;,
        Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$ViewTypes;,
        Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter",
        "<TItem;",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_ON_SCROLL:I = 0x1


# instance fields
.field private mEnableLoadMore:Z

.field private mHightLightWord:Ljava/lang/String;

.field private mLoadMorePercent:I

.field private mMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

.field private mOnRefreshing:Z

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field scrollHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
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
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 22
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mEnableLoadMore:Z

    .line 27
    const/16 v0, 0x46

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mLoadMorePercent:I

    .line 31
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mOnRefreshing:Z

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->scrollHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 60
    return-void
.end method

.method private getLoadingViewPos()I
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public dispatchScroll(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 149
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemCount()I

    move-result v1

    .line 150
    .local v1, "total":I
    mul-int/lit8 v2, p1, 0x64

    div-int v0, v2, v1

    .line 151
    .local v0, "percent":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchScroll : itemCount - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", percent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", loading - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mOnRefreshing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mLoadMorePercent:I

    if-lt v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mOnRefreshing:Z

    if-nez v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    invoke-interface {v2, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;->onLoadMore(II)V

    .line 158
    :cond_0
    return-void
.end method

.method public dispatchScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 161
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrollStateChanged : newState - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->isEnableLoadMore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 167
    .local v0, "count":I
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 168
    .local v1, "lastVisible":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    .line 169
    .local v2, "position":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrollStateChanged : newState - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastVisible - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->dispatchScroll(I)V

    goto :goto_0
.end method

.method public enableLoadMore(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 116
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLoadMore : enable - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->setRefreshing(Z)V

    .line 120
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mEnableLoadMore:Z

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method public getHighlightWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mHightLightWord:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 104
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->isEnableLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 79
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->isEnableLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getLoadingViewPos()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 81
    const/16 v0, -0xc8

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getLoadingLayout()I
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    const v0, 0x7f04015a

    return v0
.end method

.method public abstract getViewType(I)I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x7fffffffL
    .end annotation
.end method

.method protected final hideKeyboardAndCursor(Landroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 188
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "rootView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 191
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 192
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 193
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 195
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public isEnableLoadMore()Z
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mEnableLoadMore:Z

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 130
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->shouldSupportScrollLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 99
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 100
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 90
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    packed-switch p2, :pswitch_data_0

    .line 94
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getLoadingLayout()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$LoadingViewHolder;->create(Landroid/content/Context;I)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$LoadingViewHolder;

    move-result-object v0

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch -0xc8
        :pswitch_0
    .end packed-switch
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 138
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ArrayRecyclerAdapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 140
    return-void
.end method

.method public setHighlightWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "highlightKey"    # Ljava/lang/String;

    .prologue
    .line 202
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mHightLightWord:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setLoadMorePercent(I)V
    .locals 0
    .param p1, "loadMorePercent"    # I

    .prologue
    .line 125
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mLoadMorePercent:I

    .line 126
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    .prologue
    .line 108
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mMoreListener:Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter$OnLoadMoreListener;

    .line 109
    return-void
.end method

.method public setRefreshing(Z)V
    .locals 3
    .param p1, "refreshing"    # Z

    .prologue
    .line 143
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRefreshing : refreshing - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->mOnRefreshing:Z

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getLoadingViewPos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->notifyItemChanged(I)V

    .line 146
    return-void
.end method

.method protected shouldSupportScrollLoading()Z
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method
