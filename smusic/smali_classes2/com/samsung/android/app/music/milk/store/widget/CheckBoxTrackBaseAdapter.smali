.class public abstract Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;
.source "CheckBoxTrackBaseAdapter.java"


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

.field protected listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

.field private mCheckboxWidth:I

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mModeType:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

.field protected mOnClick:Landroid/view/View$OnClickListener;

.field protected mOnLongClick:Landroid/view/View$OnLongClickListener;

.field private mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 61
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->currentSelectAllState:Z

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;->CHECK_BOX_TYPE:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mModeType:Lcom/samsung/android/app/music/milk/store/widget/MultiSelectArrayRecyclerAdapter$SelectModeType;

    .line 67
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mCheckboxWidth:I

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    .line 84
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$2;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    .line 150
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mScrollState:I

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->setHasStableIds(Z)V

    .line 106
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->setSelectableCallback(Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 107
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    .line 108
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mCheckboxWidth:I

    .line 109
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mScrollState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)Landroid/app/FragmentManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;Landroid/widget/CheckBox;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;
    .param p1, "x1"    # Landroid/widget/CheckBox;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getMesureedCheckboxWidth(Landroid/widget/CheckBox;)F

    move-result v0

    return v0
.end method

.method private getMesureedCheckboxWidth(Landroid/widget/CheckBox;)F
    .locals 3
    .param p1, "checkBoxStub"    # Landroid/widget/CheckBox;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v2, 0x0

    .line 527
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mCheckboxWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 528
    if-eqz p1, :cond_0

    .line 529
    invoke-virtual {p1, v2, v2}, Landroid/widget/CheckBox;->measure(II)V

    .line 530
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mCheckboxWidth:I

    .line 534
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mCheckboxWidth:I

    int-to-float v0, v0

    return v0
.end method

.method private showCheckBoxWithAnimation(ZLandroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;)V
    .locals 8
    .param p1, "isPlayableTrack"    # Z
    .param p2, "checkBoxStub"    # Landroid/widget/CheckBox;
    .param p3, "container"    # Landroid/view/View;
    .param p4, "more"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/16 v7, 0x8

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->supportAnimationEffect()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mScrollState:I

    if-nez v0, :cond_4

    .line 540
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 541
    .local v6, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v0, 0x12c

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 542
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 543
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    invoke-virtual {p2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-ne v7, v0, :cond_0

    .line 545
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$10;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;Landroid/widget/CheckBox;Landroid/view/View;ZLandroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 612
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    if-eqz p4, :cond_1

    .line 613
    invoke-virtual {p4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 615
    :cond_1
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 637
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    :goto_1
    return-void

    .line 582
    .restart local v6    # "animator":Landroid/animation/ValueAnimator;
    :cond_3
    invoke-virtual {p2}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$11;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;Landroid/widget/CheckBox;Landroid/view/View;ZLandroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 617
    .end local v6    # "animator":Landroid/animation/ValueAnimator;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 618
    if-eqz p2, :cond_5

    .line 619
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 620
    invoke-virtual {p2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 622
    :cond_5
    if-eqz p4, :cond_2

    .line 623
    invoke-virtual {p4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 624
    invoke-virtual {p4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 627
    :cond_6
    if-eqz p2, :cond_7

    .line 628
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 629
    invoke-virtual {p2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 631
    :cond_7
    if-eqz p4, :cond_2

    .line 632
    invoke-virtual {p4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 633
    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 540
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected createListHeaderViewHolder(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;

    move-result-object v0

    return-object v0
.end method

.method protected createTrackViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public deselectAll()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v2, 0x0

    .line 436
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->deselectAll()V

    .line 437
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->currentSelectAllState:Z

    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 439
    invoke-virtual {p0, v0, v2, v2}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->selectItem(IZZ)V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->notifyDataSetChanged()V

    .line 444
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getSelectedItemCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;->onSelectCountChanged(I)V

    .line 447
    :cond_1
    return-void
.end method

.method protected dispatchPlayAllClicked()V
    .locals 4

    .prologue
    .line 390
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v0, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemList()Ljava/util/List;

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

    .line 392
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    .end local v1    # "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$9;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)V

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->playTrackList(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/util/List;)V

    .line 407
    return-void
.end method

.method protected dispatchSelectAllModeChanged(Z)V
    .locals 1
    .param p1, "isSelectAll"    # Z

    .prologue
    .line 474
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->dispatchSelectAllModeChanged(Z)V

    .line 475
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->currentSelectAllState:Z

    .line 476
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getSelectHeaderPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->notifyItemChanged(I)V

    .line 477
    return-void
.end method

.method protected getHeaderSize()I
    .locals 1

    .prologue
    .line 469
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->shouldShowSelectHeader()Z

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
    .line 461
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getHeaderSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 133
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 134
    const-string v2, "SELECT"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    .line 146
    :goto_0
    return-wide v2

    .line 135
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 136
    const-string v2, "HEADER"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemPosition(I)I

    move-result v0

    .line 140
    .local v0, "realPosition":I
    if-ltz v0, :cond_2

    .line 141
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 142
    .local v1, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->hashCode()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    .line 146
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
    .line 465
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getRealItemStartPos()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method protected getLogScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const-string v0, "CheckBoxTrackBaseAdapter"

    return-object v0
.end method

.method public getRealItemStartPos()I
    .locals 1

    .prologue
    .line 120
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getHeaderSize()I

    move-result v0

    return v0
.end method

.method protected getSelectHeaderPosition()I
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
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
    .line 490
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getSelectedIds()[I

    move-result-object v1

    .line 492
    .local v1, "ids":[I
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .line 493
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemPosition(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 494
    .local v3, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 496
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
    .line 500
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getSelectedIds()[I

    move-result-object v1

    .line 502
    .local v1, "ids":[I
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget v0, v1, v4

    .line 503
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemPosition(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 504
    .local v3, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 506
    .end local v0    # "id":I
    .end local v3    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_0
    return-object v2
.end method

.method protected getTrackNumber(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 199
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemPosition(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getSelectHeaderPosition()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->shouldShowSelectHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x2

    .line 128
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
    .line 366
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->getSelect()Landroid/widget/TextView;

    move-result-object v1

    .line 367
    .local v1, "select":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 368
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$7;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->isSelectedAll()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a03b7

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;->getPlayAll()Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "play":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 380
    new-instance v2, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$8;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_1
    return-void

    .line 374
    .end local v0    # "play":Landroid/view/View;
    :cond_2
    const v2, 0x7f0a03c0

    goto :goto_0
.end method

.method public isClickable(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v2, 0x0

    .line 481
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemPosition(I)I

    move-result v0

    .line 482
    .local v0, "itemPos":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 483
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-nez v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getViewType(I)I

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
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v2, 0x0

    .line 451
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemPosition(I)I

    move-result v0

    .line 452
    .local v0, "itemPos":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 453
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-nez v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getViewType(I)I

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
    .line 154
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 155
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAttachedToRecyclerView : context is activity"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 159
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$3;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 168
    return-void
.end method

.method public onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 19
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 205
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onBindItemViewHolder : pos - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", selected - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 206
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->isSelected(I)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", holder - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 205
    invoke-static/range {v15 .. v16}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;

    if-eqz v15, :cond_b

    move-object/from16 v5, p1

    .line 208
    check-cast v5, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;

    .line 209
    .local v5, "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemPosition(I)I

    move-result v8

    .line 210
    .local v8, "itemPos":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 211
    .local v13, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, "title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->shouldTitleDisplayNumber()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 213
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getTrackNumber(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ". "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 214
    .local v14, "trackNumber":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 215
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .end local v14    # "trackNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v15

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f110044

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v16

    .line 219
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getPrimaryColor()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 222
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v15

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f110044

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v16

    .line 224
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 226
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getPrimaryColor()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setMatchedTextColor(I)V

    .line 227
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;

    .line 228
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getDisplayArtistName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getHighlightWord()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/app/musiclibrary/ui/widget/MatchedTextView;->setText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v15

    const v16, 0x7f11003f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->setCheckBoxTint(Landroid/widget/CheckBox;I)V

    .line 231
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 233
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 234
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 235
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 237
    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 238
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 239
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 240
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setEnabled(Z)V

    .line 243
    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 256
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->isSelectMode()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 258
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v11

    .line 265
    .local v11, "play":Landroid/view/View;
    if-eqz v11, :cond_4

    .line 266
    new-instance v15, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$4;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    invoke-virtual {v11, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getMore()Landroid/view/View;

    move-result-object v9

    .line 280
    .local v9, "more":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 281
    new-instance v15, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$5;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;I)V

    invoke-virtual {v9, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v15, 0x0

    :goto_2
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 294
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 295
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0335

    .line 296
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 295
    invoke-virtual {v9, v15}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 300
    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    .line 301
    .local v2, "checkBoxStub":Landroid/widget/CheckBox;
    iget-object v15, v5, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->itemView:Landroid/view/View;

    const v16, 0x7f1203f7

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 303
    .local v4, "container":Landroid/view/View;
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v4, v9}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->showCheckBoxWithAnimation(ZLandroid/widget/CheckBox;Landroid/view/View;Landroid/view/View;)V

    .line 305
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getNumber()Landroid/widget/TextView;

    move-result-object v10

    .line 306
    .local v10, "number":Landroid/widget/TextView;
    if-eqz v10, :cond_6

    .line 307
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getTrackNumber(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getAlbumArtContainer()Landroid/view/View;

    move-result-object v7

    .line 311
    .local v7, "imageContainer":Landroid/view/View;
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getAlbumArt()Landroid/widget/ImageView;

    move-result-object v6

    .line 312
    .local v6, "image":Landroid/widget/ImageView;
    if-eqz v6, :cond_8

    .line 313
    instance-of v15, v6, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    if-eqz v15, :cond_12

    move-object v15, v6

    .line 314
    check-cast v15, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;

    .line 315
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v16

    const v17, 0x7f0201da

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;I)V

    .line 322
    :goto_3
    move-object v3, v6

    .line 323
    .local v3, "click":Landroid/view/View;
    if-eqz v7, :cond_7

    .line 324
    move-object v3, v7

    .line 326
    :cond_7
    new-instance v15, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v13}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$6;-><init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    invoke-virtual {v3, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getAlbumId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_13

    const/4 v15, 0x1

    :goto_4
    invoke-virtual {v3, v15}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    .end local v3    # "click":Landroid/view/View;
    :cond_8
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 340
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isExplicit()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 341
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    :cond_9
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->supportLongClick()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 348
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->isSelectMode()Z

    move-result v15

    if-eqz v15, :cond_15

    const/4 v15, 0x0

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 350
    :cond_a
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mOnClick:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v16, 0x7f12002a

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 354
    .end local v2    # "checkBoxStub":Landroid/widget/CheckBox;
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;
    .end local v6    # "image":Landroid/widget/ImageView;
    .end local v7    # "imageContainer":Landroid/view/View;
    .end local v8    # "itemPos":I
    .end local v9    # "more":Landroid/view/View;
    .end local v10    # "number":Landroid/widget/TextView;
    .end local v11    # "play":Landroid/view/View;
    .end local v12    # "title":Ljava/lang/String;
    .end local v13    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_b
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;

    if-eqz v15, :cond_c

    .line 355
    check-cast p1, Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->initHeaderViewHolder(Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;)V

    .line 357
    :cond_c
    return-void

    .line 245
    .restart local v5    # "holder":Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;
    .restart local v8    # "itemPos":I
    .restart local v12    # "title":Ljava/lang/String;
    .restart local v13    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_d
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v15

    if-eqz v15, :cond_e

    .line 246
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitleNumber()Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 248
    :cond_e
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 249
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getArtist()Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_f

    .line 251
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getPlay()Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_f
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0

    .line 260
    :cond_10
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 293
    .restart local v9    # "more":Landroid/view/View;
    .restart local v11    # "play":Landroid/view/View;
    :cond_11
    const/16 v15, 0x8

    goto/16 :goto_2

    .line 317
    .restart local v2    # "checkBoxStub":Landroid/widget/CheckBox;
    .restart local v4    # "container":Landroid/view/View;
    .restart local v6    # "image":Landroid/widget/ImageView;
    .restart local v7    # "imageContainer":Landroid/view/View;
    .restart local v10    # "number":Landroid/widget/TextView;
    :cond_12
    const v15, 0x7f0d0063

    invoke-static {v15}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v15

    .line 318
    invoke-virtual {v13}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImageUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v15

    const v16, 0x7f0201da

    .line 319
    move/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToImageView(Landroid/widget/ImageView;I)V

    goto/16 :goto_3

    .line 336
    .restart local v3    # "click":Landroid/view/View;
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 343
    .end local v3    # "click":Landroid/view/View;
    :cond_14
    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;->getExplicit()Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 348
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mOnLongClick:Landroid/view/View$OnLongClickListener;

    goto/16 :goto_6
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "type"    # I

    .prologue
    .line 179
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getLogTag()Ljava/lang/String;

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

    .line 180
    sparse-switch p2, :sswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 182
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->createListHeaderViewHolder(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    .line 185
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->createTrackViewHolder(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/store/search/viewholder/MilkSearchStoreTrackViewHolder;

    move-result-object v0

    goto :goto_0

    .line 180
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
    .line 172
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 175
    return-void
.end method

.method public playAllByBixby()V
    .locals 0

    .prologue
    .line 644
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->dispatchPlayAllClicked()V

    .line 645
    return-void
.end method

.method public abstract playWithCurrentPosition(I)V
.end method

.method protected pressLongClick()V
    .locals 0

    .prologue
    .line 664
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    return-void
.end method

.method public selectAll()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v2, 0x1

    .line 420
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->selectAll()V

    .line 421
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->currentSelectAllState:Z

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 424
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->selectItem(IZZ)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->notifyDataSetChanged()V

    .line 429
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getSelectedItemCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;->onSelectCountChanged(I)V

    .line 432
    :cond_1
    return-void
.end method

.method protected selectMoreOption()V
    .locals 0

    .prologue
    .line 662
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    return-void
.end method

.method public setCheckBoxTint(Landroid/widget/CheckBox;I)V
    .locals 5
    .param p1, "checkBox"    # Landroid/widget/CheckBox;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 360
    new-array v1, v3, [[I

    new-array v2, v4, [I

    aput-object v2, v1, v4

    .line 361
    .local v1, "states":[[I
    new-array v0, v3, [I

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v0, v4

    .line 362
    .local v0, "colors":[I
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 363
    return-void
.end method

.method public setSelectMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 511
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMultiSelectMode : Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    if-nez p1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mCheckedList:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mSelectMode:Z

    if-eq v0, p1, :cond_1

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->listener:Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;->onSelectAllModeChanged(Z)V

    .line 521
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->mSelectMode:Z

    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->notifyDataSetChanged()V

    .line 524
    return-void
.end method

.method protected shouldShowSelectHeader()Z
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldTitleDisplayNumber()Z
    .locals 1

    .prologue
    .line 640
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected supportAnimationEffect()Z
    .locals 1

    .prologue
    .line 658
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected supportLongClick()Z
    .locals 1

    .prologue
    .line 654
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public toggleSelectAll()V
    .locals 1

    .prologue
    .line 411
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter<TItem;>;"
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->currentSelectAllState:Z

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->deselectAll()V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->selectAll()V

    goto :goto_0
.end method
