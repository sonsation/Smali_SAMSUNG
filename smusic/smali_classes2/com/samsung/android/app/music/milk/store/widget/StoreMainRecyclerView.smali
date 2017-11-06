.class public Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "StoreMainRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StoreMainRecyclerView"


# instance fields
.field private lastX:F

.field private lastY:F

.field private xDistance:F

.field private yDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->stopScroll()V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 61
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 44
    :pswitch_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->yDistance:F

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->xDistance:F

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->lastX:F

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->lastY:F

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 50
    .local v0, "curX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 51
    .local v1, "curY":F
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->xDistance:F

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->lastX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->xDistance:F

    .line 52
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->yDistance:F

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->lastY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->yDistance:F

    .line 53
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->lastX:F

    .line 54
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->lastY:F

    .line 55
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->xDistance:F

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->yDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 56
    const/4 v2, 0x0

    goto :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->getChildCount()I

    move-result v1

    .line 29
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 30
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/StoreMainRecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 31
    .local v3, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_0

    .line 32
    instance-of v4, v3, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 33
    check-cast v0, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;

    .line 34
    .local v0, "categoryViewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;->onUnBindView()V

    .line 29
    .end local v0    # "categoryViewHolder":Lcom/samsung/android/app/music/milk/store/storemaincategory/CategoryViewHolder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v3    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method
