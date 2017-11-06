.class public Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;
.super Landroid/support/v4/view/PagerAdapter;
.source "LoopPagerAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOUNDARY_CASHING:Z = true

.field private static final DEFAULT_BOUNDARY_LOOPING:Z = true


# instance fields
.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mBoundaryCaching:Z

.field private mBoundaryLooping:Z

.field private mToDestroy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mToDestroy:Landroid/util/SparseArray;

    .line 19
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryCaching:Z

    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryLooping:Z

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 32
    return-void
.end method

.method private getRealFirstPosition()I
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryLooping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRealLastPosition()I
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getRealFirstPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getRealCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getRealFirstPosition()I

    move-result v0

    .line 94
    .local v0, "realFirst":I
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getRealLastPosition()I

    move-result v1

    .line 95
    .local v1, "realLast":I
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    instance-of v3, v3, Landroid/support/v4/app/FragmentPagerAdapter;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    instance-of v3, v3, Landroid/support/v4/app/FragmentStatePagerAdapter;

    if-eqz v3, :cond_2

    :cond_0
    move v2, p2

    .line 99
    .local v2, "realPosition":I
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryCaching:Z

    if-eqz v3, :cond_3

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_3

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mToDestroy:Landroid/util/SparseArray;

    new-instance v4, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;

    invoke-direct {v4, p1, v2, p3}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;-><init>(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    :goto_1
    return-void

    .line 97
    .end local v2    # "realPosition":I
    :cond_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->toRealPosition(I)I

    move-result v2

    goto :goto_0

    .line 102
    .restart local v2    # "realPosition":I
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, p1, v2, p3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 112
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getRealCount()I

    move-result v0

    .line 66
    .local v0, "count":I
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryLooping:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .end local v0    # "count":I
    :cond_0
    return v0
.end method

.method public getRealAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public getRealCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 78
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    instance-of v2, v2, Landroid/support/v4/app/FragmentPagerAdapter;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    instance-of v2, v2, Landroid/support/v4/app/FragmentStatePagerAdapter;

    if-eqz v2, :cond_1

    :cond_0
    move v0, p2

    .line 82
    .local v0, "realPosition":I
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryCaching:Z

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mToDestroy:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;

    .line 84
    .local v1, "toDestroy":Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;
    if-eqz v1, :cond_2

    .line 85
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mToDestroy:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 86
    iget-object v2, v1, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;->object:Ljava/lang/Object;

    .line 89
    .end local v1    # "toDestroy":Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper$ToDestroy;
    :goto_1
    return-object v2

    .line 80
    .end local v0    # "realPosition":I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->toRealPosition(I)I

    move-result v0

    goto :goto_0

    .line 89
    .restart local v0    # "realPosition":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, p1, v0}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mToDestroy:Landroid/util/SparseArray;

    .line 36
    invoke-super {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Parcelable;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 120
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method setBoundaryCaching(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryCaching:Z

    .line 24
    return-void
.end method

.method setBoundaryLooping(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryLooping:Z

    .line 28
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 132
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 128
    return-void
.end method

.method public toInnerPosition(I)I
    .locals 2
    .param p1, "realPosition"    # I

    .prologue
    .line 52
    add-int/lit8 v0, p1, 0x1

    .line 53
    .local v0, "position":I
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryLooping:Z

    if-eqz v1, :cond_0

    .end local v0    # "position":I
    :goto_0
    return v0

    .restart local v0    # "position":I
    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method toRealPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 40
    move v1, p1

    .line 41
    .local v1, "realPosition":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->getRealCount()I

    move-result v0

    .line 42
    .local v0, "realCount":I
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 48
    :goto_0
    return v2

    .line 43
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->mBoundaryLooping:Z

    if-eqz v2, :cond_1

    .line 44
    add-int/lit8 v2, p1, -0x1

    rem-int v1, v2, v0

    .line 45
    if-gez v1, :cond_1

    add-int/2addr v1, v0

    :cond_1
    move v2, v1

    .line 48
    goto :goto_0
.end method
