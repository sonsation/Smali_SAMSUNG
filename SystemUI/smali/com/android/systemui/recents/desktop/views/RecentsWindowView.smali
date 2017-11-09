.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowView;
.super Landroid/support/v7/widget/RecyclerView;
.source "RecentsWindowView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;,
        Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;,
        Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I


# instance fields
.field mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

.field mAppContext:Landroid/content/Context;

.field mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

.field mCustomOnScrollListener:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

.field mFocusedIndex:I

.field mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

.field mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

.field mRootView:Landroid/view/ViewGroup;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method private static synthetic -getcom-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->values()[Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->handleMoveButtonEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method private handleMoveButtonEnabled()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 425
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 426
    .local v0, "visibleFirst":I
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 427
    .local v1, "visibleLast":I
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    if-eqz v2, :cond_0

    .line 428
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    if-lez v0, :cond_1

    move v2, v3

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_2

    :goto_1
    invoke-interface {v5, v2, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;->handleMoveButtonsEnabled(ZZ)V

    .line 424
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 428
    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setHasFixedSize(Z)V

    .line 102
    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    .line 103
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 105
    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCustomOnScrollListener:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCustomOnScrollListener:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 108
    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 112
    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$1;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    return-void
.end method

.method private removeFocusedTask()V
    .locals 3

    .prologue
    .line 369
    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 368
    :cond_0
    return-void
.end method

.method private updateFocusedTask(Z)V
    .locals 6
    .param p1, "focused"    # Z

    .prologue
    .line 296
    iget v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 297
    return-void

    .line 299
    :cond_0
    const-string/jumbo v1, "RecentsWindowView"

    const-string/jumbo v2, "updateFocusedTask(%b) - focused index=%d\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .line 302
    .local v0, "holder":Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->setFocus(Z)V

    .line 295
    :cond_1
    return-void
.end method


# virtual methods
.method public adjustFocusedIndex()V
    .locals 2

    .prologue
    .line 378
    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 379
    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    .line 382
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    .line 377
    return-void
.end method

.method public bindViews(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mRootView:Landroid/view/ViewGroup;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->bindViews(Landroid/view/ViewGroup;)V

    .line 124
    return-void
.end method

.method ensureFocusedIndex(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V
    .locals 9
    .param p1, "direction"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 315
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->getSpanCount()I

    move-result v3

    .line 316
    .local v3, "spanCount":I
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    .line 317
    .local v4, "taskCount":I
    div-int v8, v4, v3

    rem-int v5, v4, v3

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    add-int v1, v8, v5

    .line 318
    .local v1, "maxRow":I
    const/4 v0, 0x0

    .line 319
    .local v0, "currentRow":I
    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    .line 321
    .local v2, "prevFocused":I
    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-getcom-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 353
    :goto_1
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v7, v6}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    .line 314
    return-void

    .end local v0    # "currentRow":I
    .end local v1    # "maxRow":I
    .end local v2    # "prevFocused":I
    :cond_0
    move v5, v7

    .line 317
    goto :goto_0

    .line 323
    .restart local v0    # "currentRow":I
    .restart local v1    # "maxRow":I
    .restart local v2    # "prevFocused":I
    :pswitch_0
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, -0x1

    :goto_2
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v4, -0x1

    goto :goto_2

    .line 327
    :pswitch_1
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v4, :cond_2

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    :goto_3
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_3

    .line 331
    :pswitch_2
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    sub-int/2addr v5, v3

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    sub-int/2addr v5, v3

    :goto_4
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_1

    .line 332
    :cond_3
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    rem-int/2addr v5, v3

    add-int/lit8 v6, v1, -0x1

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_4

    .line 336
    :pswitch_3
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v5, v3

    iget v8, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v8, v8, 0x1

    rem-int/2addr v8, v3

    if-eqz v8, :cond_4

    :goto_5
    add-int v0, v5, v6

    .line 337
    add-int/lit8 v5, v1, -0x1

    if-ne v0, v5, :cond_5

    .line 338
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/2addr v5, v3

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_1

    :cond_4
    move v6, v7

    .line 336
    goto :goto_5

    .line 340
    :cond_5
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/2addr v5, v3

    if-ge v5, v4, :cond_6

    .line 341
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/2addr v5, v3

    .line 340
    :goto_6
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_1

    .line 341
    :cond_6
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    rem-int/2addr v5, v3

    goto :goto_6

    .line 347
    :pswitch_4
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ge v5, v4, :cond_7

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    :goto_7
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto/16 :goto_1

    :cond_7
    move v5, v7

    goto :goto_7

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method focusNewTask(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V
    .locals 3
    .param p1, "direction"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    .prologue
    .line 278
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->ensureFocusedIndex(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    .line 284
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    .line 287
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 288
    .local v0, "visibleFirst":I
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    .line 289
    .local v1, "visibleLast":I
    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-lt v2, v0, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-le v2, v1, :cond_1

    .line 291
    :cond_0
    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->smoothScrollToPosition(I)V

    .line 276
    :cond_1
    return-void
.end method

.method getNextScrollIndex(Z)I
    .locals 6
    .param p1, "down"    # Z

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v3

    .line 411
    .local v3, "visibleLast":I
    add-int/lit8 v1, v3, 0x1

    .line 418
    .end local v3    # "visibleLast":I
    .local v1, "scrollIndex":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    .line 419
    .local v0, "count":I
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v1

    .line 421
    return v1

    .line 413
    .end local v0    # "count":I
    .end local v1    # "scrollIndex":I
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 414
    .local v2, "visibleFirst":I
    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "scrollIndex":I
    goto :goto_0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public init(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 214
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 212
    :cond_0
    return-void
.end method

.method public launchFocusedTask()V
    .locals 3

    .prologue
    .line 386
    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->startTask(Lcom/android/systemui/recents/model/Task;)V

    .line 385
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    .line 84
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 85
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 82
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->removeFocusedTask()V

    .line 362
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    .prologue
    .line 264
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;->direction:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->focusNewTask(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    .line 263
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    .line 91
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onFinishInflate()V

    .line 77
    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->handleMoveButtonEnabled()V

    .line 433
    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "newTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    .line 230
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 229
    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->addTaskAt(Lcom/android/systemui/recents/model/Task;I)V

    .line 228
    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZ)V
    .locals 3
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui/recents/model/Task;
    .param p4, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p5, "fromDockGesture"    # Z
    .param p6, "launchHome"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;->onTaskCountChanged(I)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_1

    .line 241
    const v0, 0x7f0f046d

    .line 240
    :goto_0
    invoke-direct {v2, v0, p5}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 235
    :cond_0
    return-void

    .line 242
    :cond_1
    const v0, 0x7f0f046e

    goto :goto_0
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 248
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 247
    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 252
    return-void
.end method

.method public reload(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 6
    .param p1, "taskStack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    const/4 v4, 0x1

    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 131
    .local v2, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 132
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->setNewStackTasks(Ljava/util/ArrayList;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollToInitialState()V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 139
    .local v3, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 144
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 146
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v5, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v5, :cond_2

    .line 147
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-le v5, v4, :cond_1

    :goto_0
    iput v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    .line 151
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateLayout()V

    .line 129
    return-void

    .line 147
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 149
    :cond_2
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_1
.end method

.method public scrollDownVisibleLine()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getNextScrollIndex(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->smoothScrollToPosition(I)V

    .line 392
    return-void
.end method

.method scrollToInitialState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->scrollToPositionWithOffset(II)V

    .line 189
    return-void
.end method

.method public scrollUpVisibleLine()V
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getNextScrollIndex(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->smoothScrollToPosition(I)V

    .line 396
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    .line 185
    return-void
.end method

.method updateLayout()V
    .locals 4

    .prologue
    .line 158
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v2

    .line 159
    .local v2, "taskCount":I
    const/4 v0, 0x1

    .line 161
    .local v0, "orientation":I
    packed-switch v2, :pswitch_data_0

    .line 170
    const/4 v1, 0x4

    .line 171
    .local v1, "spanCount":I
    const/4 v0, 0x1

    .line 175
    :goto_0
    const/16 v3, 0x8

    if-gt v2, v3, :cond_0

    .line 176
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setOverScrollMode(I)V

    .line 181
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->setOrientation(I)V

    .line 182
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->setSpanCount(I)V

    .line 157
    return-void

    .line 166
    .end local v1    # "spanCount":I
    :pswitch_0
    const/4 v1, 0x1

    .line 167
    .restart local v1    # "spanCount":I
    const/4 v0, 0x0

    .line 168
    goto :goto_0

    .line 178
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setOverScrollMode(I)V

    goto :goto_1

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
