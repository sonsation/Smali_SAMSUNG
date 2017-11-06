.class public Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "PreCachingLinearLayoutManager.java"


# static fields
.field private static final DEFAULT_EXTRA_LAYOUT_SPACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PreCachingLinearLayoutManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtraLayoutSpace:I

.field private mIsScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mExtraLayoutSpace:I

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->init(Landroid/content/Context;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extraLayoutSpace"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mExtraLayoutSpace:I

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->init(Landroid/content/Context;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mExtraLayoutSpace:I

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->init(Landroid/content/Context;I)V

    .line 34
    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extraLayoutSpace"    # I

    .prologue
    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mContext:Landroid/content/Context;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mIsScrollEnabled:Z

    .line 40
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mExtraLayoutSpace:I

    .line 41
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mIsScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mIsScrollEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mExtraLayoutSpace:I

    if-lez v0, :cond_0

    .line 51
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mExtraLayoutSpace:I

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 73
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "PreCachingLinearLayoutManager"

    const-string v2, "onLayoutChildren : IOOBE in RecyclerView"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExtraLayoutSpace(I)V
    .locals 0
    .param p1, "extraLayoutSpace"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mExtraLayoutSpace:I

    .line 46
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PreCachingLinearLayoutManager;->mIsScrollEnabled:Z

    .line 68
    return-void
.end method
