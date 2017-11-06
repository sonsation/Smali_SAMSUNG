.class public abstract Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.source "TrackBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
        ">",
        "Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter",
        "<TItem;>;"
    }
.end annotation


# static fields
.field public static final CUSTOM_TYPE_BASE:I = 0x3e8

.field private static final SELECT_HEADER_POSITION:I = 0x0

.field public static final TYPE_HEADER:I = 0x1

.field public static final TYPE_SELECT_HEADER:I = 0x2

.field public static final TYPE_TRACK:I = 0x7d0


# instance fields
.field private currentSelectAllState:Z

.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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
    .line 47
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->currentSelectAllState:Z

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->setHasStableIds(Z)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createListHeaderViewHolder(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected createTrackViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public deselectAll()V
    .locals 1

    .prologue
    .line 308
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->deselectAll()V

    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->currentSelectAllState:Z

    .line 310
    return-void
.end method

.method protected dispatchPlayAllClicked()V
    .locals 4

    .prologue
    .line 272
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v0, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 274
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    .end local v1    # "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$6;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)V

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playTrackList(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 289
    return-void
.end method

.method protected dispatchSelectAllModeChanged(Z)V
    .locals 1
    .param p1, "isSelectAll"    # Z

    .prologue
    .line 337
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->dispatchSelectAllModeChanged(Z)V

    .line 338
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->currentSelectAllState:Z

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getSelectHeaderPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->notifyItemChanged(I)V

    .line 340
    return-void
.end method

.method protected getHeaderSize()I
    .locals 1

    .prologue
    .line 332
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->shouldShowSelectHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 324
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 73
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 74
    const-string v2, "SELECT"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    .line 86
    :goto_0
    return-wide v2

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 76
    const-string v2, "HEADER"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItemPosition(I)I

    move-result v0

    .line 80
    .local v0, "realPosition":I
    if-ltz v0, :cond_2

    .line 81
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 82
    .local v1, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->hashCode()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    .line 86
    .end local v1    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getItemPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 328
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getRealItemStartPos()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getRealItemStartPos()I
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getHeaderSize()I

    move-result v0

    return v0
.end method

.method protected getSelectHeaderPosition()I
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTrackIds()Ljava/util/List;
    .locals 7
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
    .line 353
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getSelectedIds()[I

    move-result-object v1

    .line 355
    .local v1, "ids":[I
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .line 356
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItemPosition(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 357
    .local v3, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 359
    .end local v0    # "id":I
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_0
    return-object v2
.end method

.method public getSelectedTracks()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getSelectedIds()[I

    move-result-object v1

    .line 365
    .local v1, "ids":[I
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .line 366
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItemPosition(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 367
    .local v3, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 369
    .end local v0    # "id":I
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_0
    return-object v2
.end method

.method protected getTrackNumber(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 126
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItemPosition(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 65
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getSelectHeaderPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->shouldShowSelectHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x2

    .line 68
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x7d0

    goto :goto_0
.end method

.method public initHeaderViewHolder(Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;

    .prologue
    .line 248
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->getSelect()Landroid/widget/TextView;

    move-result-object v1

    .line 249
    .local v1, "select":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 250
    new-instance v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$4;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->isSelectedAll()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a03b7

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->getPlayAll()Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "play":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 262
    new-instance v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$5;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_1
    return-void

    .line 256
    .end local v0    # "play":Landroid/view/View;
    :cond_2
    const v2, 0x7f0a03c0

    goto :goto_0
.end method

.method public isClickable(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItemPosition(I)I

    move-result v0

    .line 345
    .local v0, "itemPos":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 346
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-nez v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getViewType(I)I

    move-result v3

    const/16 v4, 0x7d0

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSelectable(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItemPosition(I)I

    move-result v0

    .line 315
    .local v0, "itemPos":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 316
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getViewType(I)I

    move-result v3

    const/16 v4, 0x7d0

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 91
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 92
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAttachedToRecyclerView : context is activity"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 96
    :cond_0
    return-void
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 15
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 132
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onBindItemViewHolder : pos - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", selected - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 133
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->isSelected(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", holder - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 132
    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->isSelected(I)Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setSelected(Z)V

    .line 136
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;

    if-eqz v12, :cond_7

    move-object/from16 v2, p1

    .line 137
    check-cast v2, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;

    .line 138
    .local v2, "holder":Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItemPosition(I)I

    move-result v5

    .line 139
    .local v5, "itemPos":I
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 140
    .local v10, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->shouldTitleDisplayNumber()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 142
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getTrackNumber(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, "trackNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .end local v11    # "trackNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getDisplayArtistName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 149
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 151
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 152
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 153
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v8

    .line 167
    .local v8, "play":Landroid/view/View;
    if-eqz v8, :cond_2

    .line 168
    new-instance v12, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;

    invoke-direct {v12, p0, v10}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    invoke-virtual {v8, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getMore()Landroid/view/View;

    move-result-object v6

    .line 181
    .local v6, "more":Landroid/view/View;
    if-eqz v6, :cond_3

    .line 182
    new-instance v12, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;

    move/from16 v0, p2

    invoke-direct {v12, p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;I)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 194
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0335

    .line 195
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 194
    invoke-virtual {v6, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getNumber()Landroid/widget/TextView;

    move-result-object v7

    .line 200
    .local v7, "number":Landroid/widget/TextView;
    if-eqz v7, :cond_4

    .line 201
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getTrackNumber(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getAlbumArtContainer()Landroid/view/View;

    move-result-object v4

    .line 205
    .local v4, "imageContainer":Landroid/view/View;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getAlbumArt()Landroid/widget/ImageView;

    move-result-object v3

    .line 206
    .local v3, "image":Landroid/widget/ImageView;
    if-eqz v3, :cond_6

    .line 207
    instance-of v12, v3, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    if-eqz v12, :cond_b

    move-object v12, v3

    .line 208
    check-cast v12, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 209
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    const v14, 0x7f0200db

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;I)V

    .line 216
    :goto_2
    move-object v1, v3

    .line 217
    .local v1, "click":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 218
    move-object v1, v4

    .line 220
    :cond_5
    new-instance v12, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;

    invoke-direct {v12, p0, v10}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v1, v12}, Landroid/view/View;->setEnabled(Z)V

    .line 232
    .end local v1    # "click":Landroid/view/View;
    :cond_6
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isExplicit()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 233
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    .end local v2    # "holder":Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;
    .end local v3    # "image":Landroid/widget/ImageView;
    .end local v4    # "imageContainer":Landroid/view/View;
    .end local v5    # "itemPos":I
    .end local v6    # "more":Landroid/view/View;
    .end local v7    # "number":Landroid/widget/TextView;
    .end local v8    # "play":Landroid/view/View;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_7
    :goto_4
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;

    if-eqz v12, :cond_8

    .line 241
    check-cast p1, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->initHeaderViewHolder(Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;)V

    .line 245
    :cond_8
    return-void

    .line 157
    .restart local v2    # "holder":Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;
    .restart local v5    # "itemPos":I
    .restart local v9    # "title":Ljava/lang/String;
    .restart local v10    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_9
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 158
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 159
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 160
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 161
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v12

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 192
    .restart local v6    # "more":Landroid/view/View;
    .restart local v8    # "play":Landroid/view/View;
    :cond_a
    const/16 v12, 0x8

    goto/16 :goto_1

    .line 211
    .restart local v3    # "image":Landroid/widget/ImageView;
    .restart local v4    # "imageContainer":Landroid/view/View;
    .restart local v7    # "number":Landroid/widget/TextView;
    :cond_b
    const v12, 0x7f0d0063

    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v12

    .line 212
    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v12

    const v13, 0x7f0200db

    .line 213
    invoke-virtual {v12, v3, v13}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 229
    .restart local v1    # "click":Landroid/view/View;
    :cond_c
    const/4 v12, 0x0

    goto :goto_3

    .line 235
    .end local v1    # "click":Landroid/view/View;
    :cond_d
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 106
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateItemViewHolder : type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sparse-switch p2, :sswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 109
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->createListHeaderViewHolder(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 112
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->createTrackViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/topchart/TrackViewHolder;

    move-result-object v0

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7d0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 100
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 102
    return-void
.end method

.method public playAllByBixby()V
    .locals 0

    .prologue
    .line 377
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->dispatchPlayAllClicked()V

    .line 378
    return-void
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 302
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->selectAll()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->currentSelectAllState:Z

    .line 304
    return-void
.end method

.method protected shouldShowSelectHeader()Z
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldTitleDisplayNumber()Z
    .locals 1

    .prologue
    .line 373
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public toggleSelectAll()V
    .locals 1

    .prologue
    .line 293
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->currentSelectAllState:Z

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->deselectAll()V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->selectAll()V

    goto :goto_0
.end method
